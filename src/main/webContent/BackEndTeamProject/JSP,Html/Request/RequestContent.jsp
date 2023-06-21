<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
BulletinBoardDao dao = new BulletinBoardDao();
ArrayList<BulletinBoardDto> dtos = dao.list();
%>   
    
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
	  <li><a class="vertical" href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
	  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
	</ul>
	<h1 id="customerrequire">고객들 요구사항</h1>
	<div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; bottom: 50px; left: 30px; "> 
				<tbody>
					<tbody>
					<tr>
						<td >글번호</td>
						<td>제목</td>
		                <td>작성자</td>
						<td colspan="2"></td>
							<%
			for (BulletinBoardDto dto : dtos) {
			%>
			<tr>
				<td><%=dto.getId()  %></td>
				<td><%=dto.getWriter()%></td>
				<td><%=dto.getTitle() %></td>
				<td></td>
			</tr>
			
		
			
			
				</tbody>
				</table>
				<hr>
				<h1 id="answertitle">답변</h1><br>
				<%=dto.getContent() %>
				<%
			}
			%>
			</div>
		</div>
	<hr>
	
	
            <input type="submit" id="searchbutton" class="btn btn-primary form-control" value="댓글">	
		            <a href="../Request/RequestList.jsp"> 
		            	<input type="submit" id="addbutton" class="btn btn-primary form-control" value="목록">
		            </a>		
		            <a href="../Request/RequestUpdateForm.jsp"> 
		            	<input type="submit" class="btn btn-primary form-control" value="수정" style="border-radius:10px; width: 100px;" onclick="location.href='RequestUpdateForm.jsp'">
		            </a>	
		            <a href="../Request/RequestDelete.jsp"> 
		            	<input type="submit" class="btn btn-primary form-control" value="삭제" style="border-radius:10px; width: 100px;" onclick="location.href='RequestDelete.jsp'" >
		            </a>		
	</body>
</html>