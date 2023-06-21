<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forest</title>
	 
		<link rel="stylesheet" href="<%=cp %>/imageTest/css/style.css" type="text/css" />
		<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
		<link rel="stylesheet" href="../../CSS/Menubar.css">
		<link rel="stylesheet" href="../../CSS/BrandMark.css">
		<link rel="stylesheet" href="../../CSS/Notice/NoticeWrite.css">
	
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
			<a class="navbar-brand" href="../HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
					
			 <ul class="nav navbar-nav ">
				<li><a href="../MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="../notice/NoticeList.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게시판
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
						<li><a href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주묻는 질문</a></li>
						<li><a href="../Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="../notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
			</ul>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active">
							<a href="../Login.jsp">로그인</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	 <!-- 게시판 글 등록 -->
		<form method="post" action="writeAction.jsp">
				<table class="bulletinwrite" >
					<thead>
						<tr>
							<th class="bulletinboardtitle" colspan="2" style="background-color: #eeeeee; 
								text-align: center;"> 공지사항 게시판 글쓰기
							</th>
						</tr>
					</thead>
					<tbody>
					<tr>
							<td>
								<input type="text" class="form-control" placeholder="숫자" name="id" 
								maxlength="50" value="${ dto.getId()}" >
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" placeholder="작성자" name="writer" 
								maxlength="50"  value="${dto.getWriter()}">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" placeholder="글 제목" name="title" 
								maxlength="50" value="${dto.getTitle()}">
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용" name="content" 
								 maxlength="2048" style="height: 350px;" value="${dto.getContent()}">
							</textarea>
							</td>
							
						</tr>
					</tbody>
				</table>
			</form>	
            <div class="imageplus">
            	<br/><br/>
	 <table width="1000" border="2" cellpadding="0" cellspacing="0"
		bordercolor="#d6d4a6" align="center">
		 <!-- 이미지 등록 창 -->
		<tr  height="40">
		   <td style="padding-left: 20px;">
		   <b>이미지 게시판</b>
		   </td>
		</tr>   
		</table>
		 
	<form action="<%=cp%>/image/write_ok.do" method="post" enctype="multipart/form-data"></form>
	
		<table width="1000" border="0" cellspacing="0" align="center">
			<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
	   	<tr>
	      <td width="1000" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	      제&nbsp;&nbsp;&nbsp;목
	      </td>
	      <td width="560" style="padding-left: 10px;">
	      <input type="text" name="subject" size="35" maxlength="20" class="boxTF"/>
	      </td>
	   </tr>
   
	   <tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
	   
	   <tr>
	      	<td width="1000" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	     	 파&nbsp;&nbsp;&nbsp;일
	      	</td>
	      	<td width="1000" style="padding-left: 10px;">
	      		<input type="file" name="upload" maxlength="100" size="48" class="filebutton"/>
	      	</td>
   		</tr>      
   
   		<tr><td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td></tr>   
   		</table>
   		
 
   		<table width="1000" border="0" cellpadding="0" cellspacing="3" align="center">
   			<tr align="center">
      			<td height="40">
      			<!-- mailSend(); -> mail.js에 있다. --> 			
		      </td>
	      </tr>
		</table>	
				</div>
           		<div>	
	      			<a href="NoticeList.jsp">
	      				<input type="submit" id="writebutton" class="btn btn-primary form-control" value="변경하기">	
					    <input type="submit" id="writecancelbutton" class="btn btn-primary form-control" value="작성취소">
	      			</a>
				</div>			
			
 
	</body>
</html>