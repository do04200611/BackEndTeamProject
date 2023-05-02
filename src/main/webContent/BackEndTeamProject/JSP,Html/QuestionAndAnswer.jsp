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
	<link rel="stylesheet" href="../CSS/UpponMenubar.css">
	<link rel="stylesheet" href="../../CSS/custom.css">
	<link rel="stylesheet" href="../../CSS/bootstrap.css">
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
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="productreview/ProductReviewList.jsp">상품 후기</a></li>
						<li><a href="QuestionAndAnswer.jsp">자주묻는 질문</a></li>
						<li><a href="Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
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
	  <li><a class="vertical" href="notice/NoticeList.jsp">공지사항</a></li>
	  <li><a class="vertical" href="Request/RequestList.jsp">답변 게시판</a></li>
	  <li><a class="vertical" href="QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	  <li><a class="vertical" href="productreview/ProductReviewList.jsp">상품 후기</a></li>
	  <li><a class="vertical" href="PurchasePage.jsp">구매 페이지</a></li>
	</ul>
	<!--상단 메뉴바 -->
	<nav class="upponmenubarnav" >
	  <ul class="upponmenubarul">
	    <li class="upponmenubardetail"><a href="Request/RequestList.jsp">답변 게시판</a></li>
	    <li class="upponmenubardetail"><a href="QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	    <li class="upponmenubardetail"><a href="productreview/ProductReviewList.jsp">상품 후기</a></li>
	    <li class="upponmenubardetail" ><a href="notice/NoticeList.jsp">공지사항</a></li>
	  </ul>
	</nav>
	<h1>자주 묻는 질문</h1>
	<div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; top: 50px; left: 30px; "> 
				<tbody>
					<tr>
						
						<td style="width: 20%; colspan=2">로그인은 어떻게 하나요?</td>
					</tr>
					<tr>
						<td>물건 구매는 어떻게 하나요?</td>
					
		            <tr>
	           		 	<td>배송은 언제 되나요?</td>
		            </tr>
		         	<tr>
			        	<td>환불은 어떻게 하나요?</td>
					</tr>
				</tbody>
				</table>
			</div>
		</div>
</body>
</html>