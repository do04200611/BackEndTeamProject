<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../CSS/Login.css">
<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	  
<title>Forest</title>
</head>
	<body>	
				
				<div class="textforestbrandmark">
				<a href="HomePage.jsp">
				<img id="forest-brand-mark" src="../../images/textforestbrandmark.png">
				</a>
				</div>
				
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
				<form action="HomePage.jsp">
				<input type="submit" value="로그인" class="loginbutton">		
				</form>
				</div>
				
			
				<!-- 회원가입 버튼을 누르면 회원 가입 페이지로 이동시키는 코드 -->
		<form action="MemberShipRegistration.jsp">
				<!-- 회원 가입 버튼을 구현하는 코드 -->
				<input type="submit" value="회원가입" class="membership-registration-button">
					
		</form>
		</div>
		</div>

		
			
	
	</body>
</html>