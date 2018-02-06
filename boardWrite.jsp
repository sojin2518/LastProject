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
<script type="text/javascript" src="script/board.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
		<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
		<h2>질병정보</h2>
		<p>주요 감염병</p>
		<br/>
		</header>
<!-- 게시물 등록  -->
		<div class="table-wrapper">
			<form name="frm" method="post" action="DiseaseServlet">
				<input type="hidden" name="command" value="board_write">
				<!-- command키로 board_write값을 보냄 -->
				<table class="alt">
					<tr>
						<th>작성자</th>
						<td><input type="text" name="name" value="${id }"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="pass" placeholder="필수"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" placeholder="필수">
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="35" rows="25" name="content"></textarea></td>
						<!-- textarea의 70x15 크기 -->
					</tr>



				</table>

				<div class="cen">

					<input type="submit" value="등록" onclick="return boardCheck()">
					<!-- submit은 form의 키와 값를  repuest로 전송한다 -->
					<input type="reset" value="다시작성"> <input type="button"
						value="목록"
						onclick="location.href='DiseaseServlet?command=board_list'">
					<!--button을 onclick(한번 눌럿을때)실행되었을때 location(장소)의 경로를 
    DiseaseServlet가상 주소의 command키에 board_list값을 지정하여 해당경로로 연결시킨다-->
				</div>
			</form>
		</div>
	</div>
</body>
</html>