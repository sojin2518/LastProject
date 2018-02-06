<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>질병관리헤더</title>
<script type="text/javascript" src="script/members.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<body class="subpage">
	<section id="three" class="wrapper">
	<div class="inner">

		<footer id="footer">


		<h3>ID 찾기</h3>

		<form action="DiseaseServlet?command=id_search_page" method="post">
 <div class="field half">
	<label for="이름">이름</label>
	 <input name="name" id="name" type="text" placeholder="NAME"><br/><br/>
	<div class="field half">
	
		<label for="eMail">eMail</label> 
					<input type="text" name="eMail1" /></div>@	<div class="field half">
						<input type="text" name="eMail2" ></div>
					<input type="submit" value="찾기"> <input type="button"
						value="취소" onclick="javascript:window.location = 'main.jsp'">
				</div>
		</form>

		</footer>
	</div>
	</section>
</body>


</html>