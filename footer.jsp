<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script language="JavaScript" src="script/members.js"></script>

<title>Insert title here</title>
</head>
<body>

<!-- Footer -->
   <footer id="footer">

   <div class="inner">

      <h3>LOGIN</h3>

      <form action="DiseaseServlet?command=login" method="post" name="login">

         <div class="field half first">
            <label for="id">ID</label> <input name="id" id="id" type="text"
               placeholder="ID" value="${id}">
         
            <label for="password">PASSWORD</label> <input name="pw" id="pw"
               type="password" placeholder="PASSWORD"><br/>

      

         <!-- <input type="checkbox" checked id="chkID"> <label for="chkID">아이디저장</label><br>-->

         <ul class="actions">
            <li><input value="LOGIN" type="submit"></li>
          
         </ul>
     </div>
      </form>

   <input
         type="button" value="아이디찾기" class="submit"
         onclick="location='DiseaseServlet?command=id_search_form'">
         <input type="button" value="비밀번호찾기" class="submit"
         onclick="location='DiseaseServlet?command=pw_search_form'"> <br>
         <hr>
            <input type="button" value="관리자"
         onclick="location='DiseaseServlet?command=admin_Loginform'">
      <hr>
      <!-- -------------------------------회원가입 ---------------------------------->
     

      <form id="join" action="DiseaseServlet?command=join" method="post"
         name="reg_frm">

<!-- 접기태그 -->
    <div id="section2" class="label">
      <h3>JOIN US</h3>
  </div>
  <div class="elements"><!-- 접기태그-->
         <div class="field half">
            <label for="id">ID</label> <input name="id" type="text"
               placeholder="ID" id="id"> <br/>
       
          <input type="hidden"    name="reid">
         <input type="button" class="dup" value="중복 체크"
               onclick="idcheck()"><br>

      
            <label for="name">name</label> <input name="name" type="text"
               placeholder="NAME">

         
            <label for="pw">PASSWORD</label> <input name="pw" type="password"
               placeholder="PASSWORD">
    
       
            <label for="pw_check">PASSWORD_CHECK</label> <input name="pw_check"
               type="password" placeholder="비밀번호를 한 번 더 입력해주세요"> <span
               id="passwordcheck_check"></span>
 
         <div class="field half">
            <label for="eMail1">eMail1</label> <input name="eMail1" type="text"
               placeholder="EMAIL">
         </div>

         <div class="field half">
            <label for="eMail2">eMail2</label> <input name="eMail2" type="text"
               placeholder="@">
    
         </div>
        
            <label for="address">address</label> <input name="address"
               type="text" placeholder="ADDRESS">
        
         
         <br /> <input type="radio" name="admin" value="일반회원">일반회원 <input
            type="radio" name="admin" value="관리자">관리자 <br /><br/>




         <input value="JOIN US" type="button" onclick="infoConfirm()"/>
          </div>

      </form>

   </div>
   
   
   </footer>
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