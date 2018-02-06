<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<%@ include file="boardHeader.jsp"%>
	<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
		<h2>질병정보</h2>
		<p>주요 감염병</p>
		</header>
		<div class="table-wrapper">
		<table class="alt">
				<h3>게시물읽기</h3>
				<tr>
					<th class="con">작성자</th>
					<td colspan="3">${board.name}</td>
				</tr>
				<tr>
					<th class="con">작성일</th>
					<td><fmt:formatDate value="${board.writedate}" /></td>
					<th class="con">조회수</th>
					<td align="center">${board.readcount}</td>
				</tr>
				<tr>
					<th class="con">제목</th>
					<td colspan="3">${board.title}</td>
				</tr>
				<tr>
					<th class="con">내용</th>
					<td colspan="3"><pre>${board.content}</pre></td>
					<!-- <pre> 문자열을 쓴 그대로 자유롭게 보여주는 선언자 -->
				</tr>

			</table>
			
			<div class="cen">
				<input type="button" value="게시글 수정"
					onclick="open_win('DiseaseServlet?command=board_check_pass_form&num=${board.num}&pg=${ pg }','update')" />
				<!-- open_win (board.js 자바스크립트파일 메서드)에 인자( url, name ) -->
				<input type="button" value="게시글 삭제"
					onclick="open_win('DiseaseServlet?command=board_check_pass_form&num=${board.num}&pg=${ pg }','delete')" />
				<input type="button" value="게시글 리스트"
					onclick="location.href='DiseaseServlet?command=boardListCheck'" /> <input
					type="button" value="게시글 등록"
					onclick="location.href=	'DiseaseServlet?command=board_write_form&pg=${pg}'" />

			</div>

		</div>
	</div>
	</section>

</body>
</html>