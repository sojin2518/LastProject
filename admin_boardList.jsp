<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

<style>
/*검색하기 스타일*/
.results tr[visible='false'], .no-result {
	display: none;
}

.results tr[visible='true'] {
	display: table-row;
}

.counter {
	padding: 8px;
	color: #C2E2E8;
}
</style>
<body class="subpage">
	<%@ include file="/admin/admin_header.jsp"%>
	<!-- -header -->


	<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
		<h2>질병정보</h2>
		<p>주요 감염병</p>
		</header>

		<hr>
		<div class="table-wrapper">
			<table class="table table-hover table-bordered results">
				<thead>

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
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="board">
						<tr>
							<td class="center">${board.num}</td>
							<td><a
								href="DiseaseServlet?command=board_view&num=${board.num}&pg=${pg}">&nbsp;${board.title}</a></td>
							<td align="center">&nbsp;${board.name}</td>
							<td align="center"><fmt:formatDate
									value="${board.writedate}" /></td>
							<td align="center">${ board.readcount }</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${ empty list }">
					<tr>
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>
				<tr>
					<td colspan="5" align="right"><a
						href="DiseaseServlet?command=board_write_form"><button
								class="linkbutton">글쓰기</button></a></td>
				</tr>
			</table>
	</section>
	<br>
	<!-- 페이지 넘기기 -->
	<table>
		<tr align="center">
			<td><c:if test="${pg>block}">
					[ <a href="DiseaseServlet?command=board_list&pg=1">◀◀</a> ]
					[ <a href="DiseaseServlet?command=board_list&pg=${beginPage-1}">◀</a> ]
				</c:if> <c:if test="${pg<=block}">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if> <c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${i==pg}"> [ ${i} ] </c:if>
					<c:if test="${i!=pg}"> [ <a
							href="DiseaseServlet?command=board_list&pg=${i}">${i}</a> ]</c:if>
				</c:forEach> <c:if test="${endPage<allPage}">
					[ <a href="DiseaseServlet?command=board_list&pg=${endPage+1}">▶</a> ]
					[ <a href="DiseaseServlet?command=board_list&pg=${allPage}">▶▶</a> ]
				</c:if> <c:if test="${endPage>=allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if></td>
		</tr>
	</table>

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