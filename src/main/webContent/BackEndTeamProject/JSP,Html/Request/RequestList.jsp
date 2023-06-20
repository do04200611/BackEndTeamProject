<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
BulletinBoardDao dao = new BulletinBoardDao();
ArrayList<BulletinBoardDto> dtos = dao.list();
%>
<html>
<head>
	<link rel="stylesheet" href="../../CSS/Request/RequestList.css">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/UpponMenubar.css">
	<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
	<link rel="stylesheet" href="../../CSS/BrandMark.css">
	<link rel="stylesheet" href="../../CSS/custom.css">
	<link rel="stylesheet" href="../../CSS/bootstrap.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
    <title>Forest</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				</button>
					<a class="navbar-brand" href="../HomePage.jsp">
					<img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
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
							<li class="active"><a href="../Login.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
 		
		<div id="bulletinboarform">
		 
		   <!-- 글목록 위 부분-->
		    <br>
		    <div id="topForm">
		        <c:if test="${sessionScope.sessionID!=null}">
		            <input type="button" value="글쓰기" onclick="writeForm()">
		        </c:if>    
		    </div>
    	<ul class="verticalmenuul">
		  <li><a class="vertical" href="../notice/NoticeList.jsp">공지사항</a></li>
		  <li><a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a></li>
		  <li><a class="vertical" href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
		  <li><a class="vertical" href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
		  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
		</ul>
	<nav class="upponmenubarnav">
	  <ul class="upponmenubarul">
	    <li class="upponmenubardetail" ><a href="RequestList.jsp">답변 게시판</a></li>
	    <li class="upponmenubardetail"><a href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	    <li class="upponmenubardetail"><a href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
	    <li class="upponmenubardetail" ><a href="../notice/NoticeList.jsp">공지사항</a></li>
	  </ul>
	</nav>
		    
		   <!-- 게시글 목록 부분 -->
		    <br>
		    <h1>답변게시판</h1>
		    <div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd; position: relative; bottom: 100px; "> 
				<tbody>
					<tr>
						<td style="width: 20%;">글번호</td>
						<td>제목</td>
		                <td>작성자</td>
		                <td>내용</td>
		                <td>조회수</td>
						<td colspan="2"></td>
					<!-- </tr>
					<tr>
						  <td>1</td>
		            <td>
	           		 	<a href="RequestContent.jsp">배송이 너무 늦어요</a>
		            </td>
		         
			         <td>11nae**</td>
			         <td>2023.03.01</td>
			         <td>101</td>
						<td colspan="2"></td>
					</tr> -->
					<%
			for (BulletinBoardDto dto : dtos) {
			%>
			<tr>
				<td><a href="RequestUpdateForm.jsp?id=<%=dto.getId()%>"><%=dto.getId()  %></a></td>
				<td><a href="RequestContent.jsp?title=<%=dto.getTitle()%>"><%=dto.getTitle() %></a></td>
				<td><%=dto.getWriter()%></td>
				<td><%=dto.getContent()%></td>
				
			</tr>
			
			<%
			}
			%>
				</tbody>
				</table>
		           
		            	
		        <c:forEach var="board" items="${requestScope.list}">
		            <tr>
		                <td>${board.board_num}</td>
		                <td align="left">
		                    <c:if test="${board.board_re_lev > 0}">
		                        <c:forEach begin="1" end="${board.board_re_lev}">
		                            &nbsp;&nbsp; <!-- 답변글일경우 글 제목 앞에 공백을 준다. -->
		                        </c:forEach>
		                        RE : 
		                    </c:if>
		                    <a href="BoardDetailAction.bo?num=${board.board_num}&pageNum=${spage}">
		                    ${board.board_subject}
		                    </a>
		                </td>
		                <td>
		                    <a href="#">
		                    ${board.board_id}
		                    </a>
		                </td>
		                <td>${board.board_date}</td>
		                <td>${board.board_count}</td>
		            </tr>
		        </c:forEach>
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
		            <select>
		                <option value="0">제목</option>
		                <option value="1">내용</option>
		                <option value="2">제목+내용</option>
		                <option value="3">글쓴이</option>
		            </select>

		            
		            <input type="text" size="20" name="condition"/>
		             <input type="button" id="searchbutton" class="btn btn-primary form-control" value="검색하기">	
   
   		            	<!--ProductReviewWrite.jsp로 값을 넘겨줄 버튼을 만드는 코드 -->	            	
					    <input type="button" id="addbutton" class="btn btn-primary form-control" value="등록하기" onclick="location.href='RequestWrite.jsp'">
	            
	            </div>
		           
		            
		            </div>
		             
		    
		      
		       </div>
		    
		<div>
		
		
		</div>
	</body>
</html>