<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />



<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!--body stylesheet-->
<link rel="stylesheet" href="${path}/resources/css/exDesc.css">
<!--부트스트랩 아이콘-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<main class="page-wrapper">


	<!--section-->
	<br /> <br /> <br /> <br />
	<section class="body">
		<!--홈버튼 가이드-->
		<div class="home-mu">
			<nav aria-label="breadcrumb">
				<!--breadcrumb-->
				<ol id="bc2" class="breadcrumb">
					<li class="breadcrumb-item doing"><a href="index.html"> <i
							class="ai-home fs-base me-2"></i> Home
					</a></li>
					<li class="breadcrumb-item"><a href="exhibition.html">특별전시</a></li>
					<li class="breadcrumb-item"><a href="ex_detail.html">현재전시</a></li>
					<li class="breadcrumb-item active" aria-current="page" id="exName"
						name="exName">전시명</li>
				</ol>
			</nav>
		</div>

		<!--특별 전시 상세내용-->
		<div class="exDesc-up">
			<div class="exDesc-up-left">
				<h4 class="exDesc-up-text">exName</h4>
				<div class="exDesc-image">
					<img src="${path}/resources/img/exDescimgex.jpg" width="600px" />
				</div>
			</div>
			<div class="exDesc-up-right">
				<table class="exDesc-up-table">
					<tr class="exDesc-up-table-tr">
						<th>전시</th>
						<td class="exDesc-up-table-td">exName</td>
					</tr>
					<tr class="exDesc-up-table-tr">
						<th>위치</th>
						<td class="exDesc-up-table-td">exMuseName</td>
					</tr>
					<tr class="exDesc-up-table-tr">
						<th>전시기간</th>
						<td class="exDesc-up-table-td">exStartDate ~ exEndDate</td>
					</tr>
					<tr class="exDesc-up-table-tr1">
						<th>평일 관람시간</th>
						<td class="exDesc-up-table-td">exWeekOpen ~ exWeekClose</td>
					</tr>
					<tr class="exDesc-up-table-tr">
						<th>공휴일 관람시간&nbsp;&nbsp;</th>
						<td class="exDesc-up-table-td">exHolidayOpen ~ exHolidayClose</td>
					</tr>
					<tr class="exDesc-up-table-tr">
						<th>문의</th>
						<td class="exDesc-up-table-td"><i class="bi bi-telephone">exContactNum</i></td>
					</tr>
					<tr class="exDesc-up-table-tr">
						<th>관람료</th>
						<td class="exDesc-up-table-td">exCharge</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="exDesc-down">
			<h4 class="exDesc-down-text-first">ABOUT</h4>
			<h4 class="exDesc-down-text-second">전시 요약</h4>
			<div class="exDesc-down-explain">
				<div class="exDesc-down-explain-text">
					<p>
						2022년 부산박물관 특별기획전의 첫 문을 여는
						<치유의 시간, 부처를 만나다>입니다. 난생처음 겪어보는 질병의 대유행으로 상처받고, 웅크려있던 마음을
						불교의 세계관을 통해 치유 받고, 희망과 도약을 기원하고자 준비하였습니다. 
					</p>
					<br />
					<p>
						▲1부
						<佛像 , 부처님의 참모습>에서는 통일신라 불교미술의 수작으로 손꼽히는 국보 <금동보살입상>과
						이색적인 형태의 고려시대 불교 조각의 아름다움을 살펴봅니다. 특히 우리나라 초상 조각의 정수인 국보 <희랑대사좌상>을
						통해 고려시대 문화상을 이해할 수 있습니다. 부산광역시 유형문화재로 지정된 조선시대 불상을 통해서는 조선 후기 조각승
						계보를 이해하고, 친숙하면서도 자비로운 부처님의 참모습을 만날 수 있습니다. 
					</p>
					​<br />
					<p>
						▲2부
						<佛腹藏 , 염원의 시간>에서는 복장물을 소개합니다. 복장물이란, 불상을 만들 때 가슴에 넣는 신성한 물건을
						말합니다. 불복장의 시원이 되는 <산청 석남암사지 석조비로자나불 납석제사리호>를 시작으로 고려, 조선시대
						불복장 유형과 안립 의식을 확인할 수 있습니다. 불상에 넣는 물건들은『조상경』에 근거하여 정형화된 안립 물건들이 정해져
						있습니다. 하지만 그 물건들을 시주하고, 발원하는 이유는 저마다의 사정과 염원이 있습니다. 그 간절한 바람을 이해하고
						공감하는 자리가 될 것입니다. 
					</p>
					​<br />
					<p>
						▲3부
						<佛畫와 寫經, 진리의 세계>에는 불심佛心의 절정이 담긴 불화와 사경을 조명하였습니다. 50여 점밖에 남지
						않은 고려불화 중 명작으로 꼽히는 <수월관음도>와 <나한도>를 통해 고려인들의 불교 신앙과
						호국 사상 등을 이해할 수 있습니다. 
					</p>
					<p>조선시대 불화를 통해서는 불교의 세계관으로 고난과 역경을 이겨내려는 조선시대 사람들을 가치관을 확인할 수
						있습니다. 사경이란, 부처님의 말씀[경전]을 필사하는 것입니다. 고려시대 사람들은 금과 은으로 화려하게 장식하면서
						공덕을 쌓는다고 생각하였습니다. 비싼 비용과 오랜 시간에 걸쳐 경전을 옮겨 적는 노력에 담긴 그들의 바람을 살펴봅니다.</p>
					​<br />
					<p>
						▲4부
						<부산 불교미술의 거두, 玩虎스님>에서는 조선시대 불교미술의 명맥을 이어온 완호스님의 작품을 조명하는 자리를
						마련했습니다. 완호는 불교미술의 전통을 이어올 뿐만 아니라 많은 제자들을 양성하여 불교미술의 맥이 현대 영남 지방까지
						이어질 수 있도록 기여했습니다. 또한 규제와 감시가 극심한 일제강점기에도 완호는 서명에 일본 연호를 사용하지 않는 등
						굳센 항일 의지를 나타내었습니다. 
					</p>
					<br />
					<p>이번 전시에서 마주한 부처님의 미소와 자비가 새로운 일상으로의 도약에 치유의 시간이 되기를 바랍니다.</p>
					<br />
				</div>
			</div>
		</div>

		<!--현재 진행중인 전시-->
		<div class="exhibitionNow">
			<div class="nowTitle">
				<span class="nowT">현재 진행중인 전시</span> <span class="nowM"><a
					href="ex_detail.html">더보기 ></a></span>
			</div>
			<!--진행예정 포스터-->
			<div class="nowPosterContainer">
				<!--전시1-->
				<div class="nowPoster">
					<a href="#"><img src="${path}/resources/img/exhibition01.JPG">
						<p>exMuseName</p>
						<h5>exName</h5>
						<p>exStartDate ~ exEndDate</p> </a>
				</div>
				<!--전시2-->
				<div class="nowPoster">
					<a href="#"><img src="${path}/resources/img/exhibition07.JPG">
						<p>exMuseName</p>
						<h5>exName</h5>
						<p>exStartDate ~ exEndDate</p> </a>
				</div>
				<!--전시3-->
				<div class="nowPoster">
					<a href="#"><img src="${path}/resources/img/exhibition04.JPG">
						<p>exMuseName</p>
						<h5>exName</h5>
						<p>exStartDate ~ exEndDate</p> </a>
				</div>
				<!--전시4-->
				<div class="nowPoster">
					<a href="#"><img src="${path}/resources/img/exhibition06.JPG">
						<p>exMuseName</p>
						<h5>exName</h5>
						<p>exStartDate ~ exEndDate</p> </a>
				</div>

			</div>
	</section>

</main>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
