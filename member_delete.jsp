<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<link rel="stylesheet" href="css/main.css" />
<script language="JavaScript" src="script/members.js"></script>
<html>
<head>
<title>Ż�� ȭ��</title>

</head>
<body class="subpage" >
	<section id="three" class="wrapper">
		<div class="inner">
	<footer id="footer" class="cen">
		<b><font size="20" color="gray">ȸ��Ż��</font></b>
	<form name="deleteform" method="post" action="DiseaseServlet?command=delete_member" style="padding: 50px;">
			<br/>
			<h4 style="color: gray;"> ��й�ȣ�� �Է��ϼ���</h4>
	<input type="password" name="pw" maxlength="50"  />
	<br/>
	<br/>
 <input type="button" value="���" onclick="javascript:window.location='MainForm.jsp'" /> 
 <input type="submit" value="Ż��" onclick="checkValue()" />
</form>
</footer>
</div>
</section>
</body>
</html>
