<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<html>
<head>
	<link rel="stylesheet" href="../CSS/Request.css">
	<link rel="stylesheet" href="../CSS/Menubar.css">
	<link rel="stylesheet" href="../CSS/BrandMark.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
    <title>Forest</title>
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
				<li><a href="HomePage.jsp">����</a></li>
				<li class="active"><a href="BulletinBoard.jsp">�Խ���</a></li>
			</ul>	
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">�����ϱ�<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="Login.jsp">�α���</a></li>
						<li><a href="MembershipRegistration.jsp">ȸ������</a></li>
					</ul>
				</li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">ȸ������<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">�α׾ƿ�</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</nav> 
 		
		<div id="wrap">
		 
		    <!-- �۸�� �� �κ�-->
		    <br>
		    <div id="topForm">
		        <c:if test="${sessionScope.sessionID!=null}">
		            <input type="button" value="�۾���" onclick="writeForm()">
		        </c:if>    
		    </div>
		    
		    <!-- �Խñ� ��� �κ� -->
		    <br>
		    <div id="board">
		        <table id="bList" width="800" border="3" border-color="lightgray">
		            <tr height="30">
		                <td>�۹�ȣ</td>
		                <td>����</td>
		                <td>�ۼ���</td>
		                <td>�ۼ���</td>
		                <td>��ȸ��</td>
		            </tr>
		            <tr>
		            <td colspan="5">�Խù��� �����ϴ�.</td>
		            </tr>
		        <c:forEach var="board" items="${requestScope.list}">
		            <tr>
		                <td>${board.board_num}</td>
		                <td align="left">
		                    <c:if test="${board.board_re_lev > 0}">
		                        <c:forEach begin="1" end="${board.board_re_lev}">
		                            &nbsp;&nbsp; <!-- �亯���ϰ�� �� ���� �տ� ������ �ش�. -->
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
		    
		    <!-- ������ �ѹ� �κ� -->
		    <br>
		    <div id="pageForm">
		        <c:if test="${startPage != 1}">
		            <a href='BoardListAction.bo?page=${startPage-1}'>[ ���� ]</a>
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
		            <a href='BoardListAction.bo?page=${endPage+1 }'>[����]</a>
		        </c:if>
		    </div>
		    
		    <!--  �˻� �κ� -->
		    <br>
		    <div id="searchForm">
		        <div>
		            <select name="opt">
		                <option value="0">����</option>
		                <option value="1">����</option>
		                <option value="2">����+����</option>
		                <option value="3">�۾���</option>
		            </select>

		            
		            <input type="text" size="20" name="condition"/>
		            <input type="submit" value="�˻�" class="searchbutton"/>
   		            <a href="BulletinBoard.jsp"><input class="addbutton" type="submit" value="���"></a>
		            
	            </div>
		           
		            
		            </div>
		             
		    
		      
		       </div>
		    
		<div>
		
		
		</div>
		
		
	 
	</body>
</html>
