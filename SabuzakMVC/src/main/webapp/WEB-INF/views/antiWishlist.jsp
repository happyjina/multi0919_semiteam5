<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

 <link rel="stylesheet" href="${path}/resources/css/antiqWishlist.css">


      <!--찜한 유물 start!!!!!!!!!!-->
    <div class="my_div my_bg">  
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">

          <!--breadcrumb-->
          <section id="bc" class="container">
            <ol id="bc2" class="breadcrumb">
              <li class="breadcrumb-item doing">
                <a href="index.html">
                  <i class="ai-home fs-base me-2"></i>
                  Home
                </a>
              </li>
              <li class="breadcrumb-item"><a href="mypage.html">내 계정</a></li>
              <li class="breadcrumb-item active" aria-current="page" id="brMuName">내가 찜한 유물</li>
            </ol>
          </section>
          <!-- 사이드 바!!!!!!!-->
          <aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
            <div class="position-lg-sticky top-0">
              <div class="d-none d-lg-block" style="padding-top: 105px;"></div>
              <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                <div class="offcanvas-body">
                  <div class="pb-2 pb-lg-0 mb-4 mb-lg-5"><img class="d-block mb-2" src="${path}/resources/img/sabuzak_logo_black.png" width="80" >
                    <h3 class="h5 mb-1" id="name">김땡땡</h3>
                    <p class="fs-sm text-muted mb-0" id="email">test1@multi.com</p>
                  </div>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 계정</h4>
                    <a class="nav-link fw-semibold py-2 px-0" href="mypage.html"><i class="ai-user-check fs-5 opacity-60 me-2"></i>마이페이지</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="myArticle.html"><i class="ai-messages fs-lg opacity-70 me-2"></i>내가 쓴 글보기</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="antiWishlist.html"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 유물</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="museumWishlist.html"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 박물관</a>
                  </nav>
                  <nav class="nav flex-column"><a class="nav-link fw-semibold py-2 px-0" href="index.html"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a></nav>
                </div>
              </div>
            </div>
          </aside>


          <!--내가 찜한 유물 사진!!!!!!!!!!-->
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4 mb-5">
            <div class="d-flex align-items-center mb-4">
              <h1 class="h2 mb-0">내가 찜한 유물 <span class='fs-base fw-normal text-muted'>(6개)</span></h1>
              <button class="btn btn-sm btn-outline-danger ms-auto" type="button" id="trash"><i class="ai-trash ms-n1 me-2"></i>전체 삭제</button>
            </div>
            <div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body pb-4">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
                  
                  <!-- Item-->
                  <div class="favoriteImg col pb-2 pb-sm-3">
                    <div class="card-hover position-relative rounded-1 p-3 ">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_1.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_2.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext">
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물1</a></h3>
                    </div>
                  </div>
                  
                  <!-- Item-->
                  <div class="favoriteImg col pb-2 pb-sm-3">
                    <div class="card-hover position-relative rounded-1 p-3">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_2.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_3.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext">
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물2</a></h3> 
                    </div>
                  </div>
                  
                  <!-- Item-->
                  <div class="favoriteImg col pb-2 pb-sm-3">
                    <div class="card-hover position-relative rounded-1 p-3">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_3.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_1.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext">
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물3</a></h3> 
                    </div>
                  </div>


                  <!-- Item-->
                  <div class="favoriteImg col pb-2 pb-sm-3">
                    <div class="card-hover position-relative rounded-1 p-3">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_4.JPG" width="226" alt="Product" id="antImgThumUriM"></div>
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_3.JPG" width="226" alt="Product" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext">
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물4</a></h3>
                    </div>
                    <div class="d-flex align-items-center pt-1"></div>
                  </div>

                  <!-- Item-->
                   <div class="favoriteImg col pb-2 pb-sm-3" >
                    <div class="card-hover position-relative rounded-1 p-3">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_3.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                          <div class="swiper-slide"><img class="d-block mx-auto" src="${path}/resources/img/relic_1.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext">
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물3</a></h3> 
                    </div>
                  </div>

                  <!-- Item-->
                  <div class="favoriteImg col pb-2 pb-sm-3">
                    <div class="card-hover position-relative rounded-1 p-3">
                      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-4 me-4 zindex-5 opacity-0" type="button"><i class="ai-trash fs-xl text-danger"></i></button>
                      <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="antiquityDetails.html">
                          <div class="swiper-slide "><img class="d-block mx-auto" src="${path}/resources/img/relic_2.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                          <div class="swiper-slide "><img class="d-block mx-auto" src="${path}/resources/img/relic_4.JPG" width="226" alt="antiq" id="antImgThumUriM"></div>
                        </a>
                        <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button" id="favbtn"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
                        <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button" id="favbtn2"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
                      </div>
                    </div>
                    <div class="d-flex mb-1" id="mutext" >
                      <h3 class="h6 mb-0" id="antName"><a href="antiquityDetail.html">유물2</a></h3> 
                    </div>
                  </div>
                  



                  </div>
                  
                  			<div class="page">
			                  <!-- 페이지-->
			                  <nav aria-label="Page navigation" >
			                    <ul class="pagination">
			                      <li class="page-item">
			                        <a href="#" class="page-link">Prev</a>
			                      </li>
			                      <li class="page-item d-sm-none">
			                        <span class="page-link pe-none">2 / 5</span>
			                      </li>
			                      <li class="page-item d-none d-sm-block">
			                        <a href="#" class="page-link">1</a>
			                      </li>
			                      <li class="page-item active d-none d-sm-block" aria-current="page">
			                        <span class="page-link">
			                          2
			                          <span class="visually-hidden">(current)</span>
			                        </span>
			                      </li>
			                      <li class="page-item d-none d-sm-block">
			                        <a href="#" class="page-link">3</a>
			                      </li>
			                      <li class="page-item d-none d-sm-block">
			                        <a href="#" class="page-link">4</a>
			                      </li>
			                      <li class="page-item d-none d-sm-block">
			                        <a href="#" class="page-link">5</a>
			                      </li>
			                      <li class="page-item">
			                        <a href="#" class="page-link">Next</a>
			                      </li>
			                    </ul>
			                  </nav>
			              	</div>    
			                  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
      
    




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
