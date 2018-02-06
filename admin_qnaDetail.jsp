<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/admin/admin_header.jsp" %>	 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="admin/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function go_list() {
		var theForm = document.frm;
		theForm.action = "DiseaseServlet?command=admin_qna_list";
		theForm.submit();
	}
	function go_rep(qseq) {
		var theForm = document.frm;
		theForm.qseq.value = qseq;
		theForm.action = "DiseaseServlet?command=admin_qna_repsave";
		theForm.submit();
	}
</script>
<body class="subpage">
	<section id="three" class="wrapper">
		<div class="inner">
<header class="align-center">
				<h2>관리자 QNA</h2>
				<p>운영자가 답변해드립니다</p>
			</header>
			<br/>
  
		
			<form name="frm" method="post">
				<input type="hidden" name="qseq">
				<table>
					<tr>
						<th >제목</th>
						<td colspan="2">${qDto.subject}${qDto.rep}</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td colspan="2"><fmt:formatDate value="${qDto.indate}" /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="2">${qDto.content}</td>
					</tr>
		
				<c:choose>
					<c:when test='${qDto.rep=="1"}'>
						<!-- 답변이 안 달려있을때 -->
						<tr>							
							<th colspan="1">답변</th>
								<td colspan="2">
								<textarea name="reply" rows="3" cols="10"></textarea><br/>
									<input type="button" class="btn" value="저장" 
									onClick="go_rep('${qDto.qseq}')"></td>
							</tr>
						
						<br>
					</c:when>
					<c:when test='${qDto.rep=="2"}'>
					
							<tr>
								<th>1:1 질문 답글</th>
								<td colspan="2">${qDto.reply}</td>
							</tr>
							<tr>
								<!-- 접기 -->
						
					</c:when>
				</c:choose>
				</table>
					<div id="section2" class="label" align="center"><!-- 수정하기 접기 -->
						<p style="background-image: url('image/icon7.png'); height:128px; width: 128px; " ></p>
						</div>
						<div class="elements" align="right">
							<textarea name="reply" rows="5" cols="5"></textarea><br/>	
							<input type="button" value="수정" onClick="go_rep('${qDto.qseq}')">
						</div>
						<br>
				<input type="button" class="rig" value="목록" onClick="go_list()">
			</form>
		</div>
	</section>
	
	   <script type="text/javascript">
var elements = document.getElementsByTagName("div");
// 모든 영역 접기
for (var i = 0; i < elements.length; i++) {
  if (elements[i].className == "elements") {
    elements[i].style.display="none";
  } else if (elements[i].className == "label") {
    elements[i].onclick=switchDisplay;
  }
}
// 상태에 따라 접거나 펼치기
function switchDisplay() {
  var parent = this.parentNode;
  var target = parent.getElementsByTagName("div")[1];
  if (target.style.display == "none") {
    target.style.display="block";
  } else {
    target.style.display="none";
  }
  return false;
}
</script>
</body>
</html>