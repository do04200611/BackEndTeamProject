<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forest</title>
	<link rel="stylesheet" href="../CSS/HomePage.css">
	<link rel="stylesheet" href="../CSS/Menubar.css">
	<link rel="stylesheet" href="../CSS/BrandMark.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
	<meta charset="UTF-8" name="viewport" 
	  content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
<style type="text/css">

</style>
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
				<li><a href="MyInformation.jsp">나의 정보</a></li>
			</ul>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
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
						<li class="active"><a href="Login.jsp">로그인</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
		
			
				<h1 class="introduce">AI 추천 스마트 쇼핑</h1>
				<p class="introduce">AI가 추천하는 Hot한 상품을 만나보세요 구매 데이터를 학습하고</p>
				<p class="introduce">고객의 구매의도를 파악해 AI모델이 전시한 상품들과 추천하는</p>
				<p class="introduce">AI 추천 스마트 쇼핑</p>
				<h1 class="objectlist">판매량이 급증한 상품 목록</h1>
				<p class="objectintroduce">AI가 선정한 판매량 급증 상품 목록 추천 인기 상품 최근 많이 구매된
					상품을 소개합니다.</p>
		
			<table class="table">
				<thead>
					  <tr>
					    <th class="tablegoodslist">
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/dongseorichisgoods.png" 
					    		id="dongseorichisgoods" class="goodsimage">
					    	</div>
					    </th>
					    <th class="tablegoodslist" colspan="3">
					    	<div class="tablesqure">
						    	<img src="../../images/hompageimage/namyanggoods.png" 
						     	id="namyanggoods" class="goodsimage">
					     	</div>
					    </th>
					  </tr>
				</thead>
				<tbody>
					  <tr>
					    <td>	
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/othernongsimgoods.jpg" value="othernongsimgoods" id="othernongsimgoods" class="goodsimage">
							</div>					    
					    </td>
					    <td>
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/samyanggoods.png"  id="samyanggoods" class="goodsimage">
					    	</div>
					    </td>
					    <td class="tablegoodslist">
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/nongsimgoods.png"  id="nongsimgoods" class="goodsimage">
					    	</div>
					    </td>
					    <td class="tablegoodslist">
					    	<div class="tablesqure">
					    		<img src="../../images/daeseonglifesciencegoods.png"  id="daeseonglifesciencegoods" class="goodsimage">
					    	</div>
					    </td>
					  </tr>
					  <tr>
					    <td class="tablegoodslist">
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/daesangwelllifegoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
				   			</div>
					    </td>
					    <td class="tablegoodslist">
					    	<div class="tablesqure">
					    		<img src="../../images/hompageimage/jwgoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
					    	</div>
					    </td>
				    	<td class="tablegoodslist">
				    		<div class="tablesqure">
					     		<img src="../../images/hompageimage/sweetpotato.png"  id="v" class="goodsimage">
					    	</div>
					    </td>
					    <td class="tablegoodslist">
				    		<div class="tablesqure"><p class="productinpreparation">상품 준비중</p></div>
					    </td>
					  </tr>
					</tbody>
				</table>
			


				
	</body>
</html>
