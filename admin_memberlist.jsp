<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%@ include file="/admin/admin_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admin.css" />
</head>
<body class="subpage">
	<section id="three" class="wrapper">
	<div class="inner">
	<header class="align-center">
		<h2>MEMBER LIST</h2>
		<p>회원목록</p>
		</header>
		<form name="frm" method="post">
			<input type="hidden" name="qseq">
			<table>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일주소</th>
					<th>가입날짜</th>
					<th>주소</th>
					<th>이메일인증여부</th>
				</tr>
				<%
					MemberDAO dao = MemberDAO.getInstance();
					ArrayList<MemberDTO> dtos = dao.membersAll();

					for (MemberDTO dto : dtos) {
				%>
				<tr>
					<td><%=dto.getId()%></td>
					<td><%=dto.getPw()%></td>
					<td><%=dto.getName()%></td>
					<td><%=dto.geteMail1()%>@<%=dto.geteMail2()%></td>
					<td><%=dto.getrDate()%></td>
					<td><%=dto.getAddress()%></td>
					<td><%=dto.geteMail_Check()%></td>
				</tr>
				<%
					}
				%>

			</table>
		</form>
		
	</div>
	</section>
</body>
</html>