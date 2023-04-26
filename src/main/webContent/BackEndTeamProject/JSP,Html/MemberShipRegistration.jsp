<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../CSS/MemberShipRegistration.css">
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
				
				<a href="HomePage.jsp">
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