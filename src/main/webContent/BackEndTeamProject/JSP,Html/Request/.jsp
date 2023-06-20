<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<%
	request.setCharacterEncoding("utf-8");

	Integer Id = Integer.parseInt(request.getParameter("Id"));
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	BulletinBoardDto dto = new BulletinBoardDto(Id, writer, title, content);
	BulletinBoardDao dao = new BulletinBoardDao();
	dao.update(dto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert("변경되었습니다.");
	location.href = 'RequestList.jsp';
</script>
</head>
<body>
</body>
</html>
