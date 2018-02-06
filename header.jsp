<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<link rel="stylesheet" type="text/css" href="css/main.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>질병관리헤더</title>

  <script type="text/javascript" src="script/members.js"></script>
 
</head>
<body>
<!-- Header -->
	<header id="header">


	<div class="inner">
	
		<a href="DiseaseServlet?command=main" class="logo"><strong>질병</strong> 관리</a>

		<!-- 메뉴들어갈자리 -->
		
		<nav id="nav"> 
		<a href="DiseaseServlet?command=board_list">질병정보</a> 
		<a href="DiseaseServlet?command=health_page">건강정보</a>
		<a href="DiseaseServlet?command=qna_list">Q&amp;A</a> 
		<a href="DiseaseServlet?command=map_list">질병관리</a> 
		
		
		
		</nav>

		<span class="fa fa-bars"></span>
	</div>
	</header>
	

</body>
</html>