<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/BulletinBoardContent.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
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
	<table>
				<tr>
					<th class="tabletop">번호</th>
					<th class="tabletop">제목</th>
					<th class="tabletop">작성일</th>
				</tr>
				<tr class="lower">
					<td>1</td><td>로그인은 어떻게 하나요?</td><td>2023.03.02</td>	
				</tr>
				<tr class="lower">
					<td>2</td><td>물건 구매는 어떻게 하나요?</td><td>2023.01.03</td>
				</tr>
				<tr class="lower">
					<td>3</td><td>배송은 언제 되나요?</td><td>2021.12.31</td>
				</tr>
				<tr class="lower">
					<td>4</td><td>환불은 어떻게 하나요?</td><td>2022.12.03</td>
				</tr>
		</table>
</body>
</html>