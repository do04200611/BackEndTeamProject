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
<%@page import="cs.dit.BulletinBoardDao"%>
<%@page import="cs.dit.BulletinBoardDto"%>
<%
	String id = request.getParameter("id");
	new BulletinBoardDao().delete(id);
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	let ans = alert("삭제되었습니다.");
	if(!ans){
		location.href='RequestList.jsp';
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>