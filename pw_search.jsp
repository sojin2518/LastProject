<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>질병관리헤더</title>
<script type="text/javascript" src="../script/members.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">
	<footer id="footer">
		<h3>PASSWORD 찾기</h3>
		<form action="DiseaseServlet?command=pw_search_page" method="post">
		       <div class="field half">
				<label for="ID">ID</label> <input name="id" id="id" type="text"
					placeholder="id">
				<label for="name">name</label>
					<input type="text" name="name" size="10" maxlength="10"><br/><br/>
				<input type="submit" value="찾기"> <input type="button"
					value="취소" onclick="javascript:window.location = 'main.jsp'">
			</div>
		</form>
		</footer>
		</div>
		</section>
		</body>
		</html>
		