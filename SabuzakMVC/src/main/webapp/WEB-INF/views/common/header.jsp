<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <title>사부작</title>
  <!-- SEO Meta Tags-->
  <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
  <meta name="keywords"
    content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
  <meta name="author" content="Createx Studio">
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon and Touch Icons-->
  <link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/img/logo_black.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/logo_black.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/logo_black.png">
  <link rel="manifest" href="${path}/resources/img/logo_black.png">
  <link rel="mask-icon" color="#6366f1" href=".${path}/resources/img/logo_black.png">
  <meta name="msapplication-TileColor" content="#080032">
  <meta name="msapplication-config" href="${path}/resources/img/logo_black.png">
  <meta name="theme-color" content="white">
  <!-- Page loading styles-->
  <style>
    .page-loading {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 100%;
      -webkit-transition: all .4s .2s ease-in-out;
      transition: all .4s .2s ease-in-out;
      background-color: #fff;
      opacity: 0;
      visibility: hidden;
      z-index: 9999;
    }

    .page-loading.active {
      opacity: 1;
      visibility: visible;
    }

    .page-loading-inner {
      position: absolute;
      top: 50%;
      left: 0;
      width: 100%;
      text-align: center;
      -webkit-transform: translateY(-50%);
      transform: translateY(-50%);
      -webkit-transition: opacity .2s ease-in-out;
      transition: opacity .2s ease-in-out;
      opacity: 0;
    }

    .page-loading.active>.page-loading-inner {
      opacity: 1;
    }

    .page-loading-inner>span {
      display: block;
      font-family: 'Inter', sans-serif;
      font-size: 1rem;
      font-weight: normal;
      color: #6f788b;
    }

    .page-spinner {
      display: inline-block;
      width: 2.75rem;
      height: 2.75rem;
      margin-bottom: .75rem;
      vertical-align: text-bottom;
      background-color: #d7dde2;
      border-radius: 50%;
      opacity: 0;
      -webkit-animation: spinner .75s linear infinite;
      animation: spinner .75s linear infinite;
    }

    @-webkit-keyframes spinner {
      0% {
        -webkit-transform: scale(0);
        transform: scale(0);
      }

      50% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }

    @keyframes spinner {
      0% {
        -webkit-transform: scale(0);
        transform: scale(0);
      }

      50% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }
    
  </style>
  <!-- Page loading scripts-->
  <script>
    (function () {
      window.onload = function () {
        const preloader = document.querySelector('.page-loading');
        preloader.classList.remove('active');
        setTimeout(function () {
          preloader.remove();
        }, 1500);
      };
    })();

  </script>
  <!-- Import Google Font-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet"
    id="google-font">
  <!-- Vendor styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/vendor/aos/dist/aos.css" />
  <!-- Main Theme Styles + Bootstrap-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
  <link rel="stylesheet" href="${path}/resources/css/header_1.css">
  <script src="${path}/resources/js/jquery-3.6.3.min.js"></script>
	

</head>
<!-- Body-->

<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>로딩중...</span>
    </div>
  </div>
  <!-- Page wrapper-->
  <main class="page-wrapper">

    <!--헤더-->
    <!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
    <header class="navbar navbar-expand-lg fixed-top bg-light">
      <div class="container"><a class="navbar-brand pe-sm-3" href="${path}">
          <img src="${path}/resources/img/logo_small1.png">
          <span class="d-none d-sm-inline">사부작</span></a>

     <!-- 로그인 하기전  -->
    	<c:if test="${loginMember == null }">
	        <div class="form-check form-switch mode-switch order-lg-2 me-3 me-lg-4 ms-auto" data-bs-toggle="mode">
	          <a id="login_btn" class="btn btn-primary btn-sm fs-sm order-lg-3 d-none d-sm-inline-flex" href="${path}/login"
	             rel="noopener">&nbsp;로그인&nbsp; </a>
	        </div>
	        <a class="btn btn-primary btn-sm fs-sm order-lg-3 d-none d-sm-inline-flex" id="join" href="${path}/member/enroll" 
	          rel="noopener">&nbsp;회원가입&nbsp;</a>
    	</c:if>

    	<c:if test="${loginMember != null }">
        <div class="dropdown nav d-none d-sm-block order-lg-3">
          <div class="ps-2">
            <div class="fs-sm lh-1 opacity-80">안녕하세요.</div>
            <div class="fs-m dropdown-toggle">${loginMember.name} 님</div>
          </div>
        <div class="dropdown-menu dropdown-menu-end my-1">
          <h6 class="dropdown-header fs-xs fw-medium text-muted text-uppercase pb-1">내 계정</h6>
          <a class="dropdown-item" href="${path}/mypage"><i class="ai-user-check fs-lg opacity-70 me-2"></i>마이페이지</a>
          <a class="dropdown-item" href="${path}/myArticle"><i class="ai-messages fs-lg opacity-70 me-2"></i>내가 쓴 글보기</a>
          <a class="dropdown-item" href="${path}/antiWishlist"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 유물</a>
          <a class="dropdown-item" href="${path}/museumWishlist"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 박물관</a>
          <div class="dropdown-divider"></div><a class="dropdown-item" href="${path}/logout"><i class="ai-logout fs-lg opacity-70 me-2"></i>로그아웃</a>
        </div>
      </div>
      </c:if>

        <button class="navbar-toggler ms-sm-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"><span
            class="navbar-toggler-icon"></span></button>
        <nav class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav navbar-nav-scroll me-auto" style="--ar-scroll-height: 520px;">

            <li class="nav-item"><a class="nav-link" href="${path}/intro"  >사부작소개</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/museumSearch" >박물관</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/antiquitySearch" >유물</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/exhibition" >특별전시</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/Board" >게시판</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/notice" >공지사항</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${path}/mypage" >마이페이지</a>
            </li>
          </ul>
        </nav>
      </div>
    </header>

    </main>
</body>
</html>