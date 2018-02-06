<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="main.css">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
if(window.name=="update"){//새창이름이 update 인 경우
	//window opener(open을 해준다)의 parent(부모)는 window의
	//location.href주소
	//(parent)를 생략하고 사용해도 괜찮다
	//opener 자체에 window가 있고  open을 해야하기 때문에
	//opener을 사용
	window.opener.parent.location.href=
		"DiseaseServlet?command=board_update_form&num=${param.num}";
}else if(window.name=='delete'){
	alert('삭제되었습니다');
	window.opener.parent.location.href=
		"DiseaseServlet?command=board_delete&num=${param.num}";		
}//window:자바 스크립트 창 opener:비밀번호확인창 parent:처음 실행한 페이지
//윈도우창은 닫히고 게시판 페이지에서 DiseaseServlet으로 이동한다
window.close();

</script>

</body>
</html>