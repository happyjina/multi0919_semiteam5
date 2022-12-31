<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <link rel="stylesheet" href="${path}/resources/css/myArticle.css">

<!--section-->
<br/>
<br/>
<br/>
<br/>
<section class="body">
  <!--헤더 그림-->
  <div class="bodyimage">
    <div class=" min-vh-40" data-jarallax data-type="scroll-opacity" data-speed="0.7">
      <div class="jarallax-img"><img src="${path}/resources/img/myarticleimg.png" width="100%" ></div>
    </div>
  </div>
<div class="my_div my_bg">  
        <!--홈버튼 가이드-->
        <div class="home-mu">
          <ol id="bc2" class="breadcrumb">
            <li class="breadcrumb-item doing">
              <a href="index.html">
                <i class="ai-home fs-base me-2"></i>
                Home
              </a>
            </li>
            <li class="breadcrumb-item"><a href="Board.html">게시판</a></li>
            <li class="breadcrumb-item active" aria-current="page" id="bWrite">내가 쓴 글 보기</li>
          </ol>
        </div>
        <!--내 글 보기-->
        <div class="myarticle">
          <h3 class="myarticle-text">내가 쓴 글 보기</h3>
          <form action="#" id="search-input">
            <div class="input-group mb-3" >
              <i class="bi bi-search"></i>
              <input class="form-control bg-transparent border-dark" type="text" placeholder="검색">
              <button class="btn" type="submit">검색</button>
            </div>
          </form>

          <div class="radiobutton" style="text-align: center;">
            <input type="radio" name="chk_info" class="radiobut" value="title">제목
            <input type="radio" name="chk_info" class="radiobut" value="writer">작성자
            <input type="radio" name="chk_info" class="radiobut" value="centent">내용
          </div>
        </div>
          <div class="boardbox">
              <table id="table">
                <tr class="boardbox-headline">
                  <th>번호</th>
                  <th class="myarticletitle">제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회수</th>
                  <th>좋아요</th>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                <tr class="boardbox-detail">
                  <td>boardNo</td>
                  <td><a href="#">title[bReplyCount]</a></td>
                  <td>id</td>
                  <td>createDate</td>
                  <td>look</td>
                  <td>good</td>
                </tr>
                
              </table>
          </div>
          
          <div class="myarticlelist">
          <button type="button" id="myarticlelistbutton"><a href="Board.html">목록</a>
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
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>