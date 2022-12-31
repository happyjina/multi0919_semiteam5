<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>사부작 | 아이디 찾기</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
  <link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/img/sabuzak_logo_black.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/sabuzak_logo_black.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/sabuzak_logo_black.png">
  <link rel="manifest" href="${path}/resources/img/sabuzak_logo_black.png">
  <link rel="mask-icon" color="#6366f1" href="${path}/resources/img/sabuzak_logo_black.png">
  <meta name="msapplication-TileColor" content="#080032">
  <meta name="msapplication-config" href="${path}/resources/img/sabuzak_logo_black.png">
  <meta name="theme-color" content="white">
    <!-- Theme mode-->
    

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
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
  </head>
    <!-- Body-->
    <body style="background-image: url(${path}/resources/img/back.JPG);">

        <!-- Page wrapper-->
        <main class="page-wrapper">
            
                  <!-- Page content-->
      <div class="d-flex flex-column align-items-center position-relative h-100 px-3 pt-5">

        <!-- Home button--><a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 zindex-2 p-0 mt-3 me-3 mt-sm-4 me-sm-4" href="index.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Back to home"><i class="ai-home"></i></a>
        <!-- Content-->
        <div class="mt-auto" style="max-width: 700px;">
        <c:if test="${idSearch == null }">
            <h1 class="pt-3 pb-2 pb-lg-3" >아이디 찾기</h1>
        <div class="card dark-mode border-0 bg-primary">
            <form class="card-body" >
          
                <div class="position-relative">
                    <i class="ai-user fs-lg position-absolute top-50 start-0 translate-middle-y text-light opacity-80 ms-3"></i>
                    <input class="form-control form-control-lg ps-5" type="text" name ="name" value="${member.name }" placeholder="이름을 입력하세요" required>
                </div>
                <br>
              <div class="mb-4">
                <div class="position-relative"><i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y text-light opacity-80 ms-3"></i>
                  <input class="form-control form-control-lg ps-5" type="email" name="email" value="${member.email }" placeholder="Email 주소를 입력하세요" required>
                </div>
              </div>
              <button class="btn btn-light" type="submit">확인</button>
            </form>
          </div>
        </div>
        </c:if>
       

        <div class="card dark-mode border-0 bg-primary">
            <form class="card-body" >
          <c:choose>                                                                          
            <c:when test="${empty idSearch}">                                                 
                <p class="mb-4">조회결과가 없습니다.</p>                                        
            </c:when>                                                                         
            <c:otherwise>                                                                     
                <p class="mb-4">${member.id} 입니다</p>                                              
            </c:otherwise>    
      			 </c:choose> 
               
              </div>
     
            </form>
          </div>
        </div>
        <c:if test="${idSearch != null }">
        
        </c:if>
        <!-- Copyright-->
        <p class="w-100 fs-sm pt-5 mt-auto mb-5" style="max-width: 700px;"><span class="text-muted">&copy; 2022, Sabuzak, Korea. All rights reserved.</span><a class="nav-link d-inline-block p-0 ms-1" href="index.html" target="_blank" rel="noopener">사부작</a></p>
    </div>
  </main>
  <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
    <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
    </svg><i class="ai-arrow-up"></i></a>
  <!-- Vendor scripts: js libraries and plugins-->
  <script src="${path}/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
  <!-- Main theme script-->
  <script src="${path}/resources/assets/js/theme.min.js"></script>
</body>
</html>

