<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
  <title>Forest</title>
</head>
<body> 
<header>
  <h1 class="menubar">카테고리</h1>
  <nav>
    <ul>
      <li><a href="Login.jsp">로그인</a></li>
      <li><a href="MemberShipRegistration.jsp">회원가입</a></li>
    </ul>
  </nav>
</header>
<a href="HomePage.jsp">
  <img id="forest-brand-mark" src="../../images/textforestbrandmark.png">
</a>
<div class="container">
  <p class="pageexplanation">회원정보를 입력해주세요</p><br>
  <div class="column">
    <input type="image" src="../../images/email.png" id="userIdimage">
    <input class="userId" type="text" name="userId" placeholder="userId" value="" id="userId"><br> 
  </div>
  <input type="image" src="../../images/doorlock.png" id="userPasswordimage" >
  <input class="userPassword" type="password" name="userPassword" placeholder="userPassword" value="" id="userPassword"><br> 
  <form action="HomePage.jsp">
    <input type="submit" value="로그인" class="loginbutton">
  </form>
  <!-- 회원가입 버튼을 누르면 회원 가입 페이지로 이동시키는 코드 -->
  <form action="MemberShipRegistration.jsp">
    <!-- 회원 가입 버튼을 구현하는 코드 -->
    <input type="submit" value="회원가입" class="membership-registration-button">
  </form>
</div>
</body>
</html>