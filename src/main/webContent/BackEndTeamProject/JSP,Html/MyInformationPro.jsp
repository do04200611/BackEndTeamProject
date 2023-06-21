<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.text.Format"%>
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
    pageEncoding="UTF-8" import ="java.sql.*" %>
<%	request.setCharacterEncoding("utf-8");
	//1. DB 연동 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	try(
			Connection conn = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/gildongdb", "root", "1111");
			Statement stmt = conn.createStatement();
					
			){
				stmt.executeUpdate(String.format(
						"UPDATE membership SET userPassword=?, userEmail = ? ,userGender = ? WHERE userID=?",
						request.getParameter("userGender"),
						request.getParameter("userPassword"),
						request.getParameter("userEmail"),
						request.getParameter("userID")));
			}catch(Exception e){
				e.printStackTrace();
			}
	%>

	<script>
		let ans = alert("변경되었습니다!");
		if (!ans){
			location.href='HomePage.jsp';
		}
	</script>