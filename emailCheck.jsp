<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="proj.controller.memberAction.EmailConfirm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="../script/members.js"></script>
</head>
<body>
<%
String eMail=null;
String eMail1=request.getParameter("eMail1");
String eMail2=request.getParameter("eMail2");
if(!eMail1.equals(" ")){
	if(eMail2.equals("0")){
		// 직접입력
		eMail=eMail1;
	}else{
		eMail=eMail1+"@"+eMail2;
	}
}
// 위에서 작성한 java파일 객체 생성
EmailConfirm emailconfirm = new EmailConfirm();
String authNum=emailconfirm.connectEmail(eMail);
%>
<form method="post" action="" name="emailcheck">
	<table>
		<tr>
			<th colspan="2">인증번호를 입력하세요.</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="emailconfirm">
			</td>
			<td>
				<input type="button" value="확인" onclick="confirmemail(emailcheck.emailconfirm.value, <%=authNum%>)">
			</td>
			
	</table>
</form>
</body>
</html>