<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<%@ include file="boardHeader.jsp" %>    
	<section id="three" class="wrapper">
		<div class="inner">
		<header class="align-center">
		<h2>질병정보</h2>
		<p>주요 감염병</p>
		</header>

			
			
	<div class="table-wrapper">
	
      <h1>글 수정 하기</h1>


			<form name="frm" method="post" action="DiseaseServlet">
				<input type="hidden" name="command" value="board_update"> <input
					type="hidden" name="num" value="${board.num}">
				<table class="alt">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" value="${board.name}">
						* 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass">	* 필수</td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td><input type="text" size="50" name="title"
						value="${board.title}"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="40" cols="40" name="content">
							${board.content}</textarea></td>
				</tr>
			</table>
			
			
			
		<div class="cen">
					<input type="submit" value="등록" onclick="return boardCheck()">
					<input type="reset" value="다시작성"> <input type="button"
						value="목록"
						onclick="location.href='DiseaseServlet?command=board_list'">

				</div>
			</form>
		</div>
		</div>
		</section>
		
</body>
</html>