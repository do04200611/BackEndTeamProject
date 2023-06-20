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
    pageEncoding="UTF-8" import="java.sql.*"%>
       <%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<% 
	request.setCharacterEncoding("utf-8");
/* if (StringUtils.isNotEmpty(BCODEParam) && StringUtils.isNumeric(BCODEParam)) {
    BCODE = Integer.parseInt(BCODEParam);
} */
String id = request.getParameter("id");
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");


BulletinBoardDto dto = new BulletinBoardDto(id,title, content,writer);
new BulletinBoardDao().update(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	let ans = alert("변경되었습니다.");
	if(!ans){
		location.href='RequestList.jsp';
	}
</script>
</head>
<body>

</body>
</html>