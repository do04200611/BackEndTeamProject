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
	<link rel="stylesheet" href="../../CSS/Notice/NoticeContent.css">
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
					<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
					<li><a href="BulletinBoardList.jsp">게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
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
							<li class="active"><a href="../Login.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<ul>
		  <li><a class="vertical" href="../notice/NoticeList.jsp">공지사항</a></li>
		  <li><a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a></li>
		  <li><a class="vertical" href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
		  <li><a class="vertical" href="../productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
		  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
		</ul>
			<h1 id="customerrequire">공지 사항</h1>
		<div id="bulletinform">
			<table class="bulletintable" width="800" border="3">
				
				<tbody>
					<tr height="30">
					   <td>제목 </td>
				       <td>서비스 점검</td>
				  </tr>
					<tr>
						<td>작성일</td>
						<td>2023.03.04</td>
					</tr>
					<tr>
						<td>조회 수</td>
						<td>104</td>
					</tr>
				</tbody>
			</table>
	</div>
	<hr>
		<p class="bulletincontent">서비스 점검을 한다고 사이트를 1시간 정도 폐쇄 할 예정입니다. 죄송합니다.</p>
	<hr>
	    <input type="button" value="댓글" class="commentbutton"/>
	   	<a href="NoticeList.jsp"><input class="addbutton" type="button" value="목록"></a>		
	</body>
</html>