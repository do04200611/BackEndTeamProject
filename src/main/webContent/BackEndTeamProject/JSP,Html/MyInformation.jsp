<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../CSS/MemberShipRegistration.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
<meta charset="UTF-8">
<title>Forest</title>
</head>
	<body>

<!-- 회원가입 양식
u
userPassword
userName
userGender
userEmail -->
				<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">		
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" 
			style="width=30px; height: 30px;" ></a>
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
						<li class="active"><a href="Login.jsp">로그인</a></li>
					<ul class="dropdown-menu">
					</ul>
				</li>
			</ul>
		</div>
	</nav>
			
				
				<a href="HomePage.jsp">
				<img id="forest-brand-mark" src="../../images/forest-brand-mark.png">
				<img id="forest-brand-mark" src="../../images/textforestbrandmark.png">
				</a>
				<div class="page"> 	
				<p class="pageexplanation">회원정보를 입력해주세요</p><br>
				<div class="row">
				<div class="column">
				<input type="image" src="../../images/email.png"  id="userIdimage">
		 		<input class="userId" type="text" name="userId"  
				placeholder="userId" value="" id="userId"><br> 
			</div>
			<div class="column">
				<input type="image" src="../../images/doorlock.png"  id="userPasswordimage" >
				<input class="userPassword" type="password" name="userPassword" placeholder="userPassword"
				value="" id="userPassword"><br> 
			</div>
			<div class="column">
				<input type="image" src="../../images/doorlock.png"  id="userPasswordcheckimage" >
				<input class="userPasswordcheck" type="password" name="userPasswordcheck" placeholder="userPasswordchek"
				value=""><br> 
			</div>
			<div class="column">
				<input type="image" src="../../images/email.png"  id="userEmailimage" >
				<input class="userEmail" type="email" name="userEmail" placeholder="userEmail"
				value=""><br> 
			</div>
			</div>
			<div class="column">
				<input type="image" src="../../images/usergender.png"  id="userGenderimage" >
				<input class="userGender" type="text" name="userGender" placeholder="userGender"
				value=""><br> 
			</div>
			<div class="column">
			<form action="HomePage.jsp">
				<input type="submit" value="로그인" class="loginbutton">
				</form>
			</div>
			</div>	
		
	</body>
</html>