<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script src="script/members.js"></script>
<!-- <style type="text/css"> -->
<!-- /* body { */ -->
<!-- /* 	background-color: #B96DB5; */ -->
<!-- /* 	font-family: Verdana; */ -->
<!-- /* } */ -->
<!-- /* #wrap { */ -->
<!-- /* 	margin: 0 20px; */ -->
<!-- /* } */ -->

<!-- /* h1 { */ -->
<!-- /* 	font-family: "Times New Roman", Times, serif; */ -->
<!-- /* 	font-size: 45px; */ -->
<!-- /* 	color: #CCC; */ -->
<!-- /* 	font-weight: normal; */ -->
<!-- /* } */ -->

<!-- /* input[type=button], input[type=submit] { */ -->
<!-- /* 	float: right; */ -->
<!-- /* } */ -->
<!-- </style> -->
<script>
	function idok() {
		opener.reg_frm.id.value = "${id}";
		opener.reg_frm.reid.value = "${id}";
		self.close();
	}
</script>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div class="wrap">
		<p class="align-center"
			style="font-size: 30px; padding-top: 20px; font-weight: bold;">ID
			중복확인</p>
		<form method=post name=reg_frm
			action="DiseaseServlet?command=id_check_form">
		
			<div style="padding: 50px;">User ID <br />
				<input type=text name="id" value=""><br/>
				<input type=submit value="검색" class="button">
				<c:if test="${message == 1}">
					<script>
						opener.document.reg_frm.id.value = "";
					</script>
    			    ${id}는 이미 사용중인 아이디입니다.
      </c:if>
<c:if test="${message==-1}">
       <br/> ${id}는 사용 가능한 ID입니다.
        <input type="button" value="사용" class="button" onclick="idok()">
	</c:if>
</div>
	</form>
	</div>
</body>
</html>