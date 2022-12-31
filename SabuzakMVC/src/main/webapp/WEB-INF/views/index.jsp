<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <link rel="stylesheet" href="${path}/resources/css/index.css">


      <!--배경-->
      <section>
      <div class="index-mid" style="background-image: url(${path}/resources/img/back.JPG);">
        <!-- 헤더 네비 아래 가운데 큰 배경들-->
        <div>
            <div class="jarallax bg-dark min-vh-40 py-4" data-jarallax data-type="scroll-opacity" data-speed="0.7" style="height: 400px;">
              <div class="jarallax-img"><img src="${path}/resources/img/index.jpg" style="width: 100%; height: 400px;"></div>
              <div class="container position-relative zindex-5 py-sm-4 py-lg-5 mt-4">

                    <h1 class="display-4 text-light text-lowercase pb-sm-2 pb-md-3" style="margin-top: 2%;">사부작에 오신걸 환영합니다</h1>
                    <h3 class="text-light opacity-70 pb-3 pb-md-4 mb-3" style="max-width: 520px;">온라인으로 다양한 유물을 보세요</h3>
                  </div>
                </div>
           </div>
                  
                    <!-- 박물관 유물 검색창  검색창 선택 버튼에서 박물관 유물 선택하면 창에 보이고 싶은데  .....-->
                    <div class="input-group-searchbox" >
                        <!-- Dropdown -->
                        <div class="btn-group dropdown">
                          <!--dropdown-menu my-1-->
                          <select class="btn btn-primary" >
                            <option class="dropdown-item" value="박물관">박물관</option>
                            <option class="dropdown-item" value="유물">유물</option>
                          </select>
                        </div>
                       
                        <input type="text" class="form-control" placeholder="박물관과 유물을 입력하세요">
                        &nbsp;&nbsp;&nbsp;
                        <button type="submit" class="btn btn-primary" >검색</button>
                      </div>
<!------------------------>

                      <!--한눈에 보는 유물-->
    

<div class="swiper mySwiper" style="margin-left: 20%;">
  <div class="mainanti">
  <span class="antiswiper" >한눈에 보는 유물</span>
  <span class="antimore"><a href="antiquitySearch.html">+더보기</a></span>
 </div><br><br>
  <div class="swiper-wrapper">
    <!--유물1-->
    <div class="swiper-slide" >
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/exhibition01.JPG" class="zoom-effect-img" alt="Image caption" >
        </div>
      </a>
    </div>

    <!--유물2-->
    <div class="swiper-slide"> 
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div>

<!--유물3-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물4-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물5-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물6-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물7-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물8-->
    <div class="swiper-slide"><div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div></div>

       <!--유물9-->
    <div class="swiper-slide">
      <div class="gallery">
      <a href="#" class="gallery-item d-block card-hover zoom-effect">
        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
         
          <div class="position-absolute top-10 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
            <p>유물소개</p>
            <span class="goanti">자세히보기</span>
          </div>
          <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
        </div>
        <div class="zoom-effect-wrapper rounded-4">
          <img src="${path}/resources/img/empty_heart_icon.png" class="zoom-effect-img" alt="Image caption">
        </div>
      </a>
    </div>
  </div>
</div>
</div>
<br>
<dev class="antiquebtn">
<button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle me-2">
  <i class="ai-arrow-left"></i>
</button>
<button type="button" class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-2">
  <i class="ai-arrow-right"></i>
</button>
</dev> -->

<!-- Swiper JS -->

<script src="${path}/resources/css/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    slidesPerView: 4,
    spaceBetween: 30,
    freeMode: true,
    loop: true,
    loopFillGroupWithBlank: true,
    navigation: {
      nextEl: ".ai-arrow-left",
      prevEl: ".ai-arrow-right",
    },
  });
</script> 
<!------------------------------------------------------------------->

               
<!--오늘의 박물관 시작-->

<br><br><br>
<h1 style="text-align: center;">오늘의 박물관</h1>
<div class="swiper museumSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum1.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립중앙박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum2.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립광주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
    <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/museum3.jpg" class="museumImg"><p class="todayMuseum" id="museName">국립나주박물관</p></a></div>
  </div>

  <!--박물관 옆으로 버튼-->
<div class="museumbtn">
  <div class="button-next">
    <button type="button" class="btn btn-prev btn-icon btn-lg btn-outline-primary rounded-circle me-2">
    <i class="ai-chevron-left"></i>
  </button></div>

  <div class="button-prev">
    <button type="button" class="btn btn-next btn-icon btn-lg btn-outline-primary rounded-circle ms-2">
      <i class="ai-chevron-right"></i>
    </button>
  </div>
</div>

</div>
<script src="${path}/resources/css/swiper-bundle.min.js"></script>
<!-- 박물관 옆으로 이동 -->
<script>
  var swiper = new Swiper(".museumSwiper", {
    slidesPerView: 3,
    spaceBetween: 15,
    slidesPerGroup: 1,
    loop: true,
    loopFillGroupWithBlank: true,

    navigation: {
      nextEl: ".button-next",
      prevEl: ".button-prev",
    },
  });
</script>

<!--오늘의 박물관 끝-->


<div class="sabuzakNotice">

<!--공지사항과 사부작소개-->
<div class="sabuzak ">
<!--사부작-->
<table>
  <tr>
    <td colspan="2">사부작</td>
    </tr>
    <tr>
    <td rowspan="2"><img src="${path}/resources/img/sabuzak_main.JPG"  class="sabuzakMain"></td>

    <td class="sabuzakT"><p>역사와 문화가 살아 숨쉬는<br>
    사부작 박물관을 소개합니다.</p></td>
    </tr>
      <tr>
       
        <td class="sabuzakM">
          <span>사부작 박물관은 역사적 사료의 물리적, 심리적 거리를<br> 줄이고
  집에서도 유물을 쉽고 재밌게 볼 수 있는<br> 온라인 박물관입니다.
</span>
        </td>
      </tr>
 
      <tr>
        <td colspan="2" class="sabuzakB">
          <a href="intro.html">+더보기</a>
        </td>
      </tr>
  </table>
</div>

<!--공지사항-->
<div class="notice">

  <div class="row">
    공지사항
  </div>

  <div class="row">
    <div class="col-1">
      1
    </div>
    <div class="col-8"><a href="#">공지사항~~~~</a></div>
    <div class="col-2">2022.10.30</div>
  </div>
  <div class="row">
    <div class="col-1">
      1
    </div>
    <div class="col-8"><a href="#">공지사항~~~~</a></div>
    <div class="col-2">2022.10.30</div>
  </div>  <div class="row">
    <div class="col-1">
      1
    </div>
    <div class="col-8"><a href="#">공지사항~~~~</a></div>
    <div class="col-2">2022.10.30</div>
  </div>  <div class="row">
    <div class="col-1">
      1
    </div>
    <div class="col-8"><a href="#">공지사항~~~~</a></div>
    <div class="col-2">2022.10.30</div>
  </div>

  <div class="row">
    <div class="col-12">
      <a href="notice.html">+더보기</a>
    </div>
  </div>

</div>
</div>

<!----특별전시-->
<div class="specialtext">
  <span class="specialT">특별전시</span>
  <span class="goexhi"><a href="exhibition.html">+더보기</a></span>
</div>
<br><br>
<div class="special">

    <!-- 특별전시 카드들 -->
    <div class="swiper exhibition">
      
      <!-- <button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary mt-0">
        <i class="ai-arrow-left"></i>
      </button> -->

      <div class="swiper-wrapper exhibition">
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition01.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition02.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition03.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition04.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition05.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition06.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition07.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition08.JPG" class="slideExhibition"></a></div>
        <div class="swiper-slide"><a href="#"><img src="${path}/resources/img/exhibition09.JPG" class="slideExhibition"></a></div>
      </div>
   
      <!-- <button type="button" class="btn btn-next btn-icon btn-sm btn-outline-primary  ms-1">
        <i class="ai-arrow-right"></i>
      </button>
  -->
     
    </div>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".exhibition", {
        slidesPerView: 7,
        spaceBetween: 3,
        slidesPerGroup: 1,
         loop: true,
        centeredSlides: true,
        autoplay: {
          delay: 1500,
          disableOnInteraction: false,
        },
        
        navigation: {
          nextEl: ".ai-arrow-left",
          prevEl: ".ai-arrow-right",
        },
      });
    </script>

</div>

</div>

</section>




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>



