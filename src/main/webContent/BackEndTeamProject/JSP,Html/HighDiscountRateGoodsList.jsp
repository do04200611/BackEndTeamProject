<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forest</title>
	<link rel="stylesheet" href="../CSS/HighDiscountRateGoodsList.css">
	<link rel="stylesheet" href="../CSS/Menubar.css">
	<link rel="stylesheet" href="../CSS/BrandMark.css">
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
				<a class="navbar-brand" href="HomePage.jsp">
				<img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
			</div>
			<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav ">
					<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
					<li><a href="Request/RequestList.jsp">게시판</a></li>
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
			
			
			<h2>할인률이 높은 상품 항목</h2>
			<div class="pagetitle">
			 <span><strong>구매한 상품과 비슷한 상품 목록</strong></span>
	     	 <span>구매 데이터를 학습하고 고객님의 구매의도를 파악하여 AI모델이 제시하는 상품 목록</span>
	    </div> 
			<hr>
		<div class="pageintroduction">
		<a class="today">오늘의</a>
			<a class="today"> 판매자 특가</a><br>
		</div>
			
			<div class="column">
				<img src="../../images/apple.png" id="appleimgage">
				<p id="appleimgage">첫 출하</p>
			</div>
			<div class="column">
				<img src="../../images/napacabbage.png" id="napcabbageimage">
				<p id="napcabbageimage">첫 출하 빨간 가정용 햇 사과</p>
			</div>
			<div class="column">
				<img src="../../images/napacabbage.png" id="napcabbageimage2">
				<p id="napcabbageimage2">봄동 2kg 최상급 봄동배추 고</p>
				<p id="napcabbageimage2">소한 봄동나물</p>
			</div>
			<div class="column">
				<img src="../../images/napacabbage.png" id="napcabbageimage3">
				<p id="napcabbageimage3">첫 출하 고당도 성주 참외</p>
				<p id="napcabbageimage3">2kg(당일배송),2kg(5~11...</p>
			</div>
			<div class="column">
				<img src="../../images/napacabbage.png" id="napcabbageimage4">
				<p id="napcabbageimage4">참도깨 부산 깡통시장 당면</p>
				<p id="napcabbageimage4">만두 20개입, 2개</p>
			</div>
		

	</body>
</html>