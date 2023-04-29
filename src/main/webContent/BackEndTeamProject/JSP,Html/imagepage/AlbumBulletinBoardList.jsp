<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<html>
<head>
	<link rel="stylesheet" href="../../CSS/BulletinBoard/BulletinBoardList.css">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/HomePage.css">
	<link rel="stylesheet" href="../../CSS/BrandMark.css">
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
						<a href="../HomePage.jsp" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">홈페이지<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href=Login.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
 		
		<div id="wrap">
		 
		   <!-- 글목록 위 부분-->
		    <br>
		    <div id="topForm">
		        <c:if test="${sessionScope.sessionID!=null}">
		            <input type="button" value="글쓰기" onclick="writeForm()">
		        </c:if>    
		    </div>
		    
		   <!-- 게시글 목록 부분 -->
		    <br>
		    <div id="board">
		        
			<table class="table">
				<tbody>
					  <tr>
					    <td class="tablegoodslist">
					    	<img src="../../../images/hompageimage/daesangwelllifegoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
					    </td>
					    <td class="tablegoodslist">
					    	<img src="../../../images/hompageimage/jwgoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
					    </td>
				    	<td class="tablegoodslist" colspan="2">
					     	<img src="../../../images/hompageimage/v.png"  id="v" class="goodsimage">
					    </td>
					  </tr>
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
     		    	 </div>
		    		<div>
		
		
		</div>
		
		
	 
	</body>
</html>