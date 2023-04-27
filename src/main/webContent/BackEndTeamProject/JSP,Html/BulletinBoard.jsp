<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/BulletinBoard.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="stylesheet" href="../CSS/BrandMark.css">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
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
				<img id="forest-brand-mark" src="../../images/forest-brand-mark.png">
				<a href="HomePage.jsp">
				<img id="forest-brand-marktext" src="../../images/textforestbrandmark.png">
				</a>
			</div>
				
				<div class="bulletinboard">
					<p class="pageexplanation">1:1문의 접수</p><br>
				<div class="row">
				<div class="column">
				
					<label>내용*</label><input class="posttitle" type="text" name="posttitle"
			 		placeholder="제목을 입력해주세요" >
				</div>
				</div>
				<div class="column">
					<input class="content" type="text" name="content"
					placeholder="빠른 답변을 위해서 10자 이상은 작성해주세요" ><br> 
				</div>
				<div class="column">
					<form action="HomePage.jsp">
						<input type="submit" value="작성완료" class="completedbutton">
						<input type="submit" value="작성취소" class="writecancelbutton">		
					</form>
				
				</div>
				</div>
			
				<!-- 회원가입 버튼을 누르면 회원 가입 페이지로 이동시키는 코드 -->
</body>
</html>