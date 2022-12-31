<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

 <link rel="stylesheet" href="${path}/resources/css/museumDetails.css">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

    <!-- 박물관 상세정보 start!!!-->
    <!--배경이미지-->
    <div class="my_div my_bg">
      <section id="bc" class="container">
        <!--breadcrumb-->
        <ol id="bc2" class="breadcrumb">
          <li class="breadcrumb-item doing">
            <a href="index.html">
              <i class="ai-home fs-base me-2"></i>
              Home
            </a>
          </li>
          <li class="breadcrumb-item"><a href="museumSearch.html">박물관</a></li>
          <li class="breadcrumb-item active" aria-current="page" id="brMuseName" name="museName">${museum.museName}</li>
        </ol>
      </section>

      <!-- 박물관 상세 메인 이미지-->
      <section class="container">
        <img src="${path}/resources/img/museum_main.png" style="width: 100%; height: 500px;">
      </section>

      <!--박물관 info-->
      <section class="container my-lg-3 my-xl-4 ">
        <div class="info">
          <div class="infohead">
            <div class="infoName">
              <ul class="namelist">
                <li class="list" id="museName">${museum.museName}</li>
                <li class="list" id="museType">국립</li>
                <li class="list"><i class="bi bi-heart" id="heart" name="heart"></i></li>
              </ul>
            </div>
            <div class="information">
              <ul>
                <li class="information2">INFORMATION</li>
                <li class="museumInfo">박물관정보</li>
              </ul>
              <img class="infoImage" src="${path}/resources/img/information_icon.png" style="width: 30px; height: 30px;">
            </div>
          </div>
          <ul class="info-group">
            <li class="info-group-item">
              <label>주소</label>
              <div class="contents" id="museRdnmadr">
                서울특별시 용산구 서빙고로 137
              </div>

              <label>편의시설</label>
              <div class="contents" id="fcltyInfo"></div>
            </li>
            <li class="info-group-item">
              <label>문의</label>
              <div class="contents" id="musePhone">02-2077-9000</div>

              <label>휴관 정보</label>
              <div class="contents" id="rstdeInfo">1월1일,설날(2.1),추석(9.10)</div>
            </li>
            <li class="info-group-item">
              <div class="item-group">
                <label>홈페이지</label>
                <div class="contents" id="museUrl"><a href="https://www.museum.go.kr/" target="_blank">
                    <img src="${path}/resources/img/homepage_icon.png" class="ic_web">
                  </a></div>
              </div>

              <label>관람료</label>
              <div class="contents" id="museCharge">무료 (특별전시는 유료)</div>
            </li>
            <li class="info-group-item" id="liwithoutborder">
              <div class="item-group">
                <label class="labeltext">평일 관람시간</label>
                <div class="contents" id="museWeekOpen">
                  10:00~18:00
                </div>
              </div>

              <label class="labeltext2">교통안내 정보</label>
              <div class="contents">dksfklsjdfklajsdflkajdfdksfklsjdd</div>
            </li>
            <li class="info-group-item">
              <div class="item-group">
                <label class="labeltext">공휴일 관람시간</label>
                <div class="contents" id="museHolidayOpen">
                  10:00~18:00
                </div>
              </div>
            </li>
          </ul>
        </div>
      </section>


      <!--위치 전시정보-->
      <section class="overflow-hidden ">
        <div class="container">
          <!--위치-->
          <section class="loca_exhi">
            <div class="loca_exhi_head">
              <div class="loca_head">
                <ul>
                  <li class="location">LOCATION</li>
                  <li class="loca">위치</li>
                </ul>
              </div>
              <div class="exhi_head">
                <ul>
                  <li class="exhiInfo">EXHIBITION INFO</li>
                  <li class="exhibithon2">전시 정보 <a class="exseemore" href="exhibition.html">+ 더보기</a></li>
                </ul>
              </div>
            </div>
            <!-- 지도-->
            <div class="map_map">
              <div class="row">
                <div id="map" style="width:800px;height:470px;"></div>
                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b74c68ca9c842d7f49d121fdec713bf1&libraries=services"></script>
                  <script>
                    
                  var container = document.getElementById('map');
                  var options = {
                  center: new kakao.maps.LatLng(33.450701, 126.570667),
                  level: 4
                  };
                
                  var map = new kakao.maps.Map(container, options);

                  // 주소-좌표 변환 객체를 생성합니다
                  var geocoder = new kakao.maps.services.Geocoder();

                  // 주소로 좌표를 검색합니다
                  geocoder.addressSearch('서울특별시 용산구 서빙고로 137', function(result, status) {
                  
                      // 정상적으로 검색이 완료됐으면 
                      if (status === kakao.maps.services.Status.OK) {
                      
                          var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                      
                          // 결과값으로 받은 위치를 마커로 표시합니다
                          var marker = new kakao.maps.Marker({
                              map: map,
                              position: coords
                          });
                        
                          // 인포윈도우로 장소에 대한 설명을 표시합니다
                          var infowindow = new kakao.maps.InfoWindow({
                              content: '<div style="width:150px;text-align:center;padding:6px 0;">국립중앙박물관</div>'
                          });
                          infowindow.open(map, marker);
                          
                        
                          // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                          map.setCenter(coords);
                        } 

                      });  
                </script>
                                  
                </div>
            </div>   


            
            
            
            <!--전시정보슬라이드-->
            <div class="exhi_slide"> 
              
              <div id="demo" class="carousel slide" data-ride="carousel" style="height: 470px;">
                    
                      <!-- Indicators -->
                      <ul class="carousel-indicators"  >
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                      </ul>
                      
                      <!-- The slideshow -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                          <img src="${path}/resources/img/exhi_info.JPG" id="exhi" width="450px;" height="470px;">
                    </div>
                    <div class="carousel-item">
                          <img src="${path}/resources/img/relic_1.JPG" id="exhi" width="450px;" height="470px;">
                    </div>
                    <div class="carousel-item">
                          <img src="${path}/resources/img/relic_2.JPG" id="exhi" width="450px;" height="470px;">
                    </div>
                  </div>
                      
                      <!-- Left and right controls -->
                      <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <div class="carousel-control-prev-icon"></div>
                      </a>
                      <a class="carousel-control-next" href="#demo" data-slide="next">
                        <div class="carousel-control-next-icon"></div>
                      </a>
              </div>
            </div>

          </section>
        </div>

            
      </section>
        
      


      
      <!-- 리뷰-->
      <section class="review">
        <div class="container py-sm-1 py-lg-1 py-xl-2 py-xxl-5">
          <div class="reviewHead">
            <ul>
              <li class="review1">REVIEWS</li>
              <li class="review2">리뷰 (4개)</li>
            </ul>
            <!-- 정렬 -->
            <div id="reviewSort" class="d-flex align-items-center flex-shrink-0 mb-2">
              <select class="form-select form-select-flush py-0">
                <option value="newest">최신순</option>
                <option value="best">추천순</option>
              </select>
            </div>
          </div>
          
          <!--댓글-->

          <div class="reviewWrite">

            <div class="reviewlist">
              <h6 class="reviewName" id="mReplyNo">김땡땡<div class="reviewDate" id="createDate">2022-00-00</div></h6>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="reviewContent" id="content">아름다워요! 
                <!-- <em class="likeDislike"><i class="bi bi-hand-thumbs-down" id="dislike" onclick="cleck('dislike1')"></i>(0)</em>  나중에 이런식으로 해야한다고 함 jsp에서 ajax가지고와서 하나씩 따로따로-->   
                <button class="likeDislike"><i class="bi bi-hand-thumbs-down" id="bad" name="dislike"></i>(0)</button>
                <em class="likeDislike"><i class="bi bi-hand-thumbs-up" id="good" name="like"></i>(2)</em>
              </p>
            </div>

            <div class="reviewlist">
              <h6 class="reviewName" id="mReplyNo">김땡땡<div class="reviewDate" id="createDate">2022-00-00</div></h6>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="reviewContent" id="content">아름다워요! 
                <em class="likeDislike"><i class="bi bi-hand-thumbs-down" id="bad" name="dislike"></i>(0)</em>   
                <em class="likeDislike"><i class="bi bi-hand-thumbs-up" id="good" name="like"></i>(2)</em>
              </p>
            </div>

            <div class="reviewlist">
              <h6 class="reviewName" id="mReplyNo">김땡땡<div class="reviewDate" id="createDate">2022-00-00</div></h6>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="reviewContent" id="content">아름다워요! 
                <em class="likeDislike"><i class="bi bi-hand-thumbs-down"  id="bad" name="dislike"></i>(0)</em>   
                <em class="likeDislike"><i class="bi bi-hand-thumbs-up"  id="good" name="like"></i>(2)</em>
              </p>
            </div>

            <div class="reviewlist">
              <h6 class="reviewName" id="mReplyNo">김땡땡<div class="reviewDate" id="createDate">2022-00-00</div></h6>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="reviewContent" id="content">아름다워요! 
                <em class="likeDislike"><i class="bi bi-hand-thumbs-down"  id="bad" name="dislike"></i>(0)</em>   
                <em class="likeDislike"><i class="bi bi-hand-thumbs-up"  id="good" name="like"></i>(2)</em>
              </p>
            </div>

          </div>

          <button type="button" class="btn btn-primary rounded-pill" id="seeMore">리뷰더보기</button>


          
          <!-- 별점-->
          <form method="post">
            <div class="d-flex justify-content-between align-items-center mb-2">
                <span id ="reviewStar" class="d-flex justify-content-center stars-rating">
                  <span class="restar">
                    ★★★★★
                    <span>★★★★★</span>
                    <input type="range" id="star" name="star" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
                  </span>
                </span>
            </div>
            <!-- 리뷰쓰기--> 
            <div class="input-group" style="background-color: #fff;" >
              <input type="hidden" name="museNo" value="" />
              <input type="hidden" name="mReplyNo" value="" />
              <textarea name="description" class="form-control border" id="mrwrite" name="content" style="background-color: #fff;" placeholder="댓글을 작성해주세요~" rows="4" data-bind-characters-target="#charactersRemaining" maxlength="1000" required></textarea>
              <button type="submit"  class="btn btn-primary" id="replybtn" >등록</button>
            </div> 
              <small class="font-weight-light mx-3">글자수
              <span class="textLength" id="charactersRemaining">1000</span>자 이내</small>
          </form>
        </div>
      </section>

    </div>
    
  




    


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>