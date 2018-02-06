<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/main.css" />
<script language="JavaScript" src="script/members.js"></script>
<body>

	<section id="banner">
	<div class="inner">
		<header>
		<h1>Administration Of Disease</h1>
		<br/>
		</header>
		<div class="flex ">

			<div>
				<h3>건강</h3>
				<p>[health]<br/> 健康</p>
			</div>
			<div>
				<h3>질병</h3>
				<p>[disease]<br/> 疾病 </p>
			</div>
			<div>
				<h3>관리</h3>
				<p>
					[supervision]<br> 管理
				</p>
			</div>
		</div>
		<footer> 
		<a href="" class="button">질병 controll</a> 
		</footer>
	</div>
	</section>

	<!-- Three -->
<section id="three" class="wrapper align-center">
	<div class="inner">
		<div class="flex flex-2">
			<article>
			<div class="image round">
				<img src="image/icon3.png" alt="/icon3" />
			</div>
			<header>
			<h3>
				질병<br />[disease]<br/>疾病
			</h3>
			</header>
			<p>
				심신의 전체 또는 일부가<br/>
				 일차적 또는 계속적으로<br/>
				  장애를 일으켜서 정상적인  <br/>
				  기능을  할 수 없는 상태 <br/>
				   감염성 질환, 비감염성 질환
				

			</p>
			<footer> <a href="DiseaseServlet?command=board_list"
				class="button">질병정보</a> </footer> </article>

			<article>
			<div class="image round">
				<img src="image/icon4.png" alt="/icon4" />
			</div>
			<header>
			<h3>
				감염증 <br/>
				[infectious disease]<br/>
				 感染症
			</h3>
			</header>
			<p>
					병원미생물, 기생충 등<br/> 
					병원체가 사람이나 동물 등의<br/>
					 생물체에 침입한 후 정착, <br/>
					 증식하여 감염을<br/>
					  일으킴으로써 걸리는 질환.  <br/>
			</p>
			<footer> <a href="DiseaseServlet?command=health_page" class="button">건강정보</a> </footer> </article>
		</div>
	</div>
	</section>
	
	<%@ include file="footer.jsp"%>


</body>
</html>