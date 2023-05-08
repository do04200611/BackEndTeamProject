<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- index.jsp -->

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
  <title>행과 열을 가진 표</title>
  <style>
    html,body {
  font-family: Helvetica, Arial, sans-serif;
  margin: 0;
}
.panel-faq-container {
  margin-bottom: -16px;
}
.panel-faq-title {
  color: #00eaea;
  cursor: pointer;
}
.panel-faq-answer {
  height: 0;
  overflow: hidden;
  /* 변화가 시작되는 쪽에다가 transition 적용해준다 0 -> 300px 
  왜? 닫기 버튼을 누를 때 변화가 티남 */
  transition: all 1s;
}
#btn-all-close {
  margin-bottom: 10px;
  background-color: #726996;
  border: none;
  color: #fff;
  cursor: pointer;
  padding: 10px 25px;
  float: right;
}
#btn-all-close:hover {
  background-color: yellow;
  color: #000;
  transition: all 0.35s;
}
.active {
  display: block;
  /* 높이를 정해줘야지만 transition이 적용됨 */
  height: 90px;
  }
  </style>
  <script>
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
  <div class="container">
    <h3 style="text-align: center; padding-top: 50px;">
      FAQ
      <small class="text-muted">with faded secondary text</small>
    </h3>
    <button id="btn-all-close">FAQ ALL Close</button>
    <br>
    <table class="table table-bordered table-striped table-dark table-hover">
      <caption>FAQ List of Articles</caption>
      <thead class="thead-light text-center">
        <tr>
          <th>FAQ Title</th>
        </tr>
      </thead>
      <tbody class="text-center">
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">로그인 하지 않았는데, 자동으로 로그인 됩니다.</p>
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
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">배송은 언제 되나요?</p>
              <div class="panel-faq-answer">
                <p>새로운 환경에서 여러 번 로그인을 실패하면 고객님의 개인정보를 보호하기 위해 당일 밤 12시까지 로그인이 제한됩니다.
                   다음 날 0시 이후 다시 로그인을 시도할 수 있습니다. 만약, 본인이 로그인을 시도한 것이 아니라면 
                   쿠팡 고객센터로 문의해 주시기 바랍니다.</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">Where can I get some?</p>
              <div class="panel-faq-answer">
                <p>Answer (4) ... ↓</p>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td class="text-left">
            <div class="panel-faq-container">
              <p class="panel-faq-title">The standard Lorem Ipsum passage, used since the 1500s</p>
              <div class="panel-faq-answer">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur.</p>
              </div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>
	