<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
	<link rel="stylesheet" href="../CSS/QuestionAndAnswer.css">
	<link rel="stylesheet" href="../CSS/Menubar.css">
	<link rel="stylesheet" href="../CSS/VerticalMenubar.css">
	<link rel="stylesheet" href="../CSS/UpponMenubar.css">
	<link rel="stylesheet" href="../../CSS/custom.css">
	<link rel="stylesheet" href="../../CSS/bootstrap.css">
	<meta charset="UTF-8" name="viewport" 
		  content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
	<title>Forest</title>
	<script type="text/javascript">
	window.onload = () => {
		  // panel-faq-container
		  const panelFaqContainer = document.querySelectorAll(".panel-faq-container"); // NodeList 객체
		  
		  // panel-faq-answer
		  let panelFaqAnswer = document.querySelectorAll(".panel-faq-answer");

		  // btn-all-close
		  const btnAllClose = document.querySelector("#btn-all-close");
		  
		  // 반복문 순회하면서 해당 FAQ제목 클릭시 콜백 처리
		  for( let i=0; i < panelFaqContainer.length; i++ ) {
		    panelFaqContainer[i].addEventListener('click', function() { // 클릭시 처리할 일
		      // FAQ 제목 클릭시 -> 본문이 보이게끔 -> active 클래스 추가
		      panelFaqAnswer[i].classList.toggle('active');
		    });
		  };
		  
		  btnAllClose.addEventListener('click', function() {
		    // 버튼 클릭시 처리할 일  
		    for(let i=0; i < panelFaqAnswer.length; i++) {
		        panelFaqAnswer[i].classList.remove('active');
		    };
		  });
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
				<a class="navbar-brand" href="HomePage.jsp">
				<img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
			</div>
			<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav ">
					<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
					<li><a href="MemberManagementBulletinBoard.jsp">게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="productreview/ProductReviewList.jsp">상품 후기</a></li>
						<li><a href="QuestionAndAnswer.jsp">자주묻는 질문</a></li>
						<li><a href="Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
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
	<!-- 세로 메뉴바 -->
	<ul>
	  <li><a class="vertical" href="notice/NoticeList.jsp">공지사항</a></li>
	  <li><a class="vertical" href="Request/RequestList.jsp">답변 게시판</a></li>
	  <li><a class="vertical" href="QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	  <li><a class="vertical" href="productreview/ProductReviewList.jsp">상품 후기</a></li>
	  <li><a class="vertical" href="PurchasePage.jsp">구매 페이지</a></li>
	</ul>
	<!--상단 메뉴바 -->
	<nav class="upponmenubarnav" >
	  <ul class="upponmenubarul">
	    <li class="upponmenubardetail"><a href="Request/RequestList.jsp">답변 게시판</a></li>
	    <li class="upponmenubardetail"><a href="QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	    <li class="upponmenubardetail"><a href="productreview/ProductReviewList.jsp">상품 후기</a></li>
	    <li class="upponmenubardetail" ><a href="notice/NoticeList.jsp">공지사항</a></li>
	  </ul>
	</nav>
	<!-- 회원 명단을 표로 구현 한 부분 -->
	<div class="container">
    <h3 style="text-align: center; padding-top: 50px;">
      FAQ
      <small class="text-muted">with faded secondary text</small>
    </h3>
    <br>
    <table class="table table-bordered table-striped table-dark table-hover">
      <caption>FAQ List of Articles</caption>
      <thead class="thead-light text-center">
        <tr>
          <th>No</th>
          <th>FAQ Title</th>
          <th>Category</th>
          <th>Date</th>
          <th>Hit</th>
        </tr>
      </thead>
      <tbody class="text-center">
        <tr>
          <td>1</td>
          <td class="text-left" width="50%">
            <div class="panel-faq-container">
              <p class="panel-faq-title">로그인은 어떻게 하나요?</p>
              <div class="panel-faq-answer">
                <p>Answer (1) ... ↓</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                  laborum.</p>
              </div>
            </div>
          </td>
          <td>이용안내</td>
          <td>2032.01.01</td>
          <td>84</td>
        </tr>
        <tr>
          <td>2</td>
          <td class="text-left" width="50%">
            <div class="panel-faq-container">
              <p class="panel-faq-title">물건 구매는 어떻게 하나요?</p>
              <div class="panel-faq-answer">
                <p>Answer (2) ... ↓</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                  laborum.</p>
              </div>
            </div>
          </td>
          <td>회원가입</td>
          <td>2032.02.02</td>
          <td>114</td>
        </tr>
        <tr>
          <td>3</td>
          <td class="text-left" width="50%">
            <div class="panel-faq-container">
              <p class="panel-faq-title">배송은 언제 되나요?</p>
              <div class="panel-faq-answer">
                <p>Answer (3) ... ↓</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                  laborum.</p>
              </div>
            </div>
          </td>
          <td>결제관련</td>
          <td>2032.03.03</td>
          <td>98</td>
        </tr>
        <tr>
          <td>4</td>
          <td class="text-left" width="50%">
            <div class="panel-faq-container">
              <p class="panel-faq-title">환불은 어떻게 하나요</p>
              <div class="panel-faq-answer">
                <p>Answer (4) ... ↓</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                  laborum.</p>
              </div>
            </div>
          </td>
          <td>이용안내</td>
          <td>2032.04.04</td>
          <td>43</td>
        </tr>
        <tr>
          <td>5</td>
          <td class="text-left" width="50%">
            <div class="panel-faq-container">
              <p class="panel-faq-title">The standard Lorem Ipsum passage, used since the 1500s</p>
              <div class="panel-faq-answer">
                <p>Answer (5) ... ↓</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                  laborum.</p>
              </div>
            </div>
          </td>
          <td>배송관련</td>
          <td>2032.05.05</td>
          <td>90</td>
        </tr>
        <tr class="bg-info">
          <td colspan=4 class="text-left">자주 묻는 질문 총 합계</td>
          <td>429</td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>