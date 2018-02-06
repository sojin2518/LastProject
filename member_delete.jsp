<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<link rel="stylesheet" href="css/main.css" />
<script language="JavaScript" src="script/members.js"></script>
<html>
<head>
<title>탈퇴 화면</title>

</head>
<body class="subpage" >
	<section id="three" class="wrapper">
		<div class="inner">
	<footer id="footer" class="cen">
		<b><font size="20" color="gray">회원탈퇴</font></b>
	<form name="deleteform" method="post" action="DiseaseServlet?command=delete_member" style="padding: 50px;">
			<br/>
			<h4 style="color: gray;"> 비밀번호를 입력하세요</h4>
	<input type="password" name="pw" maxlength="50"  />
	<br/>
	<br/>
 <input type="button" value="취소" onclick="javascript:window.location='MainForm.jsp'" /> 
 <input type="submit" value="탈퇴" onclick="checkValue()" />
</form>
</footer>
</div>
</section>
</body>
</html>
