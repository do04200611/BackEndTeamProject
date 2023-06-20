<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--뷰포트-->

<meta name ="viewport" content = "width = device-width" initial-scale="1">

<!-- 스타일시트-->
	<link rel="stylesheet" href="../CSS/Menubar.css">
	<link rel="stylesheet" href="../CSS/bootstrap.css">
	<link rel="stylesheet" href="../CSS/custom.css">
	<link rel="stylesheet" href="../CSS/MemberShipRegistration.css">
	<link rel="stylesheet" href="../CSS/BrandMark.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">

<title>forest</title>

</head>

<body>

<!-- 네비게이션-->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">		
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="HomePage.jsp">
			<img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="MyInformation.jsp">나의 정보</a></li>
			</ul>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
						<li><a href="QuestionAndAnswer.jsp">자주묻는 질문</a></li>
						<li><a href="Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
			</ul>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="Login.jsp">로그인</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 로그인폼-->
	
	<div class="container">
	
		<div class="col-lg-4"></div>
		
		<div class="col-lg-4">
		
		<!-- 점보트론-->
		
			<div>
			
			<!-- 로그인 정보 숨기고 전송-->
			
			
			
				<h3 style="text-align: center;">회원가입 화면</h3>
				<form method="post" action="MemberShipRegistrationPro.jsp">
				<div class="form-group">
					<input type="image" src="../../images/email.png"  id="userIdimage">
					<input type="text" class="form-control" placeholder="아이디" name="userID" id="userID" maxlength="20">
					
				</div>
				
				<div class="form-group">
					<input type="image" src="../../images/userpassword.png"  id="userPasswordimage" >
					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" id="userPassword" maxlength="20">
					
					</div>
				<div class="form-group">
					<input type="image" src="../../images/userpassword.png"  id="userPasswordimage" >
					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword"  id="userPassword" maxlength="20">
				</div>
				<div class="form-group">
					<input type="image" src="../../images/email.png"  id="userEmailimage" >
					<input type="email" class="form-control" placeholder="이메일"name="userEmail" id="userEmail" maxlength="20">
					
				</div>
				<div class="form-group">
					<input type="image" src="../../images/usergender.png"  id="userGenderimage" >
					<input type="text" class="form-control" placeholder="성별" name="userGender" id="userGender" maxlength="20">
					
				</div>
		<input type="submit" class="btn btn-primary form-control" value="로그인">
					
				</form>
				
				</div>
				
				</div>
				
				<div class="col-lg-4"></div>
				
			</div>
			
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	
	</script>
	
	<script src="js/bootstrap.js">
	
	</script>
	
</body>

</html>