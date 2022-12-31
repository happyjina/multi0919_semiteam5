<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="${path}/resources/css/exhibition.css">
<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
<main class="page-wrapper">

 <!--배경-->
         <section>
          <div class="index-mid" style="background-image: url(${path}/resources/img/back.JPG);">
        <!-- 헤더 네비 아래 특별전시 창-->
      
  <!-- Swiper -->
  <div class="swiper mySwiperExhibition">
    <!-- <h1 class="exhibitionTitle">특별전시</h1> -->
    <div class="swiper-wrapper">
      <div class="swiper-slide" style="width: 100%; height: 400px;"><a href="#"><img src="${path}/resources/img/exhibitionNav.png" class="exhibitionNav"></a></div>
      <div class="swiper-slide" style="width: 100%; height: 400px;"><a href="#"><img src="${path}/resources/img/exhibitionNav02.jpg" class="exhibitionNav"></a></div>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </div>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiperExhibition", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>


<!--홈버튼 가이드-->
<div class="home-mu">
  <nav aria-label="breadcrumb">
       <!--breadcrumb-->
       <ol id="bc2" class="breadcrumb">
        <li class="breadcrumb-item doing">
          <a href="index.html">
            <i class="ai-home fs-base me-2"></i>
            Home
          </a>
        </li>
        <li class="breadcrumb-item"><a href="exhibition.html">특변전시</a></li>
        <li class="breadcrumb-item"><a href="ex_detail.html">현재전시</a></li>
        <li class="breadcrumb-item active" aria-current="page" id="exName" name="exName">전시명</li>
      </ol>
  </nav>
</div>

<!--검색창-->
<!-- select -option 변경하는 방법 알아보기!!!!!!!!!!!!! -->
<div class="exhibitionSearch">
<div class="input-group">
    <select  class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
    <div class="dropdown-menu my-1">
      <option class="dropdown-item" value="현재 전시">현재 전시</option>
      <option class="dropdown-item" value="예정 전시">예정 전시</option>
    </div>
  </select>
    <input type="text" class="form-control" placeholder="찾고 싶은 전시를 입력하세요">

    <select  class="btn category dropdown-toggle" data-bs-toggle="dropdown" >
      <div class="dropdown-menu my-2">
        <option class="dropdown-item" value="카테고리">카테고리</option>
        <option class="dropdown-item" value="전시명">전시명</option>
        <option class="dropdown-item" value="박물관명">박물관명</option>
      </div>
    </select>
    <button type="submit" class="btn btn-primary">검색</button>
  </div>
</div>


<!--현재 진행중인 전시-->
<div class="exhibitionNow">
<div class="nowTitle">
  <span class="nowT">현재 진행중인 전시</span>
  <span class="nowM"><a href="#">더보기 ></a></span>
</div>




<!--진행예정 포스터-->
<div class="nowPosterContainer">
  <!--전시1-->
<div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition01.JPG" id="exUrl">
<p id="exMuseName">국립중앙박물관</p>
<h5 id="exName">영원한 삶의 집, 아스타나 고분</h5>
<p>2022-07-16~2023-07-15</p>
</a>
</div>
<!--전시2-->
<div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition07.JPG" id="exUrl">
  <p id="exMuseName">국립중앙박물관</p>
  <h5 id="exName">일본 불교조각의 세계</h5>
  <p id="exStartDate">2022-04-05~2023-10-09</p>
  <!-- <p id="exEndDate"></p> -->
</a>
</div>
<!--전시3-->
<div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition04.JPG" id="exUrl">
  <p id="exMuseName">국립중앙박물관</p>
  <h5  id="exName">귀얄과 분장의 묘미</h5>
  <p id="exStartDate">2022-12-09~2023-08-31</p>
</a></div>
<!--전시4-->
<div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition06.JPG" id="exUrl">
  <p id="exMuseName">국립중앙박물관</p>
  <h5 id="exName">합스부르크 600년, 매혹의 걸작들</h5>
  <p id="exStartDate">2022-10-25~2023-03-01</p>
</a></div>

</div>

</div>

<!--진행 예정 전시-->
<div class="upComming">
  <div class="nowTitle">
    <span class="nowT">진행 예정 전시</span>
    <span class="nowM"><a href="#">더보기 ></a></span>
  </div>

  <div class="nowPosterContainer">
    <!--전시1-->
  <div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition09.jpg">
  <p id="exMuseName">국립대구박물관</p>
  <h5  id="exName">영남의 명찰순례, 팔공산 은해사</h5>
  <p id="exStartDate">2023-01-09</p>
  </a>
  </div>
  <!--전시2-->
  <div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition02.JPG">
    <p id="exMuseName">국립중앙박물관</p>
    <h5  id="exName">메소포타미아, 저 기록의 땅</h5>
    <p id="exStartDate">2022-12-26</p>
  </a>
  </div>
  <!--전시3-->
  <div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition03.JPG">
    <p id="exMuseName">국립중앙박물관</p>
    <h5  id="exName">대한제국 첫 궁중 연회</h5>
    <p id="exStartDate">2022-12-26</p>
  </a></div>
  <!--전시4-->
  <div class="nowPoster"><a href="#"><img src="${path}/resources/img/exhibition05.JPG">
    <p id="exMuseName">국립중앙박물관</p>
    <h5  id="exName">외규장각 의궤, 그 고귀함의 의미</h5>
    <p>2023-01-16</p>
  </a id="exStartDate"></div>
 
  </div>
</div>
<br>
<!--배경끝-->
</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>