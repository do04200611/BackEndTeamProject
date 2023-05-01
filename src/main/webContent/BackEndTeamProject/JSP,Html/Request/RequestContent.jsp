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
	<link rel="stylesheet" href="../../CSS/Request/RequestContent.css">
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
					<li><a href="../notice/NoticeList.jsp">게시판</a></li>
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
	  <li><a class="vertical" href="../imagepage/AlbumBulletinBoardList.jsp">상품 후기</a></li>
	  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
	</ul>
			<h1 id="customerrequire">고객들 요구사항</h1>
		<div id="bulletinform">
			<table class="bulletintable" width="800" border="3">
				<thead>
				  <tr height="30">
				   <th>제목 </th>
				    <th >배송이 너무 늦어요</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td>작성자</td>
						<td>11nae***</td>
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
		<p class="bulletincontent">배송이 너무 늦게 옵니다. 
		상담원에게 전화를 해도 어쩔 수 없다고 얘기하고 해서 인력을 고용해서 배송 시간을 단축 시키면 좋겠습니다.</p>
		<p class="bulletincontent">화가 매우 나니 정중한 사과도 요구합니다.</p>
	<hr>
		<h1 id="answertitle">답변</h1><br>
		<p class="bulletincontent">배송이 너무 늦은 점 정말이지 죄송하게 생각하며 이런 일이 없도록 하겠습니다.</p><br>
           <input type="button" value="댓글" class="commentbutton"/>
           <a href="RequestList.jsp"><input class="addbutton" type="button" value="목록"></a>		
	</body>
</html>