<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/board/boardHeader.jsp"%>
<script type="text/javascript" src="script/qna.js"></script>
<%@ include file="/board/boardHeader.jsp"%>
<link href="css/main.css" rel="stylesheet" type="text/css">
<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">
			<header class="align-center">
				<h2>문의 게시판</h2>
				<p>수정하기</p>

			</header>
			<br /> <br />
			<form name="frm" method="post" action="DiseaseServlet">
				<input type="hidden" name="command" value="qna_modify"> <input
					type="hidden" name="qseq" value="${qna.qseq}">
				<fieldset>
					<label>Title</label> <input type="text" name="subject" size="77"
						value="${qna.subject}"><br> <label>Content</label>
					<textarea rows="8" cols="65" name="content">${qna.content}</textarea>
					<br>
				</fieldset>
				<div class="clear"></div>
				<div class=".cen" style="float: right">
					<input type="submit" value="수정하기"> <input type="reset"
						value="취소" class="cancel">

				</div>
			</form>
		</div>
	</section>
</body>