<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>

<!DOCTYPE>
<html>
	<head>
		<title>Forest</title>
	 
		
		<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
		<link rel="stylesheet" href="../../CSS/Menubar.css">
		<link rel="stylesheet" href="../../CSS/BrandMark.css">
		<link rel="stylesheet" href="../../CSS/Request/RequestWrite.css">
	

	
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
			<a class="navbar-brand" href="../HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
					
			 <ul class="nav navbar-nav ">
				<li><a href="../MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="../notice/NoticeList.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게시판
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
						<li><a href="../QuestionAndAnswer.jsp">자주묻는 질문</a></li>
						<li><a href="../Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="../notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
			</ul>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active">
							<a href="../Login.jsp">로그인</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
		<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 입력</h2>
		<hr>
		<form action="RequestWritePro.jsp" method="post">
		<div class="form-group">
	      <label for="id">ID:</label>
	      <input type="text" class="form-control" id="id" name="id">
	    </div>
	    <div class="form-group">
	      <label for="title">제목:</label>
	      <input type="text" class="form-control" id="title" name="title">
	    </div>
	    <div class="form-group">
	      <label for="content">내용:</label>
	      <input type="text" class="form-control" id="content" name="content">
	    </div>
	     <div class="form-group">
	      <label for="writer">작성자:</label>
	      <input type="text" class="form-control" id="writer" name="writer">
	    </div>
	    <br>
	</div>
				<div>	
	      				<input type="submit" id="writebutton" class="btn btn-primary form-control" value="등록하기" onclick="location.href='RequestWritePro.jsp">	
					    <input type="submit" id="writecancelbutton" class="btn btn-primary form-control" value="작성취소" onclick="location.href='RequestList.jsp">
	      			
				</div>			
			</form>
 
	</body>
</html>