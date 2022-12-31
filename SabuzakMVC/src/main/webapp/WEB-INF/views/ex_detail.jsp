<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="${path}/resources/css/ex_detail.css">
<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>

<main class="page-wrapper">

<section>
          
        <!-- 헤더 네비 아래 특별전시 창-->
      <!-- <div class="ex">
        <i class="ai-home"></i> &nbsp;<i class="ai-chevron-right"></i>&nbsp;특별전시&nbsp;<i class="ai-chevron-right">&nbsp;</i>현재전시
      </div> -->

      <!-- <div class="ex">
        <i class="ai-home"></i> &nbsp;<i class="ai-chevron-right"></i>&nbsp;특별전시&nbsp;<i class="ai-chevron-right">&nbsp;</i>전시예정
      </div> -->
  <!--배경-->
      <div class="index-mid" style="background-image: url(${path}/resources/img/back.JPG);">


      <div class="exNav"><img src="${path}/resources/img/ex_detail.png"></div>







<!--검색창-->
<!-- select -option 변경하는 방법 알아보기!!!!!!!!!!!!! -->
<div class="exhibitionSearch">
<div class="input-group">

    <!------>

<!--------------------------------------------------------------->
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
    전체 <span>10,234</span>건의 유물이 있습니다.
</div>
<div>
<!--진행예정 포스터-->
<div class="exSearchResult">
  <!--전시1-->
 
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition01.JPG" >
<p>국립중앙박물관</p>
<h5>영원한 삶의 집, 아스타나 고분</h5>
<p>2022-07-16~2023-07-15</p>
</a>
</div>
<!--전시2-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition07.JPG" >
  <p>국립중앙박물관</p>
  <h5>일본 불교조각의 세계</h5>
  <p>2022-04-05~2023-10-09</p>
</a>
</div>
<!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition04.JPG" >
  <p>국립중앙박물관</p>
  <h5>귀얄과 분장의 묘미</h5>
  <p>2022-12-09~2023-08-31</p>
</a></div>
</div>

<div class="exSearchResult">
<!--전시4-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition06.JPG">
    <p>국립중앙박물관</p>
    <h5>합스부르크 600년, 매혹의 걸작들</h5>
    <p>2022-10-25~2023-03-01</p>
  </a></div>

  <!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition08.jpg">
    <p>국립광주박물관</p>
    <h5>어느 수집가의 초대</h5>
    <p>2022-10-05~2023-01-29</p>
  </a></div>

  <!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition04.JPG">
    <p>국립중앙박물관</p>
    <h5>귀얄과 분장의 묘미</h5>
    <p>2022-12-09~2023-08-31</p>
  </a></div>
</div>

<div class="exSearchResult">
  <!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition04.JPG">
    <p>국립중앙박물관</p>
    <h5>귀얄과 분장의 묘미</h5>
    <p>2022-12-09~2023-08-31</p>
  </a></div>

  <!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition04.JPG">
    <p>국립중앙박물관</p>
    <h5>귀얄과 분장의 묘미</h5>
    <p>2022-12-09~2023-08-31</p>
  </a></div>

  <!--전시3-->
<div class="exResult"><a href="#"><img src="${path}/resources/img/exhibition04.JPG">
    <p>국립중앙박물관</p>
    <h5>귀얄과 분장의 묘미</h5>
    <p>2022-12-09~2023-08-31</p>
  </a></div>

</div>
</div>

</div>



                    <!--게시글 페이지 번호-->
                    <!-- Pagination with prev / next icons + text -->
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a href="#" class="page-link">
        <i class="ai-chevron-left"></i>
        &nbsp;&nbsp; Prev
      </a>
    </li>

    <li class="page-item d-none d-sm-block" >
      <a href="#" class="page-link">1</a>
    </li>
    <li class="page-item d-none d-sm-block" >
        <a href="#" class="page-link">2</a>
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
      <a href="#" class="page-link">
        Next&nbsp;&nbsp;
        <i class="ai-chevron-right"></i>
      </a>
    </li>
  </ul>
</nav>
<br>
</div>
</section>


</main>



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>