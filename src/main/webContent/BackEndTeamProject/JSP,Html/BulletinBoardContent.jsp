<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forest</title>
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="stylesheet" href="../CSS/BrandMark.css">
<link rel="stylesheet" href="../CSS/BulletinBoardContent.css">
<link rel="stylesheet" href="../CSS/VerticalMenubar.css">
<style type="text/css">
.table  {
		border-collapse:collapse;
		border-spacing:0;
		margin: 0 auto 0 auto;
		border-left: none;/* 표의 왼쪽 선이 없게 만든다.*/
		border-right: none;/*표의 오른쪽 선이 없게 만든다.*/
   	}
	.table td{
		border-collapse: collapse;
		border-color:black;
		border-style:solid;
		border-width:1px;
		font-family:Arial, sans-serif;
		font-size:14px;
	    overflow:hidden;
	    padding: 10px 5px;
	    word-break: normal;
	    border-left: none;/* 표의 왼쪽 선이 없게 만든다.*/
		border-right: none;/*표의 오른쪽 선이 없게 만든다.*/
	    }
	.table th{
		border-color:black;
		border-style:solid;
		font-family:Arial, sans-serif;
		font-size:14px;
	  	font-weight:normal;
	  	overflow:hidden;
	  	padding:10px 5px;
	  	word-break:normal;
	  	border-left: none;/* 표의 왼쪽 선이 없게 만든다.*/
		border-right: none;/*표의 오른쪽 선이 없게 만든다.*/
	}
	.table .commonbasicinformation{
		background-color:#036400;
		border-color:#333333;
		text-align:center;
		vertical-align:top;
		width: 1px;/* 표의 폭을 100px 만든다.*/
		border-left: none;/* 표의 왼쪽 선이 없게 만든다.*/
		border-right: none;/*표의 오른쪽 선이 없게 만든다.*/
		}
	.table .basicinformation{
		border-color:#333333;
		text-align:center;
		vertical-align:top;
		width: 2px;/* 표의 폭을 500px 만든다.*/
		border-left: none;/* 표의 왼쪽 선이 없게 만든다.*/
		border-right: none;/*표의 오른쪽 선이 없게 만든다.*/
	}
	h1{
		position: absolute;
		bottom: 600px;
		left: 500px;
	}
	table {
		text-align :center;
		border:"3";
		border-color:"lightgray";
		position: absolute;
		bottom: 440px;
		left: 500px;
	}
	
	
	input{
		width: 100px;
		height: 30px;
		background-color: blue;
		color: white;
	}
	.addbutton{
		position: relative;
		left: 1290px;
	}
	.comment{
		position: relative;
		left: 100px;
	}
	.content{
		text-align: center;
		position: relative;
	}
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
	<ul>
	  <li><a class="vertical" href="#">메뉴 1</a></li>
	  <li><a class="vertical" href="#">메뉴 2</a></li>
	  <li><a class="vertical" href="#">메뉴 3</a></li>
	  <li><a class="vertical" href="#">메뉴 4</a></li>
	  <li><a class="vertical" href="#">메뉴 5</a></li>
	</ul>
	<h1>고객들 요구사항</h1>
	<table class="table">
		<thead>
		  <tr>
		    <th class="commonbasicinformation">제목 </th>
		    <th class="basicinformation">배송이 늦게 와요</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="commonbasicinformation">작성자</td>
		    <td class="basicinformation">11na***</td>
		  </tr>
		  <tr>
		    <td class="commonbasicinformation">게시일</td>
		    <td class="basicinformation">2023.03.04</td>
		  </tr>
		  <tr>
		    <td class="commonbasicinformation">조회수</td>
		    <td class="basicinformation">100</td>
		  </tr>
		</tbody>
	</table>
		<hr>
			<p class="content">배송이 너무 늦게 옵니다. 
			상담원에게 전화를 해도 어쩔 수 없다고 얘기하고 해서 인력을 고용해서 배송 시간을 단축 시키면 좋겠습니다.</p>
			<p class="content">화가 매우 나니 정중한 사과도 요구합니다.</p>
		<hr>
            <input type="button" value="댓글" class="comment"/>
            <a href="Request.jsp"><input class="addbutton" type="button" value="목록"></a>		
		
</body>
</html>