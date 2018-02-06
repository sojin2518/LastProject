<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/admin/admin_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admin.css" />
</head>
<body>
	<section id="banner">
	<div class="inner">
		<header>
		<h1>System Administrator</h1>
		<br />
		</header>
		<div class="flex">
			<div>
				<h3>질병정보</h3><br/>
				<p>게시물쓰기</p><br/>
				<a href="DiseaseServlet?command=board_write_form"> <input
					type="button" value="질병정보" class="special"></a>
			</div>
		<div>
		<h3>QNA관리</h3><br/>
				<p>QNA</p><br/>
				<a href="DiseaseServlet?command=admin_qna_list"> 
				<input type="button" value="QNA관리"></a>
			</div>
			<div>
				<h3>회원관리</h3><br/>
				<p>회원리스트</p><br/>
				<a href="DiseaseServlet?command=admin_memberlist"> <input
					type="button" value="회원리스트"></a>
			</div>
		</div>
		<hr>
		
      <footer>
     <form action="DiseaseServlet?command=logout" method="post">
            <div class="field half">
               <input type="submit" value="로그아웃">

            </div>
         </form>
      </footer>
   </div>

   </section>

   <!-- Three -->

</body>
</html>