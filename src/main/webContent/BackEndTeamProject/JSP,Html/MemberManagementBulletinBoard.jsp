<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../CSS/MemberManagementBullteinBoard.css">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/VerticalMenubar.css">
<link rel="stylesheet" href="../CSS/BrandMark.css">
<title>Forest</title>
	<style type="text/css">
		table {
			width: 400px;
			text-align: center;
			position: absolute;
			bottom: 500px;
			left: 500px;
			border: 1px solid black;
			
		}
		#searchForm{
			position: relative;
			left: 500px;
		}
		.searchbutton {
			border-radius: 10px;
			background-color: blue;
			color: white;
			width: 100px;
			height: 30px;
		}
		.addbutton{
			border-radius: 10px;
			background-color: blue;
			color: white;
			width: 100px;
			height: 30px;
		}	
		#pageForm{
			position: relative;
			left: 700px; 
			
		}
		th, td{
			 border: 1px solid #444444;
		}
	</style>
	<script type="text/javascript">
	        function writeForm(){
	            location.href="BoardWriteForm.bo";
	        }
   		</script>
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
	<h1 class="member">회원 관리 게시판</h1>

		<ul>
		  <li><a href="#">메뉴 1</a></li>
		  <li><a href="#">메뉴 2</a></li>
		  <li><a href="#">메뉴 3</a></li>
		  <li><a href="#">메뉴 4</a></li>
		  <li><a href="#">메뉴 5</a></li>
	</ul>
	<div>	
		<table >
				<tr>
					<th>번호</th>
					<th>회원명</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이메일</th>
					<th>성별</th>
				</tr>
				<tr>
					<td>1</td><td>김강현</td>
					<td>11naeri2</td>
					<td>Do04200611</td>
					<td>11naeri2@naver.com</td>
					<td>남자</td>				
				</tr>
		</table>
	</div>
	<div id="pageForm">
		        <c:if test="${startPage != 1}">
		            <a href='BoardListAction.bo?page=${startPage-1}'>[이전]</a>
		        </c:if>
		        
		        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
		            <c:if test="${pageNum == spage}">
		                ${pageNum}&nbsp;
		            </c:if>
		            <c:if test="${pageNum != spage}">
		                <a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
		            </c:if>
		        </c:forEach>
		        
		        <c:if test="${endPage != maxPage }">
		            <a href='BoardListAction.bo?page=${endPage+1 }'>[다음]</a>
		        </c:if>
		    </div>
	 <div id="searchForm">
		        <div>
		            <select name="opt">
		                <option value="0">제목</option>
		                <option value="1">내용</option>
		                <option value="2">제목+내용</option>
		                <option value="3">글쓴이</option>
		            </select>

		            
		            <input type="text" size="20" name="condition"/>
		            <input type="submit" value="검색" class="searchbutton"/>
   		            <a href="AlbumBulletinBoard.jsp"><input class="addbutton" type="submit" value="등록"></a>
		            
	            </div>
	            </div>	 
     		    	 
		
		
</body>
</html>