<%
/* ================================
 * 파일명 :
 * 작성자 : 김강현
 * 프로그램 설명 :
 * 변경이력 :
 *
 *===============================*/
 %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    <%@page import="cs.dit.BulletinBoardDto" %>
<%@page import="cs.dit.BulletinBoardDao" %>
<%

    String id = request.getParameter("id");
    	
	BulletinBoardDto dto = new BulletinBoardDto();
    BulletinBoardDao dao = new BulletinBoardDao();
    out.println(id);
    // 수정된 코드
    dto = dao.selectOne(id); // bcode 변수 사용

%>	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 정보 변경</h2>
		<hr/>
		<form action="RequestUpdatePro.jsp" method="post">
	    <div class="form-group">
	      <label for="Id">아이디:</label>
	      <input type="text" class="form-control" id="id" name="id" value="<%=dto.getId()%>" readonly>
	    </div>
	    <div class="form-group">
	      <label for="title">제목:</label>
	      <input type="text" class="form-control" id="title" name="title" value="<%= dto.getTitle()%>">
	    </div>
	    <div class="form-group">
	      <label for="content">내용:</label>
	      <input type="text" class="form-control" id="content" name="content" value="<%=dto.getContent()%>">
	    </div>
	     <div class="form-group">
	      <label for="writer">작성자:</label>
	      <input type="text" class="form-control" id="writer" name="writer" value="<%=dto.getWriter()%>">
	    </div>
	    <div>	
	      			<input type="submit" id="writebutton" class="btn btn-primary form-control" value="변경하기" onclick="location.href='RequestUpdatePro.jsp">	
					<input type="submit" id="writecancelbutton" class="btn btn-primary form-control" value="작성취소" onclick="location.href='RequestList.jsp">	
	      			<input type="button" id="writecancelbutton" class="btn btn-primary form-control" value="삭제" onclick="location.href='RequestDelete.jsp?id=<%=id%>'">
	      			
				</div>		
	    </form>
	    </div>
</body>
</html>