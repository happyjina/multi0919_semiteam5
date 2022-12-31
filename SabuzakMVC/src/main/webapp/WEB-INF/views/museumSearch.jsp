<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- Fancybox -->
<link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
<!--body stylesheet-->
 <link rel="stylesheet" href="${path}/resources/css/museumSearch.css">
<!--부트스트랩 아이콘-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <!-- Fontawesome -->
    <link type="text/css" href="${path}/resources/fontawesome-free/css/all.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
<main class="page-wrapper">
<div class="body">     
        <!-- 헤더 네비 아래 가운데 큰 배경들-->
        <section>
            <div class="jarallax bg-dark min-vh-40 py-4" data-jarallax data-type="scroll-opacity" data-speed="0.7">
              <div class="jarallax-img"><img src="${path}/resources/img/loginimg.png" style="height: 100%; width: 100%;"></div>
              <div class="container position-relative zindex-5 py-sm-4 py-lg-5 mt-4">

                    <h3 class=" text-light  pb-sm-2 pb-md-3" style="margin-top: 8%; display: flex; justify-content: center;">박물관 검색</h3>
                    <h5 class="text-light opacity-70 pb-3 pb-md-4 mb-3" style="display: flex; justify-content: center;">전국에 있는 박물관을 검색해보세요.</h5>
                  </div>
                </div>
                <div class="d-flex align-items-center justify-content-between mb-3">
                </div>


<div class="container mu-search">
  <div class="search-bar p-3 position-relative mt-n5 z-index-20 mu-search-bar">
      <div class="row1">
        <div class="d-flex align-items-center form-group region">지역</div>
        <div class="d-flex align-items-center form-group no-divider selectbox">
       <form name="form" method="get" action="${path}/museumSearch">
        <select name='city' onchange="change(this.selectedIndex);"  class="input" data-style="btn-form-control">
            <option value=''>전체</option>
            <option value='서울'>서울특별시</option>
            <option value='부산'>부산광역시</option>
            <option value='대구'>대구광역시</option>
            <option value='인천'>인천광역시</option>
            <option value='광주'>광주광역시</option>
            <option value='대전'>대전광역시</option>
            <option value='울산'>울산광역시</option>
            <option value='세종'>세종특별자치시</option>
            <option value='경기'>경기도</option>
            <option value='강원'>강원도</option>
            <option value='충북'>충청북도</option>
            <option value='충남'>충청남도</option>
            <option value='전북'>전라북도</option>
            <option value='전남'>전라남도</option>
            <option value='경북'>경상북도</option>
            <option value='경남'>경상남도</option>
            <option value='제주'>제주도</option>
         </select>                                                  
         <select name='county' class="select">
            <option value=''>전체</option>
         </select>
         
         	 <div class="form-group d-grid mb-0 " >
	          <input class="form-control" type="text" name="museName" value="${ param.museName}" id="text-input"  placeholder="검색어 입력해주세요." />
        
	        </div>
             <div class="form-group d-grid mb-0 resetbutton">
              <button class="btn btn-primary h-100" type="reset" id="resetbutton"><i class="bi bi-arrow-clockwise">초기화</i></button>
             </div>
             <div class="searchbutton">
              <button class="btn btn-primary h-100" type="submit">검색</button>
             </div>
        </form>  
      </div>

         
    </div>  
    </div>
    </div>

 
<!-- Home icon -->
<div class="home-mu">
    <!--breadcrumb-->
    <ol id="bc2" class="breadcrumb">
      <li class="breadcrumb-item doing">
        <a href="index.html">
          <i class="ai-home fs-base me-2"></i>
          Home
        </a>
      </li>
      <li class="breadcrumb-item"><a href="museumSearch.html">박물관</a></li>
      <li class="breadcrumb-item active" aria-current="page" id="antName" name="antName">박물관검색</li>
    </ol>
      <button class="btn btn-primary h-100 map-text"><a href="map.html"><i class="bi bi-geo-alt"></i>지도보기</a></button>
  </div>

  <!--박물관 리스트-->
  <div class="row museum-card">
  <c:forEach var="item" items="${list}">
  	<div class="col-12 museum-detail mb-3">
        <div class="card border-light mb-4 animate-up-5">
            <div class="row no-gutters align-items-center">
                <div class="col-12 col-lg-6 col-xl-5">
                    <a href="${path}/museumDetails?museNo=${item.museNo}">
                        <img src="" alt="박물관 사진" class="card-img p-2 rounded-xl">
                    </a>
                </div>
                <div class="col-12 col-lg-6 col-xl-7">
                    <div class="card-body">
                        <a href="${path}/museumDetails?museNo=${item.museNo}">
                          <!--박물관명-->
                            <h4 class="h5">${item.museName}</h4>
                        </a>
                        <i class="bi bi-heart heart" type="button"></i>
                        <div class="d-flex my-3">
                            <span class="star fas fa-star text-warning"></span> 
                            <span class="star fas fa-star text-warning"></span> 
                            <span class="star fas fa-star text-warning"></span> 
                            <span class="star fas fa-star text-warning"></span> 
                            <span class="star fas fa-star text-warning"></span>
                            <span class="badge badge-pill badge-primary ml-2">5.0</span>
                        </div> 
                        <ul class="list-group mb-3">
                          <!--박물관 주소-->
                            <li class="list-group-item p-0"><span class="fas fa-map-marker-alt mr-2"></span> 
                            ${item.museRdnmadr}
                            
                            </li>
                            <!--전화번호-->
                            <li class="list-group-item p-0"><span class="bi bi-telephone"></span> musePhone</li>
                        </ul>
                        <div class="d-flex justify-content-between">
                            <div class="col pl-0">
                                <span class="text-muted font-small d-block">운영시간</span>
                                <span class="h6 text-dark font-weight-bold">museWeekOpen~museWeekClose</span>
                            </div>
                            <div class="col">
                                <span class="text-muted font-small d-block">입장료</span>
                                <span class="h6 text-dark font-weight-bold">museCharge</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
  
  </c:forEach> 
    

  </div>

<div class="col col-md-4 col-6 order-md-3 order-2 listnumber">
  <nav aria-label="Page navigation">
    <ul class="pagination listnumbersize justify-content-center">
      <li class="page-item"><a class="page-link" href="#"><i class="bi bi-chevron-left"></i></a></li>
      <li class="page-item active" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item"><a class="page-link" href="#"><i class="bi bi-chevron-right"></i></a></li>

    </ul>
  </nav>
</div>

</div>

</main>



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>



