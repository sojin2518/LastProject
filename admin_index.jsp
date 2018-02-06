<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="admin_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link href="board/board_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/board.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css'>
</head>
<body>

	<style>
.results tr[visible='false'], .no-result {
	display: none;
}

.results tr[visible='true'] {
	display: table-row;
}

.counter {
	padding: 8px;
	color: #71aece;
}
</style>
<body class="subpage">


	<!-- -header -->


	<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
		<h2>질병정보</h2>
		<p>계절별 주요 감염병</p>
		</header>


		<!-- 게시판 테이블 -->
		<div class="table-wrapper">
			<table class="table table-hover table-bordered results">
				<thead>
					<tr>
						<td colspan="5" align="center"><a
							href="DiseaseServlet?command=board_write_form"><strong>게시글
									등록</strong></a><br></td>
					</tr>
					<tr>
						<div class="form-group pull-right">
							<input type="text" class="search form-control" placeholder="제목검색">
						</div>
					</tr>
					<tr>
						<!-- 테이블 시작 -->
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr class="warning no-result">
						<td colspan="5"><i class="fa fa-warning"></i></td>
					</tr>

				</thead>
				<c:forEach var="board" items="${boardList}">
					<tr>
						<td align="center">${board.num}</td>
						<td><a
							href="DiseaseServlet?command=board_view&num=${board.num}">${board.title}</a></td>
						<td align="center">${board.name}</td>
						<td align="center"><fmt:formatDate value="${board.writedate}" /></td>
						<td align="center">${board.readcount}</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
	<!-- 게시판 테이블 끝 --> </section>

	<!-- -----------------------------------검색기능-------------------- -->
	<script>
		$(document)
				.ready(
						function() {
							$(".search")
									.keyup(
											function() {
												var searchTerm = $(".search")
														.val();
												var listItem = $(
														'.results tbody')
														.children('tr');
												var searchSplit = searchTerm
														.replace(/ /g,
																"'):containsi('")

												$
														.extend(
																$.expr[':'],
																{
																	'containsi' : function(
																			elem,
																			i,
																			match,
																			array) {
																		return (elem.textContent
																				|| elem.innerText || '')
																				.toLowerCase()
																				.indexOf(
																						(match[3] || "")
																								.toLowerCase()) >= 0;
																	}
																});

												$(".results tbody tr").not(
														":containsi('"
																+ searchSplit
																+ "')").each(
														function(e) {
															$(this).attr(
																	'visible',
																	'false');
														});

												$(
														".results tbody tr:containsi('"
																+ searchSplit
																+ "')").each(
														function(e) {
															$(this).attr(
																	'visible',
																	'true');
														});

												if (jobCount == '0') {
													$('.no-result').show();
												} else {
													$('.no-result').hide();
												}
											});
						});
	</script>
</body>
</html>