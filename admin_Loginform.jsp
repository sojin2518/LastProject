<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>질병관리헤더</title>

<script type="text/javascript" src="script/members.js"></script>
<link rel="stylesheet" href="admin/admin.css" />
</head>

<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">

	<footer id="footer">


		<h3>관리자모드 로그인</h3>

		<form action="DiseaseServlet?command=admin_Login" method="post" name="adminLogin">

			<div class="field half first">
				<label for="ID">ID</label> 
				<input name="id" id="id" type="text"
					placeholder="ID">
			<label for="PASSWORD">PASSWORD</label>

		
					<tr>
						<td><input type="text" name="pw" id="pw"
							placeholder="PASSWORD"></td>
					</tr>
			
				<br> <input value="LOGIN" type="submit"><br />
				<br> <a href="DiseaseServlet?command=main">
				<input value="메인으로" type="button"></a><br />
				
		</div>

<!-- 		<input type="button" value="BACK" class="submit" -->
<!-- 			onclick="location='DiseaseServlet?command=admin_back'"> -->
	
		</form>
	

</footer>
</section>

</body>
</html>