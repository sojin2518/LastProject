<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%@ include file="admin_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board/board_css.css" />
</head>
<body class="subpage">
	<section id="three" class="wrapper">
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<div class="inner">
		<header class="align-center">
		<h2>질병 관리</h2>
		</header>
		
		<form action="DiseaseServlet?command=admin_setdisease_carrier" name="admin_disease" method="post">
		<input type="text" name="admin_carrier_name" id="admin_carrier_name" placeholder="id">
		<input type="text" name="admin_disease_name" id="admin_disease_name" placeholder="disease">
		<input type="submit" value="보균자 지정">
		</form>
		<form action="DiseaseServlet?command=admin_disease_check" name="admin_disease_check" method="post">
		<input type="submit" value="보균자 채크">
		</form>

<form name="frm" method="post">
			<input type="hidden" name="qseq">
			<table>
				<tr>
					<th>아이디</th>
					<th>위치</th>
					<th>시간</th>
					<th>감염여부</th>
				</tr>

				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					if (session.getAttribute("ValidMem") == null) {
				%>
				<%
					}
					String name_a = (String) session.getAttribute("name");
					String id_a = (String) session.getAttribute("id");

					if (id_a != null) {
						
						
				%>
				<c:forEach items="${dtos}" var="dto">
				<tr>
					<td> ${dto.id}</td>
					<td> ${dto.andr_address}</td>
					<td> ${dto.andr_date}</td>
					<td> ${dto.carrier }</td>

				</tr>
				</c:forEach>
				<%
					
					}
				%>

			</table>
		</form>
	</div>
	</section>
</body>
</html>