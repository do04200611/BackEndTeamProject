<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forest</title>
	<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/BrandMark.css">
	<link rel="stylesheet" href="../../CSS/productreview/productreviewcontent.css">
	<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
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
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
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
							<li class="active"><a href="과제2.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<!--세로 메뉴바 -->
		<ul>
		  <li><a class="vertical" href="../notice/NoticeList.jsp">공지사항</a></li>
		  <li><a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a></li>
		  <li><a class="vertical" href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
		  <li><a class="vertical" href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
		  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
		</ul>
			<h1 id="customerrequire">상품 게시판</h1>
			 <div class="container">
	<!--상품 후기 게시판 내용 -->
		<div class = "row">
		<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; left: 100px; bottom:50px; "> 
				<tbody>
					<tr>
						<td>제목</td>
			    		<td >산양 우유 단백질 상품 후기</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						 <td>작성자</td>
						<td>11nae***</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>2023.03.03</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>조회 수</td>
						<td>104</td>
						<td colspan="2"></td>
					</tr>
				</tbody>
				</table>
				</div>
				</div>
				<hr>
					<img src="../../../images/hompageimage/jwgoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
					<p class="content">
					우유가 맛있습니다. 고급 브랜드라서 그런지 더 사고 싶습니다. 저는 개인적으로 이 제품 강추합니다.</p>
				<hr>
				
		            <input type="submit" id="searchbutton" class="btn btn-primary form-control" value="댓글">	
		            <a href="ProductReviewList.jsp"> 
		            	<input type="submit" id="addbutton" class="btn btn-primary form-control" value="목록">
		            </a>		
				
	</body>
</html>