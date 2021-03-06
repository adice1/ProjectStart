package com.jin.Login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jin.mail.SHA;

@Service
public class LoginServiceImpl implements ILoginService {
	@Autowired private ILoginDao iLoginDao;
	@Autowired private HttpSession session;
	
	private void setSession(int cnt, String id) {
		if(cnt==1) {
			session.setAttribute("id", id);
		}
	}
	@Override
	public int LoginProc(Login login) {
		
		login.setPw((new SHA()).encryptSHA512(login.getPw()));
		int cnt = iLoginDao.LoginProc(login);

		setSession(cnt, login.getId());
		return cnt;
	}
	@Override
	public void kakaoProc(String id) {
		int cnt = iLoginDao.kakaoProc(id);
		
		if(cnt == 0)
			iLoginDao.kakaoInsert(id);
		
		setSession(1, id);
	}
}
