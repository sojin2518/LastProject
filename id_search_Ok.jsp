<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="proj.dao.*"%>
<%@page import="proj.dto.*"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%
		String name = request.getParameter("name");
		String eMail1 = request.getParameter("eMail1");
		String eMail2 = request.getParameter("eMail2");

		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO dto = dao.searchId(name, eMail1, eMail2);

		try {
	%>


	<center>
		<form>
			<%
				if (dto != null) {
			%>
			<%=name%>님에 아이디는 <b><%=dto.getId()%></b> 입니다.
			<p>

				<%
					}
				%>
				<input type="button" value="로그인하기"
					onclick="location= 'DiseaseServlet?command=main'"> <input
					type="button" value="다시 입력하기"
					onclick="location='DiseaseServlet?command=id_search_form'">
			</p>
		</form>
	</center>
</body>
<%
	} catch (Exception e) {
	}
%>
</html>