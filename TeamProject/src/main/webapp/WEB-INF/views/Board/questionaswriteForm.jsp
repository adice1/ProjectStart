<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="home" value="/"/>

<center>
<h3>질문글 작성</h3>
<form action="${home }QuestionBoard/${proc}" method="post" enctype="multipart/form-data">
<input type="hidden" name="pno" value="${pno }">
<input type="text" name="no" value="${no }">

<table style="width: 650px; ">
	<tr>
		<td style="width: 80px; height:40px;" align="right">작성자</td>
		<td style="width: 570px; height:40px;">
			<input type=text name="id" value="${usrId }"/> 
		</td>
	</tr>
	<tr>
		<td  style="width: 80px; height:40px;" align="right">제 목</td>
		<td style="width: 570px; height:40px;">
			<input type=text name='title' value="${board.title }" style="width: 500px; "/> 
		</td>
	</tr>
	<tr>
		<td colspan=2 align="right"><textarea name="contents" style="width: 650px; height: 300px">${board.contents }</textarea></td>
	</tr>
	<tr>
		<td align='right' height=40 colspan=2>
			<input type=file name="uploadfile" style="width: 300px; "/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=2>
			<input type=submit value='${btnName }' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</form>

<h3>답변글 작성</h3>
<form action="${home }QuestionBoard/${proc}" method="post" enctype="multipart/form-data">
<input type="hidden" name="pno" value="${pno }">
<input type="text" name="no" value="${no }">

<table style="width: 650px; ">
	<tr>
		<td style="width: 80px; height:40px;" align="right">작성자</td>
		<td style="width: 570px; height:40px;">
			<input type=text name="id" value="${usrId }"/> 
		</td>
	</tr>
	<tr>
		<td  style="width: 80px; height:40px;" align="right">제 목</td>
		<td style="width: 570px; height:40px;">
			<input type=text name='title' value="${board.title }" style="width: 500px; "/> 
		</td>
	</tr>
	<tr>
		<td colspan=2 align="right"><textarea name="contents" style="width: 650px; height: 300px">${board.contents }</textarea></td>
	</tr>
	<tr>
		<td align='right' height=40 colspan=2>
			<input type=file name="uploadfile" style="width: 300px; "/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=2>
			<input type=submit value='${btnName }' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</form>
</center>
