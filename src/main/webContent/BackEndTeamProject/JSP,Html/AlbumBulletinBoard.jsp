<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 등록</title>
 
<link rel="stylesheet" href="<%=cp %>/imageTest/css/style.css" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<link rel="stylesheet" href="../CSS/Menubar.css">
<link rel="stylesheet" href="../CSS/BrandMark.css">
<script type="text/javascript" src="<%=cp%>/imageTest/data/image.js"></script>
<script type="text/javascript">
	function sendIt() {
		
	    f = document.myForm;
	    
	    str = f.subject.value;
	    str = str.trim();
	    if(!str) {
	        alert("제목을 입력하세요 !!!");
	        f.subject.focus();
	        return;
	    }
	    f.subject.value = str;
	
	    str = f.uploadFile.value;
	    if(!str) {
	        alert("이미지 파일을 선택 하세요 !!!");
	        f.uploadFile.focus();
	        return;
	    }
	    
	    f.action="/study/image/write_ok.do";
	    f.submit();
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
			<a class="navbar-brand" href="HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="MemberManagementBulletinBoard.jsp">게시판</a></li>
			</ul>		
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="과제2.jsp">로그인</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<ul>
  <li><a href="#">메뉴 1</a></li>
  <li><a href="#">메뉴 2</a></li>
  <li><a href="#">메뉴 3</a></li>
  <li><a href="#">메뉴 4</a></li>
  <li><a href="#">메뉴 5</a></li>
</ul>
	
	<table class="tg">
		<thead>
		  <tr>
		    <th class="tg-37ca">제목 </th>
		    <th class="tg-ao2g">배송이 늦게 와요</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="tg-37ca">작성자</td>
		    <td class="tg-ao2g">11na***</td>
		  </tr>
		  <tr>
		    <td class="tg-37ca">게시일</td>
		    <td class="tg-ao2g">2023.03.04</td>
		  </tr>
		  <tr>
		    <td class="tg-37ca">조회수</td>
		    <td class="tg-ao2g">100</td>
		  </tr>
		</tbody>
	</table>
		<hr>
			<p class="content">배송이 너무 늦게 옵니다. 
			상담원에게 전화를 해도 어쩔 수 없다고 얘기하고 해서 인력을 고용해서 배송 시간을 단축 시키면 좋겠습니다.</p>
			<p class="content">화가 매우 나니 정중한 사과도 요구합니다.</p>
		<hr>
            <input type="button" value="댓글" class="comment"/>
            <a href="Request.jsp"><input class="addbutton" type="button" value="목록"></a>
		<br/><br/>
		<table width="600" border="2" cellpadding="0" cellspacing="0"
		bordercolor="#d6d4a6" align="center">
		 
		<tr height="40">
		   <td style="padding-left: 20px;">
		   <b>이미지 게시판</b>
		   </td>
		</tr>   
		</table>
		 
	<form action="<%=cp%>/image/write_ok.do" method="post" enctype="multipart/form-data">
		<table width="600" border="0" cellspacing="0" align="center">
			<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
	   	<tr>
	      <td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	      제&nbsp;&nbsp;&nbsp;목
	      </td>
	      <td width="460" style="padding-left: 10px;">
	      <input type="text" name="subject" size="35" maxlength="20" class="boxTF"/>
	      </td>
	   </tr>
   
	   <tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
	   
	   <tr>
	      	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	     	 파&nbsp;&nbsp;&nbsp;일
	      	</td>
	      	<td width="460" style="padding-left: 10px;">
	      		<input type="file" name="upload" maxlength="100" size="48" class="boxTF"/>
	      	</td>
   		</tr>      
   
   		<tr><td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td></tr>   
   		</table>
 
   		<table width="600" border="0" cellpadding="0" cellspacing="3" align="center">
   			<tr align="center">
      			<td height="40">
      			<!-- mailSend(); -> mail.js에 있다. -->
	      		
	      			<a href="BulletinBoard.jsp">
	      			<input type="submit" value="등록하기" class="btn2"></a>
				   	<input type="reset" value="다시입력" class="btn2"
				     onclick="document.myForm.senderName.focus();"/>
				     <a href="BulletinBoard.jsp">
				    <input type="reset" value="작성취소" class="btn2"
				     onclick="javascript:location.href='<%=cp%>/image/list.do';">
	      			</a>
		      </td>
	      </tr>
		</table>
				</form>
 
	</body>
</html>