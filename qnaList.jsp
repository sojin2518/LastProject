<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/board/boardHeader.jsp"%>
<link href="css/main.css" rel="stylesheet" type="text/css">
<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">
			<header class="align-center">
				<h2>문의 게시판</h2>
				<p>질문에 대해서 운영자가 1:1 답변을 드립니다</p>
			</header>
			<br/>
			<br/>
			<form name="formm" method="post" >
				<table class="cen">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>작성자</th>
						<th>답변 여부</th>
					</tr>
					<c:if test="${!empty qnaList}">
					<c:forEach items="${qnaList}" var="qna">
						<tr>
							<td class="center">${qna.qseq}</td>
							<td><a
								href="DiseaseServlet?command=qna_view&qseq=${qna.qseq}&pg=${pg}">&nbsp;${qna.subject}</a></td>
								<td align="center"><fmt:formatDate	value="${qna.indate}" /></td>
							<td align="center">&nbsp;${qna.id}</td>
							<td align="center"> 
							<c:choose>
							<c:when test="${qna.rep==1}"> no </c:when>
									<c:when test="${qna.rep==2}"> yes </c:when>
							</c:choose>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${ empty qnaList }">
					<tr>
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>
			</table>
	</section>
	<br>
	<!-- 페이지 넘기기 -->
	<table>
		<tr align="center">
			<td><c:if test="${pg>block}">
					[ <a href="DiseaseServlet?command=qna_list&pg=1">◀◀</a> ]
					[ <a href="DiseaseServlet?command=qna_list&pg=${beginPage-1}">◀</a> ]
				</c:if> <c:if test="${pg<=block}">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if> <c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${i==pg}"> [ ${i} ] </c:if>
					<c:if test="${i!=pg}"> [ <a
							href="DiseaseServlet?command=qna_list&pg=${i}">${i}</a> ]</c:if>
				</c:forEach> <c:if test="${endPage<allPage}">
					[ <a href="DiseaseServlet?command=qna_list&pg=${endPage+1}">▶</a> ]
					[ <a href="DiseaseServlet?command=qna_list&pg=${allPage}">▶▶</a> ]
				</c:if> <c:if test="${endPage>=allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if></td>
		</tr>
	</table>
					
<%-- 					<c:forEach items="${qnaList}" var="qDto"> --%>
<!-- 						<tr> -->
<%-- 							<td>${qDto.qseq}</td> --%>
<!-- 							번호 -->
<!-- 							<td><a -->
<%-- 								href="DiseaseServlet?command=qna_view&qseq=${qDto.qseq}"> --%>

<%-- 									${qDto.subject} </a></td> --%>
<!-- 							제목 -->
<%-- 							<td><fmt:formatDate value="${qDto.indate}" type="date" /></td> --%>
<!-- 							등록일 -->
<!-- 							<td> -->
<%-- 								<!-- 답변여부 --> <c:choose> --%>
<%-- 									<c:when test="${qDto.rep==1}"> no </c:when> --%>
<%-- 									<c:when test="${qDto.rep==2}"> yes </c:when> --%>
<%-- 								</c:choose> --%>
<!-- 							</td> -->
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
<!-- 				</table> -->
				<div class="clear"></div>
				<div id="buttons" style="float: right">
					<input type="button" value="질문하기" class="submit"
						onclick="location.href='DiseaseServlet?command=qna_write_form'">

				</div>
			</form>

		</div>
	</section>
</body>