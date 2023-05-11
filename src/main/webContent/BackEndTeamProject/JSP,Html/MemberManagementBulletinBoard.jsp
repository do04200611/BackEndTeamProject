<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
//연결 정보와 SQL
String url = "jdbc:mariadb://localhost:3306/gildongdb";
String user = "root";
String passwd = "1111";

//1. DB 연동 드라이버 로드
Class.forName("org.mariadb.jdbc.Driver");

//2. 연결 객체 생성
try (Connection con = DriverManager.getConnection(url, user, passwd); 
		 Statement st = con.createStatement();) {

	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "SELECT * FROM membership";

	//4. SQL 실행
	ResultSet rs = st.executeQuery(sql);
%>
    
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
	<h1>회원 관리 게시판</h1>
	<div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; top: 50px; left: 30px; "> 
				<tbody>
					<tr>	
						<td style="width: 20%; colspan=2">아이디</td><td>비밀번호</td><td>이메일</td><td> 성별</td>
					</tr>
			<% 		
					while (rs.next()) {
						String userID = rs.getString("userID");
						String userPassword = rs.getString("userPassword");
						String userEmail = rs.getString("userEmail");
						String userGender = rs.getString("userGender");
			%>
					<tr>
						<td><a href="updateForm.jsp?userID=<%=userID%>"><%=userID%></a></td>

						<td><%=userPassword%></td>
						<td><%=userEmail%></td>
						<td><%=userGender%></td>
					</tr>
				</tbody>
					<%
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
				
				
				</table>
			</div>
		</div>
</body>
</html>