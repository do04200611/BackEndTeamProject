<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../CSS/Request/Request.css">
<link rel="stylesheet" href="../../CSS/Menubar.css">
<link rel="stylesheet" href="../../CSS/BrandMark.css">
<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
	<script type="text/javascript">
		function sendIt() {
			
		    f = document.myForm;
		    
		    str = f.subject.value;
		    str = str.trim();
		    if(!str) {
		        alert("제목을 입력하세요 !!!");
		        f.subject.focus();
		        return;
		    }
		    f.subject.value = str;
		
		    str = f.uploadFile.value;
		    if(!str) {
		        alert("이미지 파일을 선택 하세요 !!!");
		        f.uploadFile.focus();
		        return;
		    }
		    
		    f.action="/study/image/write_ok.do";
		    f.submit();
		}
	</script>
<title>Forest</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">		
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../HomePage.jsp">
			<img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li><a href="../HomePage.jsp">메인</a></li>
				<li class="active"><a href="../BulletinBoard.jsp">게시판</a></li>
			</ul>	
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../Login.jsp">로그인</a></li>
						<li><a href="../MembershipRegistration.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%		
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>	
		</div>
	</nav> 
	<!--세로 메뉴바-->
	<ul>
	  <li><a class="vertical" href="#">메뉴 1</a></li>
	  <li><a class="vertical" href="#">메뉴 2</a></li>
	  <li><a class="vertical" href="#">메뉴 3</a></li>
	  <li><a class="vertical" href="#">메뉴 4</a></li>
	  <li><a class="vertical" href="#">메뉴 5</a></li>
	</ul>
	<!--게시글 양식-->
	<div class="container">
		<div class="row">
			<form method="post" action="../writeAction.jsp">
				<table class="bulletintable" >
					<thead>
						<tr>
							<th class="bulletinboardtitle" colspan="2" style="background-color: #eeeeee; 
		text-align: center;">게시판 글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>	
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="container">
			<img id="imageplus" src="../../../images/imageplus.png" style="">	
		</div>
		<div class="container">
			<form action="RequestContent.jsp">
				<input type="submit" class="writecancelbutton" value="글쓰기" style="">
			</form>
		</div>
		
		
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>