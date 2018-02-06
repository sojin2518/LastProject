<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="admin_header.jsp"%>
<script type="text/javascript">
	function go_view(qseq) {
		var theForm = document.frm;
		theForm.qseq.value = qseq;
		theForm.action = "DiseaseServlet?command=admin_qna_detail";
		theForm.submit();
	}
</script>
<link href="admin/admin.css" rel="stylesheet" type="text/css">
<body class="subpage">
	<section id="three" class="wrapper">
	<div class="inner">
	<header class="align-center">
		<h2>QNA 답변</h2>
		<p>관리자용</p>
		</header>
			<form name="frm" method="post">
				<input type="hidden" name="qseq" />
				<table>
					<tr>
						<th>번호(답변여부)</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				<c:if test="${!empty qnaList}">
					<c:forEach items="${qnaList}" var="qna">
						<tr>
							<td class="center">${qna.qseq}
							<c:choose>
									<c:when test='${qna.rep=="1"}'>(미처리)</c:when>
									<c:otherwise>(답변처리완료)</c:otherwise>
								</c:choose>
							</td>
							<td><a href="#" onClick="javascript:go_view('${qna.qseq}')">
									${qna.subject} </a></td>
							<td>${qna.id}</td>
							<td><fmt:formatDate value="${qna.indate}" /></td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${ empty qnaList }">
					<tr>
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>
				</table><table>
		<tr align="center">
			<td><c:if test="${pg>block}">
					[ <a href="DiseaseServlet?command=admin_qna_list&pg=1">◀◀</a> ]
					[ <a href="DiseaseServlet?command=admin_qna_list&pg=${beginPage-1}">◀</a> ]
				</c:if> <c:if test="${pg<=block}">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if> <c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${i==pg}"> [ ${i} ] </c:if>
					<c:if test="${i!=pg}"> [ <a
							href="DiseaseServlet?command=admin_qna_list&pg=${i}">${i}</a> ]</c:if>
				</c:forEach> <c:if test="${endPage<allPage}">
					[ <a href="DiseaseServlet?command=admin_qna_list&pg=${endPage+1}">▶</a> ]
					[ <a href="DiseaseServlet?command=admin_qna_list&pg=${allPage}">▶▶</a> ]
				</c:if> <c:if test="${endPage>=allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if></td>
		</tr>
	</table>
				
<%-- 				<c:forEach items="${qnaList}" var="qDto"> --%>
<!-- 						<tr> -->
<%-- 							<td>${qDto.qseq}<c:choose> --%>
<%-- 									<c:when test='${qDto.rep=="1"}'>(미처리)</c:when> --%>
<%-- 									<c:otherwise>(답변처리완료)</c:otherwise> --%>
<%-- 								</c:choose> --%>
<!-- 							</td> -->
<%-- 							<td><a href="#" onClick="javascript:go_view('${qDto.qseq}')"> --%>
<%-- 									${qDto.subject} </a></td> --%>
<%-- 							<td>${qDto.id}</td> --%>
<%-- 							<td><fmt:formatDate value="${qDto.indate}" /></td> --%>
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
<!-- 				</table> -->
			</form>
		</div>
	</section>
</body>
