<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	if (session.getAttribute("ValidMem") == null) {
%>
<%
	}
	String id = (String) session.getAttribute("id");

	if (id == null) {
		response.sendRedirect("main.jsp");
	} else if (id != null) {
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO dto = dao.getMember(id);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="script/members.js"></script>

</head>
<body>


	<h2>* 이메일 인증</h2>
	<br />
	<form action="DiseaseServlet?command=eMailCheck_Next" method="post"
		name="a">
		<input type="text" name="eMail1" maxlength="15"
			value="<%=dto.geteMail1()%>" id=""> @ <input type="text"
			name="eMail2" maxlength="15" value="<%=dto.geteMail2()%>" id="">
		<input type="button" name="emailconfirm" value="인증"
			onclick="emailcheck(a.eMail1.value,a.eMail2.value)">
	</form>
	<input type="button" value="확인" onclick="javascript:eMailSend()">

	<%
		}
	%>
</body>
</html>
