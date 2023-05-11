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
    import ="java.sql.*" %>
    
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
	String passwd	= "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);

	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "INSERT INTO membership(userID,userPassword,userEmail,userGender) VALUES(?,?,?,?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, userID);
	pstmt.setString(2, userPassword);
	pstmt.setString(3, userEmail);
	pstmt.setString(4, userGender);
	
	//4. SQL 실행
	int i = pstmt.executeUpdate();
	
	//5. 객체 해제
	pstmt.close();
	con.close();
	
	
	response.sendRedirect("MemberManagementBulletinBoard.jsp");
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		alert('가입이 완료되었습니다.');
		window.close();
	</script>
</head>
<body>
	<%=i %>행이 입력되었습니다!
</body>
</html>