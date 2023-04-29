<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/QuestionAndAnswer.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="stylesheet" href="../CSS/VerticalMenubar.css">
<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
<title>Forest</title>
<style type="text/css">
	
</style>

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
	<ul>
	  <li><a class="vertical" href="#">메뉴 1</a></li>
	  <li><a class="vertical" href="#">메뉴 2</a></li>
	  <li><a class="vertical" href="#">메뉴 3</a></li>
	  <li><a class="vertical" href="#">메뉴 4</a></li>
	  <li><a class="vertical" href="#">메뉴 5</a></li>
	</ul>
	<div id="wrap">
		        <table id="table" width="800" border="1" border-color="lightgray">
		        	<thead>
			  		<tr height="30">
		                <td>로그인은 어떻게 하나요?</td>
		            </tr>
		            </thead>
		            <tbody>
		             <tr>
			            <td>물건 구매는 어떻게 하나요?</td>
		            </tr>
		            <tr>
			            <td>배송은 언제 되나요?</td>
		            </tr>
		            <tr>
			            <td>환불은 어떻게 하나요?</td>
		            </tr>
		            </tbody>
		           
	         	</table>
	</div>
</body>
</html>