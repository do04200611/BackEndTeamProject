<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키보기</h3>
	<%
		Cookie[] rcookies = request.getCookies();
	
		if(cookies != null){
			for(int i = 0; i<cookies.length; i++){
				if(cookies[i].getName().equals("id")){
					
	%>
				쿠키의 속성명<%=cookies[i].getName() %>
				쿠키의 값:<%=cookies[i].getValue() %>
	<%
				}
			}
		}
	%>
			
</body>
</html>