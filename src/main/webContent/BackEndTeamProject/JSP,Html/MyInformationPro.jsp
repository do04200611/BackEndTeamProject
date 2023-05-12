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

	String userID = request.getParameter("userID");
	String userPassword = request.getParameter("userPassword");
	String userEmail = request.getParameter("userEmail");
	String userGender = request.getParameter("userGender");

	//1. DB 연동 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. 연결 객체 생성
	String url = "jdbc:mariadb://localhost:3306/gildongdb";
	String user = "root";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);

	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "UPDATE membership SET userPassword=?, userEmail = ? ,userGender = ? WHERE userID=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, userPassword);
	pstmt.setString(2, userEmail);
	pstmt.setString(3, userGender);
	pstmt.setString(4, userID);
	
	//4. SQL 실행
	int i = pstmt.executeUpdate();
	response.sendRedirect("MemberManagementBulletinBoard.jsp");
	//5. 객체 해제
	pstmt.close();
	con.close();
	%>

	<script>
		let ans = alert("변경되었습니다!");
		if (!ans){
			location.href='Homepage.jsp';
		}
	</script>