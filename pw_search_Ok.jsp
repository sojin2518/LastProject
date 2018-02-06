<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script language="JavaScript" src="/script/members.js"></script>
<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner" style="font-size: 20px; color: gray;">
	<footer id="footer">
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");

		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO dto = dao.searchPw(id, name);
		try {
	%>

		<%
			if (dto != null) {
		%>
		<%=name%>님의 비밀번호는 <b><%=dto.getPw()%></b> 입니다.

			<%
				}
			%>
			<br/>
			<br/>
			<input type="button" value="로그인하기"
				onclick="location= 'DiseaseServlet?command=main'"> <input
				type="button" value="다시 입력하기"
				onclick="location='DiseaseServlet?command=pw_search_form'">
<%
	} catch (Exception e) {
	}
%>
</footer>
</div>
</section>
</body>
</html>