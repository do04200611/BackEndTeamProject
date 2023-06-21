<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.*"%>

<%
    ArrayList<BulletinBoardDto> dtoList = new BulletinBoardDao().list();
%>

<html>
<head>
    <link rel="stylesheet" href="../../CSS/Notice/NoticeList.css">
    <link rel="stylesheet" href="../../CSS/Menubar.css">
    <link rel="stylesheet" href="../../CSS/HomePage.css">
    <!-- =============================================================================== -->
    <link rel="stylesheet" href="../../CSS/UpponMenubar.css">
    <link rel="stylesheet" href="../../CSS/BrandMark.css">
    <link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
    <link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
    <title>Forest</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function writeForm(){
            location.href="BoardWriteForm.bo";
        }
    </script>
    <style type="text/css">


    </style>
</head>
<body>
<!-- 상단 메뉴바 -->
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
                    <li><a href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주묻는 질문</a></li>
                    <li><a href="../Request/RequestList.jsp">답변 게시판</a></li>
                    <li><a href="../notice/NoticeList.jsp">공지 사항</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
	
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
	<!-- 세로 메뉴바 -->	
	<ul>
	  <li>
	  	<!-- 공지사항을 누르면 NoticeList.jsp페이지를 이동시킨다. -->
	  	<a class="vertical" href="../notice/NoticeList.jsp">공지사항</a> 
	  </li>
	  <li>
	  	<!-- 답변 게시판을 누르면 RequestList.jsp페이지로 이동시킨다. -->
	  	<a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a>
	  </li>
	  <li>
	  	<!-- 자주 묻는 질문을 누르면 QuestionAndAnswer.jsp페이지로 이동시킨다. -->
	  	<a class="vertical" href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주 묻는 질문</a>
	  </li>
	  <li>
	  	<!-- 상품후기 누르면 ProductReviewList.jsp페이지로 이동시킨다. -->
	  	<a class="vertical" href="../productreview/ProductReviewList.jsp">상품 후기</a>
  	  </li>
	  <li>
	  	<!-- 구매 페이지를 누르면 PurchasePage.jsp페이지로 이동시킨다. -->
	  	<a class="vertical" href="../PurchasePage.jsp">구매 페이지</a>
	  </li>
	</ul>
	
		<nav class="upponmenubarnav" >
		  <ul class="upponmenubarul">
		    <li class="upponmenubardetail"   >
		    	<!-- 답변 게시판을 누르면 RequestList.jsp페이지로 이동시킨다. -->
		    	<a href="../Request/RequestList.jsp">답변 게시판</a>
		    </li>
		    <li class="upponmenubardetail" >
		    	<!-- 답변 게시판을 누르면 RequestList.jsp페이지로 이동시킨다. -->
		    	<a href="../QuestionAndAnswer.jsp">자주 묻는 질문</a>
	    	</li>
		    <li class="upponmenubardetail"  >
		   	 <a href="../productreview/ProductReviewList.jsp">상품 후기</a>
		    </li>
		    <li class="upponmenubardetail" ><a href="../notice/NoticeList.jsp">공지사항</a></li>
		  </ul>
   	

	</nav>
 		
		
		   <!-- 게시글 목록 부분 -->
		   
		    
		        
			<br>
		    <h1 style="position: relative; bottom: 200px; left: 200px;">상품후기</h1>
		    <div class="container">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; bottom: 50px; "> 
				<tbody>
				
					<tr>
						<td style="width: 20%;">글번호</td>
						<td>제목</td>
		                <td>작성자</td>
		                <td>내용</td>
		                <td>조회수</td>
						<td colspan="2"></td>
					<%	
				for (BulletinBoardDto dto : dtoList) {
					request.setAttribute("dto", dtoList);
			%>
			<c:forEach var="dto" items="${dtoList}">
			<tr>
				<td><a href="ProductReviewWrite.jsp?id=${ dto.Id}">${ dto.Id}</a></td>
				<td><a href="ProductReviewContent.jsp?title=${ dto.Title}">${ dto.Title}</a></td>
				<td>${ dto.Writer}</td>
				<td>${ dto.Content}</td>
				
			</tr>
			</c:forEach>
			<%
			}
			%>
			
				</tbody>
				</table>
		    </div>
		    
		    <!-- 게시글 목록 부분 -->
		    <br>
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
		    
		    <!--  검색 부분 -->
		    <br>
		    <div id="searchForm">
		        <div>
		        <!-- 검색 할 때 지정된 영역에서 찾는 부분 -->
		            <select>
		                <option value="0">제목</option> <!-- 제목 데이터를 토대로 검색을 하게 한다. -->
		                <option value="1">내용</option> <!--  내용 데이터를 토대로 검색을 하게 한다. -->
		                <option value="2">제목+내용</option> <!--  제목+내용 데이터를 토대로 검색을 하게 한다. -->
		                <option value="3">글쓴이</option><!--  글쓴이 데이터를 토대로 검색을 하게 한다. -->
		            </select>

		            
		            <input type="text" size="20" name="condition"/>
		            <input type="submit" id="searchbutton" class="btn btn-primary form-control" value="검색하기">	
   		            <a href="ProductReviewWrite.jsp"><!-- 버튼을 누르면 ProductReviewWrite.jsp로 값을 넘겨준다. -->
   		            	<!--ProductReviewWrite.jsp로 값을 넘겨줄 버튼을 만드는 코드 -->	            	
					    <input type="submit" id="addbutton" class="btn btn-primary form-control" value="등록하기">
	            	</a>
		            
	            </div>
	            </div>	 
     		    	
		    	
		
		
		
		
		
	 
	</body>
</html>