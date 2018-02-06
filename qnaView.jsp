<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/board/boardHeader.jsp"%>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css">
<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">
			<header class="align-center">
				<h2>문의 게시판</h2>
				<p>질문에 대해서 운영자가 1:1 답변을 드립니다</p>
			</header>
			<br />

			<form name="formm" method="post"
				action="DiseaseServlet?command=qna_modify_form&qseq=${param.qseq}">
				<input type="hidden" name="qseq" value="${qDto.qseq}">
				<table>
					<tr>
						<th class="con">번호</th>
						<td>${qDto.qseq}</td>
						<th class="con">등록일</th>
						<td><fmt:formatDate value="${qDto.indate}" type="date" /></td>
					</tr>
					<tr>
						<th class="con">제목</th>
						<td colspan="3">${qDto.subject}</td>
					</tr>

					<tr>
						<th class="con">작성자</th>
						<td colspan="3">${qDto.id}</td>
					</tr>
					<tr>
						<th class="con">질문내용</th>
						<td colspan="3">${qDto.content}
					</tr>
					<tr>
						<th class="con">답변 내용</th>
						<td colspan="3">${qDto.reply}
					</tr>
				</table>
				<div class="clear"></div>
				<div id="buttons" style="float: right">
					<input type="button" value="목록보기" class="submit"
						onclick="location.href='DiseaseServlet?command=qna_list'">
					<c:if test="${sessionScope.id == qDto.id}">
						<input type="submit" value="수정하기" class="submit">
						<input type="button" value="삭제하기"
							onclick="location.href='DiseaseServlet?command=qna_delete&qseq=${param.qseq}'">
					</c:if>

				</div>
			</form>
		</div>
	</section>
</body>
</head>