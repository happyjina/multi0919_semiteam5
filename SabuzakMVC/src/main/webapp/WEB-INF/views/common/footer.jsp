<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<body>
    <!-- Footer-->
  <footer class="footer py-5">
    <div class="container pt-md-2 pt-lg-3 pt-xl-4">
      <div class="row pb-5 pt-sm-2 mb-lg-2">
        <div class="col-md-12 col-lg-3 pb-2 pb-lg-0 mb-4 mb-lg-0"><a class="navbar-brand py-0 mb-3 mb-lg-4"
            href="${path}"><span class="text-primary flex-shrink-0 me-2">
              <img version="1.1" width="80" height="60" viewBox="0 0 36 33" src="${path}/resources/img/sabuzak_logo_black.png" />
              <path fill="currentColor"
                d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z">
              </path>
              </svg>
            </span><span class="text-nav">사부작</span></a>
          <p id="asdmflasdkmfdlas" class="fs-xs pb-2 pb-lg-3 mb-3">사부작은 유물과 전국 박물관에 대한 정보를 제공함으로써<br />현대인들에게 보다 쉽게 역사에
            다가갈 수 있도록 합니다.</p>
          <div class="d-flex"><a class="btn btn-icon btn-sm btn-secondary btn-facebook rounded-circle me-3" href="#"><i
                class="ai-facebook"></i></a>
            <a class="btn btn-icon btn-sm btn-secondary btn-instagram rounded-circle me-3" href="#"><i
                class="ai-instagram"></i></a>
            <a class="btn btn-icon btn-sm btn-secondary btn-linkedin rounded-circle" href="#"><i
                class="ai-linkedin"></i></a>
          </div>
        </div>
        <div class="col-sm-3 col-lg-2 offset-xl-1 mb-4 mb-sm-0">
          <ul class="nav flex-column">
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="intro.html">사부작 소개</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="notice.html">공지사항</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="museumSearch.html">박물관</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="antiquitySearch.html">유물</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="exhibition.html">특별전시</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="Board.html">게시판</a></li>
          </ul>
        </div>
        <div class="col-sm-4 col-lg-2 mb-4 mb-sm-0">
          <ul class="nav flex-column">
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="mailto:sabuzak@multi.com">sabuzak@multi.com</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="tel:+821234567">+82 123 4567</a></li>
            <li><a class="nav-link py-1 px-0" id="footer_nav" href="tel:+828901234">+82 890 1234</a></li>
          </ul>
        </div>
        <div class="col-sm-5 col-lg-4 col-xl-3 offset-lg-1">
          <h3 class="h6 mb-2">사부작의 소식을 구독해보세요.</h3>
          <p class="fs-sm">새로운 유물 소식을 놓치지 마세요!</p>
          <div class="input-group input-group-sm">
            <input class="form-control" type="text" placeholder="Your email">
            <button class="btn btn-primary" type="button">구독하기</button>
          </div>
        </div>
      </div>
      <p class="fs-sm mb-0"><span class="opacity-70">&copy; 2022, Sabuzak, Korea. All rights reserved. </span><a
          class="nav-link d-inline fw-normal p-0" href="${path}" target="_blank" rel="noopener">Sabuzak
          </a></p>
    </div>
  </footer>


<!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
  <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10">
    </circle>
  </svg><i class="ai-arrow-up"></i></a>
<!-- Vendor scripts: js libraries and plugins-->
<script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- <script src=${path}/vendor/parallax-js/dist/parallax.min.js"></script>-->
<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
<script src="${path}/resources/vendor/aos/dist/aos.js"></script>
<!-- Main theme script-->
<script src="${path}/resources/js/theme.min.js"></script>
<script src="${path}/resources/js/sabuzak_5.js"></script>


</body>
</html>