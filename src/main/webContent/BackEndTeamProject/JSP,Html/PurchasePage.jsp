<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
<meta charset="UTF-8">
<title>Forest</title>
<link rel="stylesheet" href="../CSS/PurchasePage.css">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
</head>
	<body>
	 <nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">		
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="MemberManagementBulletinBoard.jsp">게시판</a></li>
			</ul>		
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="과제2.jsp">로그인</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
		
			<div class="forest-brand-mark">
				<img id="forest-brand-mark" src="../../images/forest-brand-mark.png" style="width: 30px; height: 30px;">
				<a href="HomePage.jsp">
				<img id="forest-brand-marktext" src="../../images/textforestbrandmark.png">
				</a>
			</div>
		
			<h1 class="toptext">구매 페이지</h1>
			<strong> <a class="information">사용자가 구매한 제품과 유사한 상품</a> 
			<a class="information2">AI 추천 상품 목록</a>
			</strong>




	</body>
</html>