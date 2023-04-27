<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../CSS/MemberManagementBullteinBoard.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="stylesheet" href="../CSS/BrandMark.css">
<title>Forest</title>
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
	
	<h1 class="member">회원 관리 게시판</h1>
	<table>
			<tr>
				<th>번호</th>
				<th>회원명</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>성별</th>
			</tr>
			<tr>
				<td>1</td><td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
	</table>
</body>
</html>