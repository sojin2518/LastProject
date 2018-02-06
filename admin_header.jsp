<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	if (session.getAttribute("ValidMem") == null) {

	}
	String name = (String) session.getAttribute("name");
	String id = (String) session.getAttribute("id");

	if (id != null) {
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO dto = dao.getMember(id);
%>
<link rel="stylesheet" href="admin/admin.css" />
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<body class="subpage">

	<!-- Header수정해야합!!!!!!!!!!!1
	 -->
	<header id="header">
	<div class="inner">
		<!-- Header수정해야합!!!!!!!!!!!1
	 -->
		<a href="DiseaseServlet?command=admin_main" class="logo">관리자<strong><%=dto.getName() %></strong>
			모드</a>
		<nav id="nav"> <a href="DiseaseServlet?command=admin_board_list">질병정보
			관리</a>
		<a href="DiseaseServlet?command=admin_qna_list">Q&amp;A 관리</a> <a
			href="DiseaseServlet?command=admin_disease_page">질병관리 </a> <a href="DiseaseServlet?command=admin_memberlist">회원리스트
		</a> </nav>

	</div>
	</header>
<%} %>
</body>
</html>