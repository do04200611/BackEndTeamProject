<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <!-- CSS 및 Bootstrap 스타일시트 -->
	<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
	<link rel="stylesheet" href="../../CSS/QuestionAndAnswer.css">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
	<link rel="stylesheet" href="../../CSS/UpponMenubar.css">
	<link rel="stylesheet" href="../../../CSS/custom.css">
	<link rel="stylesheet" href="../../../CSS/bootstrap.css">
	<link rel="stylesheet" href="../../CSS/FrequentlyAskedQuestionBoard/FrequentlyAskedQuestionBoard.css">
	  <!-- Viewport 메타 태그 -->
	<meta charset="UTF-8" name="viewport" 
		  content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	 
	<title>Forest</title>
	 <!-- JavaScript 코드 -->
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
<!-- 네비게이션 바 -->
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
				<img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
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
						<li><a href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주묻는 질문</a></li>
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
							<li class="active"><a href="../Login.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
	</nav>
	<!-- 세로 메뉴바 -->
	<ul>
	  <li><a class="vertical" href="../notice/NoticeList.jsp">공지사항</a></li>
	  <li><a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a></li>
	  <li><a class="vertical" href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주 묻는 질문</a></li>
	  <li><a class="vertical" href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
	</ul>
	<!--상단 메뉴바 -->
	<nav class="upponmenubarnav" >
	  <ul class="upponmenubarul">
	    <li class="upponmenubardetail"><a href="../Request/RequestList.jsp">답변 게시판</a></li>
	    <li class="upponmenubardetail"><a href="../QuestionAndAnswer/QuestionAndAnswerlogin.jsp">자주 묻는 질문</a></li>
	    <li class="upponmenubardetail"><a href="../productreview/ProductReviewList.jsp">상품 후기</a></li>
	    <li class="upponmenubardetail" ><a href="../notice/NoticeList.jsp">공지사항</a></li>
	  </ul>
	</nav>

	
	<!-- 회원 명단을 표로 구현 한 부분 -->
	<div class="container">
    <h3 style="text-align: center; padding-top: 50px;">
      Forest
      <small class="text-muted">자주 묻는 질문 게시판</small>
    </h3>
    <button id="btn-all-close">FAQ ALL Close</button>
    <br>
    <table class="table table-bordered table-striped table-dark table-hover">
      <caption>자주 묻는 질문 게시판</caption>
      <thead class="thead-light text-center">
        <tr>
          <th style="text-align: center;">FAQ Title</th>
        </tr>
      </thead>
      <tbody class="text-center">
        <tr>
          <td class="text-left" >
            <div class="panel-faq-container">
              <p class="panel-faq-title" >로그인 하지 않았는데, 자동으로 로그인 됩니다.</p>
              <div class="panel-faq-answer">
                <p>	
					로그인 창에서 '자동 로그인'을 체크한 경우 아이디(이메일)과 비밀번호를 입력하지 않아도 로그인 상태가 유지됩니다. 
					'자동 로그인' 기능을 원치 않는 경우에는 로그아웃 후, 로그인 창에서 '자동로그인' 체크 해제를 해주시면 됩니다. </p>
                <p>※ 개인정보보호를 위해 여러 사람이 함께 사용하는 공용 PC, 모바일에서는 사용을 제한해 주시기 바랍니다.</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">[본인인증] 로그인 시 여러 번 인증 실패로 새로운 환경에서 이용이 불가합니다.</p>
              <div class="panel-faq-answer">
                <p>새로운 환경에서 여러 번 로그인을 실패하면 고객님의 개인정보를 보호하기 위해 당일 밤 12시까지 로그인이 제한됩니다.
                   다음 날 0시 이후 다시 로그인을 시도할 수 있습니다. 만약, 본인이 로그인을 시도한 것이 아니라면 
                   쿠팡 고객센터로 문의해 주시기 바랍니다.</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left" >
            <div class="panel-faq-container">
              <p class="panel-faq-title">[본인인증] 로그인을 할 때 왜 휴대폰/이메일 본인 인증을 해야 하나요?</p>
              <div class="panel-faq-answer" style="overflow: scroll;">
                <p>	
					로그인을 할 때 본인 인증을 하면 새로운 환경에서의 접속을 알 수 있어 고객님의 개인정보를 보호할 수 있습니다. 
					본인 인증번호는 휴대폰 문자 또는 이메일로 전송됩니다. 
					만약 인증 요청 후 인증번호를 받지 못하셨다면, 아래의 내용을 확인해 주시기 바랍니다.</p>

 
				<p>휴대폰 인증 후 문자를 못 받은 경우</p>
				<p>본인의 휴대폰에서 아래의 전화번호가 수신거부 되어있는지 확인 후 해제해 주시기 바랍니다.</p>
				<p>• 쿠팡 고객센터 전화번호 : 1577-7011</p>
				<p>• 한국모바일인증 전화번호 : 02-2033-8500</p>	
				<p>이메일 인증 후 메일을 못 받은 경우</p>
				<p>본인의 이메일에서 아래의 메일주소가 스팸처리 되어있는지 확인 후 해제해 주시기 바랍니다.</p>
				<p>• noreply@coupang.com</p>
				<p>• noreply@e.coupang.com </p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">[회원정보] 광고성 이메일과 문자를 받지 않으려면 어떻게 하나요?</p>
              <div class="panel-faq-answer" style="overflow: scroll;">
                <p>마이쿠팡에서 광고성 정보 수신 동의를 철회하시면 됩니다. 수신 동의 철회 후 약 2~3일 뒤부터 광고성 이메일과 문자가 발송되지 않습니다. 
					단, 구매 정보 및 서비스 정책 변경 등의 정보성 안내 메일은 수신 동의 철회와 무관하게 발송됩니다.</p>
                <p>광고성 이메일/문자 수신 거부하기</p>
                <p>마이쿠팡 → MY정보 → 비밀번호 입력 → 광고성 정보 수신 OFF → [동의 철회] 클릭</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left" >
            <div class="panel-faq-container">
              <p class="panel-faq-title">[forest] forest의 탈퇴/해지는 어떻게 하나요?</p>
              <div class="panel-faq-answer">
                <p>쿠팡플레이는 와우 멤버십을 해지하면 자동으로 함께 해지됩니다. 
                   쿠팡플레이 해지 후 5일이 지나면 기존의 프로필, 시청기록 등 모든 정보가 소멸되니 재가입 시 유의 부탁드립니다.</p>
                <p>와우 멤버십 해지하기 마이쿠팡 → 해지하기</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">[보호조치] 보호조치가 무엇인가요? 그리고 보호조치가 되면 어떻게 해야 하나요?</p>
              <div class="panel-faq-answer" style="overflow: scroll;">
                <p>보호조치란 고객님의 쿠팡 계정 정보가 개인정보 판매사이트 등 안전하지 않은 타 사이트에 노출된 것으로 감지되면, 
                   고객님의 개인정보를 보호하고 도용으로 인한 피해를 예방하고자 일시적으로 계정을 잠금
                   처리하고 로그인된 모든 기기에서 로그아웃시키는 일련의 조치를 의미합니다.</p>
                <p>보호조치가 적용된 경우 '보호조치 해제' 버튼을 클릭한 후 간단한 본인인증 절차를 거쳐 비밀번호를 변경하시면, 
                   다시 정상적으로 로그인할 수 있습니다. 본인인증 절차는 쿠팡 계정에 등록된 본인 명의의 휴대폰을 통해 진행할 수 있습니다.</p>
              </div>
            </div>
          </td>
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