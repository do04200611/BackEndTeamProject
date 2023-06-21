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
						<li><a href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주묻는 질문</a></li>
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
	
		
		<form action="RequestWritePro.jsp" method="post">
				<table class="bulletinwrite" >
				
					<thead>
						<tr>
							<th class="bulletinboardtitle" colspan="2" style="background-color: #eeeeee; 
								text-align: center;"> 답변 게시판 글쓰기
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
							 <input type="text" class="form-control" id="id" name="id">
							</td>
							</tr>
							
							<tr>
							<td>
								<input type="text" class="form-control" id="writer" name="writer">
							</td>
							
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" 
								maxlength="50" id="title">
							</td>
						</tr>
						<tr>	
							<td>
								<textarea class="form-control" placeholder="글 내용" name="bbsContent"
								 maxlength="2048" style="height: 350px;" id="content" >
							</textarea>
							</td>
							</tr>
							
					</tbody>
				</table>
		
		
				<div>	
	      				<input type="submit" id="writebutton" class="btn btn-primary form-control" value="등록하기" onclick="location.href='RequestWritePro.jsp" style="position:relative; top: 550px;">	
					    <input type="submit" id="writecancelbutton" class="btn btn-primary form-control" value="작성취소" onclick="location.href='RequestList.jsp" style="position:relative; top: 550px;">
					    
	      			
				</div>		
				
			</form>
 
	</body>
</html>