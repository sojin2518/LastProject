<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%@ include file="/board/boardHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board/board_css.css" />
</head>
<body class="subpage">
	<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
		<h2>위치정보</h2>
		</header>
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
					String name = (String) session.getAttribute("name");
					String id = (String) session.getAttribute("id");

					if (id != null) {
						
						
				%>
				<c:forEach items="${dtos}" var="dto">
				<tr>
					<td> ${dto.id} </td>
					<td> ${dto.andr_address} </td>
					<td> ${dto.andr_date} </td>
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