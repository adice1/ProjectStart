package com.jin.MyInfo;

import com.jin.Member.Member;

public interface IMyInfoService {
	public int MyAuth(String pw);
	public String MyAuthOk(String authNum, String authNumOk);
}
