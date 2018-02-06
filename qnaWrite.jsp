<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/board/boardHeader.jsp"%>

<link href="css/main.css" rel="stylesheet" type="text/css">

<%
	String id = (String) session.getAttribute("id");
%>

<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">

			<h2>1:1 고객 게시판</h2>
			<h3>질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
			<form name="formm" method="post" action="DiseaseServlet">
			<input type="hidden" name="command" value="qna_write">
				<fieldset>
					<legend>QNA</legend>
					<label>Title</label> <input type="text" name="subject" size="77" required="required"><br>
					<label>ID</label> <input type="text" name="id" value="<%=id%>">
					<label>Content</label>
					<textarea rows="8" cols="65" name="content"></textarea>
					<br>
				</fieldset>
				<div class="clear"></div>
				<div id="buttons" style="float: right">
					<input type="submit" value="글쓰기" class="submit"> <input
						type="reset" value="취소" class="cancel">

				</div>
			</form>
		</div>
	</section>
</body>