<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="java.sql.*"%>
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	

	
	BulletinBoardDto dto = new BulletinBoardDto(id, title, content,writer);
	BulletinBoardDao dao = new BulletinBoardDao();
	
	dao.insert(dto);
	response.sendRedirect("RequestList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
