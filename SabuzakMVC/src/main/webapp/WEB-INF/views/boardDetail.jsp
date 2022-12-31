<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


 <link rel="stylesheet" href="${path}/resources/css/boardDetail.css">

    <!-- 게시글 상세보기 start!!!!!!!!!!!!-->
    <div class="my_div my_bg">  
      
      <!-- 게시판상세 메인 이미지-->
      <section class="boardMain">
        <img src="${path}/resources/img/boardMainImage.JPG" style="width: 100%; height: 500px;">
        <h1 class="main_image_text" style="font-size:50px">자유게시판</h1>
      </section>

      
      
      <div class="container">
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
              <li class="breadcrumb-item"><a href="Board.html">게시판</a></li>
              <li class="breadcrumb-item active" aria-current="page" id="brMuName">게시글 상세보기</li>
            </ol>
          </section>

          <!-- 게시판 상세보기 -->
          <section class="container ">
            <h3 class="boardDetail_text">게시글 상세보기</h3>
                        
                      
          <div class="bd">
              <div class="ct">
              <!-- 게시글 카테고리  -->
                <div class="category" name="category" >
                  <span>카테고리</span>
                </div>
              <!--제목-->
              <div id="tt" class="input-group input-group-sm">
                <input type="text" class="form-control" name="title" id="title" value="제목제목제목사부작사부작사부작"readonly>
              </div>

              <!--작성자 작성일 조회수 좋아요-->
            <div class="etcetc">
              <div class="etc">
                <div class="name" id="memberNo">
                  김땡땡
                </div>
                <div class="createDate" id="createDate">2022-00-00</div>
                <div class="readCount" id="readcount">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" id="icon" viewBox="0 0 16 16">
                    <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                    <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                  </svg>111</div>
                <div class="likecount" id="good">
                <i class="ai-like" id="icon"></i>3</div>
              </div>
            </div>
            
            <!-- Textarea -->
            <div class="content mb-3">
              <textarea class="form-control my-4" id="content" rows="20" name="content" readonly>글글글글글글글글글글글글글글글글글글글글글글글글글글글글글글글글글글</textarea>
            </div>
            
            <!-- File  -->
            <div class="file mb-3" >
              <a href="${path}/resources/img/sabuzak_logo_black.png" download="renamedFileName" id="renamedFileName">
              <button type="button" class="btn btn-outline-primary">첨부파일</button>
              <img src="${path}/resources/img/sabuzak_logo_black.png" width="128" height="128"/></a>
            </div> 

            <!--좋아요-->
            <div class="like" >
              <button type="button" class="btn btn-secondary active" id="boardLike" ><i class="ai-like"></i>좋아요</button>
            </div>


            <!--수정 삭제 목록 글쓰기-->
            <div class="crud">
              
                <button type="button" class="btn btn-primary btn-sm" id="boardUp">수정</button>
                <button type="button" class="btn btn-primary btn-sm" id="boardDel">삭제</button>

                <button type="button" class="btn btn-primary btn-sm" onclick="location.href='Board.html'">목록</button>
                <button type="button" class="btn btn-primary btn-sm" id="wr" onclick="location.href='write.html'">글쓰기</button>
            </div>


            </div>
          </div>
          </section>
                    
       <!-- 댓글!!!!!!!!!!!!!-->
      <section class="">
        <div class="container ">
          <div class="replyHead">
            <h5>댓글</h5>
          </div>
          
          <!--댓글-->
          <div class="replyWrite">

            <div class="reviewlist">
              <h6 class="replyName" id="bReplyNo">김땡땡</h6> 
              <div class="replyDate" id="createDate">2022-00-00</div>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="replyContent" id="content">아름다워요!</p> 
            </div>
            <div class="reviewlist">
              <h6 class="replyName" id="bReplyNo">김땡땡</h6> 
              <div class="replyDate" id="createDate">2022-00-00</div>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="replyContent" id="content">아름다워요!</p> 
            </div>
            <div class="reviewlist">
              <h6 class="replyName" id="bReplyNo">김땡땡</h6> 
              <div class="replyDate"  id="createDate">2022-00-00</div>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="replyContent" id="content">아름다워요!</p> 
            </div>

            <div class="reviewlist">
              <h6 class="replyName" id="bReplyNo">김땡땡</h6> 
              <div class="replyDate" id="createDate">2022-00-00</div>
              <div class="trashbtn">
                <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle zindex-5 " type="button"><i class="ai-trash fs-xl text-danger"></i></button>
              </div>
              <p class="replyContent" id="content">아름다워요!</p> 
            </div>

          </div>

          <button type="button" class="btn btn-primary rounded-pill" id="seeMore">리뷰더보기</button>


          <!-- 댓글달기-->
          <form method="post"> 
            <div class="input-group" style="background-color: #fff;" >
              <input type="hidden" name="bReplyNo" value="" />
              <input type="hidden" name="boardNo" value="" />
              <textarea name="reWrite" class="form-control border" id="content"style="background-color: #fff;" placeholder="댓글을 작성해주세요~" rows="4" data-bind-characters-target="#charactersRemaining"  maxlength="1000" required></textarea>
              <button type="submit"  class="btn btn-primary" id="replybtn" >등록</button>
            </div> 
              <small class="font-weight-light mx-3">글자수
              <span class="textLength" id="charactersRemaining">1000</span>자 이내</small>
          </form>

        </div>
        </section>
                  <!-- 이전글 다음글-->
                  <div class="pn">
                    <nav aria-label="Page navigation example">
                      <ul class="pagination">
                        <li class="page-item" id="pi">
                          <a href="#" class="page-link">
                            <i class="ai-arrow-left fs-xl mb-1"></i>
                            이전글
                          </a>
                        </li>
                        
                        <li class="page-item" id="pi">
                          <a href="#" class="page-link">
                            다음글
                            <i class="ai-arrow-right fs-xl mb-1"></i>
                          </a>
                        </li>
                      </ul>
                    </nav>
                  </div>
      </section>
            
                    
                    
                    
                    
                    









        </div>
      </div>
    </div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>