<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <link rel="stylesheet" href="${path}/resources/css/notice.css">

      
        <!-- 헤더 네비 아래 가운데 큰 배경들-->
        <section>
            <div class="jarallax bg-dark " data-jarallax data-type="scroll-opacity" data-speed="0.7">
              <div class="jarallax-img"><img src="${path}/resources/img/notice.jpg" style="height: 100%; width: 100%;"></div>
              <div class="container position-relative zindex-5 py-sm-4 py-lg-5 mt-4">

                    <h1 class="display-4 text-light text-lowercase pb-sm-2 pb-md-3" style="margin: 10% 10%; text-align: center;">공지사항</h1>
                  
                  </div>
                </div>
                <!--배경-->
          <div class="my_div my_bg"> 
                <div class="index-mid" >
                    
                    <!-- 검색창-->
                    <div class="search-group" style="padding-top: 10px;">
                        <div class="input-group rounded-pill" style="background-color: white;">
                            <span class="input-group-text">
                              <i class="ai-search"></i>
                            </span>
                            <input type="search" class="form-control" placeholder="검색..." >
                            <button type="submit" class="btn btn-primary rounded-pill">검색</button>
                          </div>
                          <div class=" radioCheck align-items-center pt-sm-2 pt-md-3" style="margin-left:380px;">
                            <div class="form-check form-check-inline mb-0" style="width: 200px">
                              <input class="form-check-input" type="radio" name="noticeSearch" value="title" checked id="title">
                              <label class="form-check-label" for="writer">제목</label>
                            </div>

                            <div class="form-check form-check-inline mb-0" style="width: 200px">
                              <input class="form-check-input" type="radio" name="noticeSearch" value="writer" id="writer">
                              <label class="form-check-label" for="title">작성자</label>
                            </div>
                      
                            <div class="form-check form-check-inline mb-0" style="width: 200px">
                              <input class="form-check-input" type="radio" name="noticeSearch" value="content" id="content">
                              <label class="form-check-label" for="content">내용</label>
                            </div>
                      </div>
                      </div>
                    <!----------게시판-------------->
                    <!--글쓰기 내글보기 버튼-->
                    <div class="writeBtn">
                      <button type="button" class="btn btn-primary btn-sm" id="write">
                        <a href="write.html">
                        <i class="ai-edit-alt"></i>
                        &nbsp;글쓰기
                      </a>
                      </button>
  
                      <button type="button" class="btn btn-primary btn-sm" id="myArticle">
                        <a href="myArticle.html">
                        <i class="ai-note"></i>
                        &nbsp;내글보기
                      </a>
                      </button>
                    </div>
                    <!----------------->
                    <div class="table-responsive-notice">
                        <table class="tableNotice" id="type">
                        <thead>
                            <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>좋아요</th>
                            </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="boardNo" id="boardNo">15</th>
                            <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                            <td class="id" id="id">text</td>
                            <td class="createDate" id="createDate">2022-01-01</td>
                            <td class="readcount" id="readcount">조회수입력</td>
                            <td class="good" id="good">좋아요수</td>
                            </tr>
                      <tr>
                        <th scope="boardNo" id="boardNo">14</th>
                        <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                        <td class="id" id="id">text</td>
                        <td class="createDate" id="createDate">2022-01-01</td>
                        <td class="readcount" id="readcount">조회수입력</td>
                        <td class="good" id="good">좋아요수</td>
                        </tr>
                        <tr>
                          <th scope="boardNo" id="boardNo">13</th>
                          <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                          <td class="id" id="id">text</td>
                          <td class="createDate" id="createDate">2022-01-01</td>
                          <td class="readcount" id="readcount">조회수입력</td>
                          <td class="good" id="good">좋아요수</td>
                          </tr>
                      <tr>
                        <th scope="boardNo" id="boardNo">12</th>
                        <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                        <td class="id" id="id">text</td>
                        <td class="createDate" id="createDate">2022-01-01</td>
                        <td class="readcount" id="readcount">조회수입력</td>
                        <td class="good" id="good">좋아요수</td>
                        </tr>
                        <tr>
                          <th scope="boardNo" id="boardNo">11</th>
                          <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                          <td class="id" id="id">text</td>
                          <td class="createDate" id="createDate">2022-01-01</td>
                          <td class="readcount" id="readcount">조회수입력</td>
                          <td class="good" id="good">좋아요수</td>
                        </tr>
                        <tr>
                          <th scope="boardNo" id="boardNo">10</th>
                          <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                          <td class="id" id="id">text</td>
                          <td class="createDate" id="createDate">2022-01-01</td>
                          <td class="readcount" id="readcount">조회수입력</td>
                          <td class="good" id="good">좋아요수</td>
                          </tr>
                          <tr>
                            <th scope="boardNo" id="boardNo">9</th>
                            <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                            <td class="id" id="id">text</td>
                            <td class="createDate" id="createDate">2022-01-01</td>
                            <td class="readcount" id="readcount">조회수입력</td>
                            <td class="good" id="good">좋아요수</td>
                          </tr>
                          <tr>
                            <th scope="boardNo" id="boardNo">8</th>
                            <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                            <td class="id" id="id">text</td>
                            <td class="createDate" id="createDate">2022-01-01</td>
                            <td class="readcount" id="readcount">조회수입력</td>
                            <td class="good" id="good">좋아요수</td>
                            </tr>
                            <tr>
                              <th scope="boardNo" id="boardNo">7</th>
                              <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                              <td class="id" id="id">text</td>
                              <td class="createDate" id="createDate">2022-01-01</td>
                              <td class="readcount" id="readcount">조회수입력</td>
                              <td class="good" id="good">좋아요수</td>
                            </tr>
                          <tr>
                            <th scope="boardNo" id="boardNo">6</th>
                            <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                            <td class="id" id="id">text</td>
                            <td class="createDate" id="createDate">2022-01-01</td>
                            <td class="readcount" id="readcount">조회수입력</td>
                            <td class="good" id="good">좋아요수</td>
                            </tr>
                            <tr>
                              <th scope="boardNo" id="boardNo">5</th>
                              <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                              <td class="id" id="id">text</td>
                              <td class="createDate" id="createDate">2022-01-01</td>
                              <td class="readcount" id="readcount">조회수입력</td>
                              <td class="good" id="good">좋아요수</td>
                            </tr>
                            <tr>
                              <th scope="boardNo" id="boardNo">4</th>
                              <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                              <td class="id" id="id">text</td>
                              <td class="createDate" id="createDate">2022-01-01</td>
                              <td class="readcount" id="readcount">조회수입력</td>
                              <td class="good" id="good">좋아요수</td>
                              </tr>
                              <tr>
                                <th scope="boardNo" id="boardNo">3</th>
                                <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                                <td class="id" id="id">text</td>
                                <td class="createDate" id="createDate">2022-01-01</td>
                                <td class="readcount" id="readcount">조회수입력</td>
                                <td class="good" id="good">좋아요수</td>
                              </tr>
                              <tr>
                                <th scope="boardNo" id="boardNo">2</th>
                                <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                                <td class="id" id="id">text</td>
                                <td class="createDate" id="createDate">2022-01-01</td>
                                <td class="readcount" id="readcount">조회수입력</td>
                                <td class="good" id="good">좋아요수</td>
                                </tr>
                                <tr>
                                  <th scope="boardNo" id="boardNo">1</th>
                                  <td class="title" id="title"><a href="#" >테스트제목입니다</a></td>
                                  <td class="id" id="id">text</td>
                                  <td class="createDate" id="createDate">2022-01-01</td>
                                  <td class="readcount" id="readcount">조회수입력</td>
                                  <td class="good" id="good">좋아요수</td>
                                </tr> 
                        </tbody>
                        </table>
                    </div>
                      
                    <!--게시글 페이지 번호-->
                    <!-- Pagination with prev / next icons + text -->
<nav aria-label="Page navigation notice">
  <ul class="pagination">
    <li class="page-item">
      <a href="#" class="page-link">
        <i class="ai-chevron-left"></i>
        &nbsp;&nbsp;Prev
      </a>
    </li>
    <li class="page-item d-sm-none">
      <span class="page-link pe-none">2 / 5</span>
    </li>
    <li class="page-item d-none d-sm-block">
      <a href="#" class="page-link">1</a>
    </li>
    <li class="page-item d-none d-sm-block" aria-current="page">
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
      <a href="#" class="page-link">
        Next&nbsp;&nbsp;
        <i class="ai-chevron-right"></i>
      </a>
    </li>
  </ul>
</nav>







</div>
</div>         
<!---mid 끝-->
        




            </section>




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>