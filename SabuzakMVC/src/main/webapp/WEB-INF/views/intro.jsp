<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="${path}/resources/css/theme.css">
<link rel="stylesheet" href="${path}/resources/css/intro.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Page wrapper-->
    
    <main class="page-wrapper">


<section class="sectionbody" >
<!--사부작 설명-->
<div class="intro"   style="background-image: url(${path}/resources/img/back1.JPG);">
<div class="intro-up">
<section class="intro-tit">
  <div class="jarallax min-vh-40 py-4" data-jarallax data-type="scroll-opacity" data-speed="0.7">
  <div class="title-intro"><img src="${path}/resources/img/sabuzak_logo_black.png" width="70px" height="50px"/><h3>사부작</h3> </div>
  <p><b>어디서든 편하게 역사와 문화를 한 눈에 즐길 수 있는 사부작에 오신 것을 환영합니다.</b></p>
</section>
  <ul class="subtitle1">
    <li class="subtitle1-1">
  <div class="title-subtitle"><h5>유물 관람의 편의성을 제공하는 사부작</h5>
    <div class="subtitle-text">
    <div class="small">'사부작거리다': 별로 힘들이지 않고 가볍게 행동하다.</div>
    <p>저희 사부작은 '사부작거리다'의 사전적<br/>의미에 맞게 보는 이들께 편한<br/>유물 관람을 도와드립니다.</p>
  </div>
</div>
</li>
<li class="subtitle1-2">
  <div class="title-subtitle"><h5>언제 어디서든 유물 관람 사이트 사부작</h5>
    <div class="subtitle-text">
    <p>사부작은 박물관 방문과 유물 관람에 대한<br/>진입 장벽을 낮추기 위해 노력하고 있습니다.<br/>언제든 시간과 공간에 구애받지 않고<br/>즐길 수 있는 내 컴퓨터 속 박물관입니다.</p>
  </div>
</div>
</li>
</ul>
<section class="subtitle2" >
  <p><b>앞으로 달려나가는 치열한 삶 속에서 과거를 되돌아보며 휴식을 취해보세요.<br/>
  저희 사부작과 함께 유물과 전시를 보며 역사의 발자취에 따라 사부작 걸어보아요.</b></p>
  </section>
</div>
<!--페이지 설명-->
<br/>
<br/>
<br/>
<br/>
  <section class="card"  >
    <div class="container">
      <div class="row">
        <!-- 박물관 -->
        <div class="card-body-total card-body1 hvr-grow hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-body d-flex align-items-center">
              <div class="w-100">
                <h5 class="card-title"><a  href="museumSearch.html">박물관 정보를 한 눈에</a></h5>
              </div>
            </div>
            <div class="card-img-top overflow-hidden"> <img class="img-fluid" src="${path}/resources/img/back.JPG" alt="박물관 정보를 한 눈에"/><a class="tile-link" href="museumSearch.html"></a>
              <div class="card-img-overlay-bottom z-index-20"></div>
              <div class="card-img-overlay-top text-end"><a class="position-relative z-index-40" > 
                  </svg></a></div>
            </div>
          </div>
        </div>
        <!-- 유물-->
        <div class="card-body-total card-body2 hvr-grow hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-body d-flex align-items-center">
              <div class="w-100">
                <h5 class="card-title"><a href="antiquitySearch.html">유물 정보를 한 눈에</a></h5>
              </div>
            </div>
            <div class="card-img-top overflow-hidden"> <img class="img-fluid" src="${path}/resources/img/back.JPG" alt="유물 정보를 한 눈에"/><a class="tile-link" href="antiquitySearch.html"></a>
              <div class="card-img-overlay-bottom z-index-20"></div>
              <div class="card-img-overlay-top text-end"><a class="position-relative z-index-40"> 
                  </a></div>
            </div>
          </div>
        </div>
        <!-- 특별전시 -->
        <div class="card-body-total card-body1 hvr-grow hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-body d-flex align-items-center">
              <div class="w-100">
                <h5 class="card-title"><a  href="exhibition.html">특별전시를 한 눈에</a></h5>
              </div>
            </div>
            <div class="card-img-top overflow-hidden"> <img class="img-fluid" src="${path}/resources/img/back.JPG" alt="특별전시를 한 눈에"/><a class="tile-link" href="exhibition.html"></a>
              <div class="card-img-overlay-bottom z-index-20"></div>
              <div class="card-img-overlay-top text-end"><a class="position-relative z-index-40"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
            </div>
          </div>
        </div>
        <!-- 온라인전시-->
        <div class="card-body-total card-body2 hvr-grow hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-body d-flex align-items-center">
              <div class="w-100">
                <h5 class="card-title"><a href=".html">온라인 전시를 한 눈에</a></h5>
              </div>
            </div>
            <div class="card-img-top overflow-hidden"> <img class="img-fluid" src="${path}/resources/img/back1.JPG" alt="온라인 전시를 한 눈에"/><a class="tile-link" href=".html"></a>
              <div class="card-img-overlay-bottom z-index-20"></div>
              <div class="card-img-overlay-top text-end"><a class="position-relative z-index-40"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
            </div>
          </div>
        </div>
    </div>
  </section>
</div>

<!--숫자로 보는 사부작 박물관-->
<section class="bottom-num"   style="background-image: url(../img/back1.JPG);">
<div class="statistic" >
  <h4>숫자로 보는 사부작 박물관</h4>
  <div class="small down">2022년 12월 12일 기준</div>
  <div class="number">
  <div class="numofM"><img src="${path}/resources/img/mu.jpg" />
    <h5>540+</h5>
    <h6>전국 박물관 수</h6>
  </div>
  <div class="numofOA"><img src="${path}/resources/img/pngwing.com.png"/>
    <h5>10,341</h5>
    <h6>공개 유물</h6>
  </div>
  <div class="numofMe"><img src="${path}/resources/img/man.jpg" />
    <h5>500,000+</h5>
    <h6>누적 가입자 수</h6>
  </div>
  <div class="numofV"><img src="${path}/resources/img/visit.jpg"/>
    <h5>895,423</h5>
    <h6>일일 방문자</h6>
  </div>
</div>
</div>
</section>

</section>
  </main>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>