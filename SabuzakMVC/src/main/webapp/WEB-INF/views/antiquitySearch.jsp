<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <link rel="stylesheet" href="${path}/resources/css/antiquitySearch.css">

     <!-- 헤더 네비 아래 가운데 큰 배경들-->
    <section>
      <div class="jarallax">
        <section class="boardMain">
          <img src="${path}/resources/img/relic_mainimg.jpg" style="width: 100%; height: 500px;">
          <h1 class="main_image_text" style="font-size:50px">유물검색</h1>
          <h4 class="main_image_text2">전국 박물관의 다양한 유물들을 검색해보세요</h4>
        </section>
     
      </div>

      <!-- 유물 검색 배경(청록색) -->
      <section class="search_container">
        <div class="search">
          <div class="input-group bg-white col-md-8 mx-5 mb-5 my-2" style="width: 74%; ">
            <div class="btn-group dropdown" id="antBtn" >                      
              <form name=form method=post action="" >         
                  <select class="form-select" id="antCategory" required>
                    <option value="category">전체</option>
                    <option value="antName">소장품명</option>
                    <option value="antNationalityName1">국적/시대</option>
                    <option value="antPlaceLandName1">출토지</option>
                    <option value="antId">소장품번호</option>
                  </select>
            </div>
                  <input type="text" class="form-control text-center" placeholder="카테고리에 맞는 검색어를 입력해주세요.">
                  <button type="button" class="btn btn-primary">검색</button>
              </form>
          </div>

          <!-- 검색 필터 부분-->
          <div class="filter_container">
            <div class="filter_title">
              <h3 style="color: white;">&nbsp;&nbsp;국적/시대</h3>
              <h3 style="color: white;">출토지</h3>
              <h3 style="color: white; margin-left: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;재질</h3>
            </div>
            <div class="filter1">
              <!-- 국적 -->
              <script>
                function getCheckboxValue()  {
                  // 선택된 목록 가져오기
                  const query = 'input[name="countryBox"]:checked';
                  const selectedEls = 
                      document.querySelectorAll(query);
                  
                  // 선택된 목록에서 value 찾기
                  let result = '';
                  selectedEls.forEach((el) => {
                    result += '\u00a0\u00a0\u00a0'+ el.value;
                  });
                  
                  // 출력
                  document.getElementById('result').innerText
                    = result;
                }
              </script>
              <div class="country">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" name="countryBox" id="" value="한국" onclick="getCheckboxValue()">
                  <label for="ex-check-1">한국(100)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" name="countryBox" id="" value="중국" onclick="getCheckboxValue()">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox" value="일본"  onclick="getCheckboxValue()">
                  <label class="form-check-label" for="countryBox">일본(1879)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">아시아(953)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">유럽(794)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">기타(291)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2" name="countryBox">
                  <label class="form-check-label" for="countryBox">중국(200)</label>
                </div>
              </div>
              <!-- 시대 -->
              <div class="era">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">조선(39284)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">원(26465)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">고려(20738)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">청동기(9142)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-2">
                  <label class="form-check-label" for="ex-check-2">신라(7265)</label>
                </div>
              </div>
            </div>
            <div class="filter2">
              <!-- 특별시/도 -->
              <div class="do">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
              </div>
              <!-- 시/군 -->
              <div class="si">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
              </div>
            </div>

            <div class="filter3">
              <!-- 재질1 -->
              <div class="material1">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
              </div>
              <!-- 재질2 -->
              <div class="material2">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="ex-check-1">
                  <label class="form-check-label" for="ex-check-1">일제강점(39454)</label>
                </div>

              </div> <!-- material2 끝 -->
            </div> <!-- filter3 끝-->
            <img src="${path}/resources/img/selected_fiters_icon.png">
            <div class="filter_foot">
              <h6 id="result">&nbsp&nbsp&nbsp아직 선택 안함</h6>
              <button type="button" id="resetButton">
              초기화<i class="ai-rotate-left" style="padding-left: 10px; color: black;"></i></button>
            </div>
            <!-- <button type="button" id="resetButton"><img src="${path}/resources/img/initial.png" width="25px" height="25px"></button> -->
            <script>
              document.getElementById('resetButton').addEventListener('click', function () {
                let checkboxes = document.querySelectorAll('input[type="checkbox"]');

                for (var i = 0; i < checkboxes.length; i++) {
                  checkboxes[i].checked = false;
                }
              });
            </script>
          </div> <!-- filter container 끝-->
      </section> <!-- serach_container 끝 -->

      <!-- 유물 부분 컨테이너-->
      <div class="antiquity_container" style="background-image: url('${path}/resources/img/back.JPG');">
        <!-- 이동 경로 -->
        <div class="route">
          <ol id="bc2" class="breadcrumb">
            <li class="breadcrumb-item doing">
              <a href="index.html">
                <i class="ai-home fs-base me-2"></i>
                Home
              </a>
            </li>
            <li class="breadcrumb-item"><a href="antiquitySearch.html">유물</a></li>
            <li class="breadcrumb-item active" aria-current="page" id="antSearch" name="antSearch">유물검색</li>
          </ol>
          </nav>
        </div> <!-- 이동 경로 끝-->
        <!-- 전체 검색 결과 부분 -->
        <div class="result">
          전체 <span>10,234</span>건의 유물이 있습니다.
        </div> <!-- 전체 검색 결과 부분 끝-->

        <!-- 유물 카드 보여주는 부분 -->
        <div class="antiquity">
          <div class="row">
            <!-- 찜버튼 -->
              <i class="bi-heart" id="heart1" name="heart1"></i>
              <i class="bi-heart" id="heart2" name="heart2"></i>
              <i class="bi-heart" id="heart3" name="heart3"></i>
              <i class="bi-heart" id="heart4" name="heart4"></i>
              <i class="bi-heart" id="heart5" name="heart5"></i>
              <i class="bi-heart" id="heart6" name="heart6"></i>
              <i class="bi-heart" id="heart7" name="heart7"></i>
              <i class="bi-heart" id="heart8" name="heart8"></i>
              <i class="bi-heart" id="heart9" name="heart9"></i>
              <i class="bi-heart" id="heart10" name="heart10"></i>
              <i class="bi-heart" id="heart11" name="heart11"></i>
              <i class="bi-heart" id="heart12" name="heart12"></i>
            
            <script>
     
              var isHeartChecked = false;

              if (isHeartChecked == false)
              {
                  $(this).attr('class', 'bi bi-heart');
              } else if (isHeartChecked == true)
              {
                  $(this).attr('class', 'bi bi-heart-fill');
              }

              $('.bi-heart').on('click', function () {
                  isHeartChecked = !isHeartChecked;
                  if (isHeartChecked == false)
                  {
                      $(this).attr('class', 'bi bi-heart');
                  } else if (isHeartChecked == true)
                  {
                      $(this).attr('class', 'bi bi-heart-fill');
                  }
              });

            </script>



			<c:forEach var="item" items="${list }">
	            <div class="col">
	              <a href="${path}/antiquityDetail?antNo=${item.antNo}"
	                class="card-hover card-lifted d-inline-block text-center text-decoration-none mt-2 mb-3">
	                <img src="http://${item.antImgUri}" class="card-lifted d-block rounded-5 mb-3"
	                  width="320">
	                <h3 class="h5 mb-1">${item.antNameKr}</h3>
	              </a>
	            </div>
			</c:forEach>            
            
          
          
          <!-- 페이지 네비게이션 -->
          <div class="page_container">
            <nav aria-label="Page navigation example">
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
            </nav><!-- 페이지 네비게이션 끝-->
        </div> <!-- 페이지 컨테이너 끝 -->

        </div> <!-- antiquity 끝-->
      </div> <!-- 유물 부분 컨테이너 끝-->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>



