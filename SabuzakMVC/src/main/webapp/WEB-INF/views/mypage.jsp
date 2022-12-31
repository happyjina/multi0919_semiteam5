<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


  
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <link rel="stylesheet" href="${path}/resources/css/mypage.css">

     <!-- start!!!!!!!!!!-->
    <div class="my_div my_bg">  
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
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
              <li class="breadcrumb-item"><a href="mypage.html">내 계정</a></li>
              <li class="breadcrumb-item active" aria-current="page" id="mypage">마이페이지</li>
            </ol>
          </section>
          <!-- 사이드 바!!!!!!!-->
          <aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
            <div class="position-lg-sticky top-0">
              <div class="d-none d-lg-block" style="padding-top: 105px;"></div>
              <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                <div class="offcanvas-body">
                  <div class="pb-2 pb-lg-0 mb-4 mb-lg-5"><img class="d-block mb-2" src="${path}/resources/img/sabuzak_logo_black.png" width="80" alt="Isabella Bocouse">
                    <h3 class="h5 mb-1" id="name">김땡땡</h3>
                    <p class="fs-sm text-muted mb-0" id="email">test1@multi.com</p>
                  </div>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 계정</h4>
                    <a class="nav-link fw-semibold py-2 px-0" href="mypage.html"><i class="ai-user-check fs-5 opacity-60 me-2"></i>마이페이지</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="myArticle.html"><i class="ai-messages fs-lg opacity-70 me-2"></i>내가 쓴 글보기</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="antiWishlist.html"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 유물</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="museumWishlist.html"><i class="ai-heart fs-lg opacity-70 me-2"></i>내가 찜한 박물관</a>
                  </nav>
                  <nav class="nav flex-column"><a class="nav-link fw-semibold py-2 px-0" href="index.html"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a></nav>
                </div>
              </div>
            </div>
          </aside>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <h1 class="h2 mb-4 mx-4">마이페이지</h1>
            <!-- Basic info-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
         <!--  <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 " style="margin-left: 24%;"><i class="ai-user text-primary lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0" >기본정보</h2>
                </div>
                <div class="row g-3 g-sm-4 mt-0 mt-lg-2">
                
                  <div class="mb">
                    <label class="form-label" for="id">아이디</label>
                    <input class="form-control" type="text" value="kimddangddang" id="id" readonly>
                  </div>
                  <div class="mb">
                    <label class="form-label" for="name">이름</label>
                    <input class="form-control" type="text" value="김땡땡" id="name" readonly>
                  </div>
                 
                  <div class="mb">
                    <label class="form-label" for="email">이메일</label>
                    <input class="form-control" type="email" value="sabuzak@multi.com" id="email">
                  </div>
                  
                  <div class="mb">
                    <label class="form-label" for="addr">주소</label>
                        <div style="margin-left: 25%;">
                          <div class="input-group rounded-pill" id="zipcode1" >
                            <span class="input-group-text">
                              <i class="ai-search"></i>
                            </span>
                            <input class="form-control" type="text" id="zipcode" value="55001">
                          </div>
                          <div class="ad">
                            <input class="form-control" style="margin: 0; width: 290px;" type="text" id="address" value="서울시 강남구 역삼동"><br>
                          </div>
                        </div>
                          <input class="form-control" type="text" id="address" value="태해란로212">
                  </div>

                 
                  </div>
                  <div class="col-12 d-flex justify-content-end pt-5">
                    <button class="btn btn-secondary" type="reset">초기화</button>
                    <button class="btn btn-primary ms-3" type="submit">수 정</button>
                  </div>
                </div>
              </div>-->   


                <div class="card-body">
                  <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
                    <h2 class="h4 mb-0">기본정보</h2>
                  </div>
                  <div class="row g-3 g-sm-4 mt-0 mt-lg-2">
                    <div class="mb">
                      <label class="form-label" for="id">아이디</label>
                      <input class="form-control" type="text" value="kimddangddang" id="id" readonly>
                    </div>
                    <div class="mb">
                      <label class="form-label" for="name">이름</label>
                      <input class="form-control" type="text" value="김땡땡" id="name" readonly>
                    </div>
                    <div class="mb">
                      <label class="form-label" for="email">이메일</label>
                      <input class="form-control" type="email" value="sabuzak@multi.com" id="email">
                    </div>
                    <div class="mb">
                      <label class="form-label" for="addr">주소</label>
                          <div style="margin-left: 25%;">
                            <div class="input-group rounded-pill" id="zipcode1" >
                              <span class="input-group-text">
                                <i class="ai-search"></i>
                              </span>
                              <input class="form-control" type="text" id="zipcode" value="55001">
                            </div>
                            <div class="ad">
                              <input class="form-control" style="margin: 0; width: 290px;" type="text" id="address" value="서울시 강남구 역삼동"><br>
                            </div>
                          </div>
                            <input class="form-control" type="text" id="address" value="태해란로212">
                    </div>
                    
    
                    <div class="col-12 d-flex justify-content-end pt-5">
                      <button class="btn btn-secondary" type="reset">초기화</button>
                      <button class="btn btn-primary ms-3" type="submit">수 정</button>
                    </div>
                  </div>
                </div>

            </section>
           <!-- Password-->
           <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" >
            <div class="card-body">
              <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3"><i class="ai-lock-closed text-primary lead pe-1 me-2"></i>
                <h2 class="h4 mb-0">비밀번호 변경</h2>
              </div>
              <div class="row align-items-center g-3 g-sm-4 pb-3">
                <div class="col-sm-6">
                  <label class="form-label" for="current-pass">현재 비밀번호</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" value="hidden@password" id="current-pass">
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                </div>
                <div class="col-sm-6">비밀번호가 기억나지 않는다면?<a class="d-inline-block fs-sm fw-semibold text-decoration-none mt-sm-4" href="passwordRecovery.html">&nbsp&nbsp비밀번호 찾기</a></div>
                <div class="col-sm-6">
                  <label class="form-label" for="new-pass">새 비밀번호</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" id="new-pass">
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                </div>
                <div class="col-sm-6">
                  <label class="form-label" for="confirm-pass">비밀번호 확인</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" id="confirm-pass">
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                </div>
              </div>
              <div class="alert alert-info d-flex my-3 my-sm-4"><i class="ai-circle-info fs-xl me-2"></i>
                <p class="mb-0">비밀번호는 최소 8자이상 입력해주세요.</p>
              </div>
              <div class="d-flex justify-content-end pt-3">
                <button class="btn btn-secondary" type="reset">취 소</button>
                <button class="btn btn-primary ms-3" type="submit">변 경</button>
              </div>
            </div>
          </section>
          
          <!-- Delete account-->
          <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 my-5"> 
            <div class="card-body">
              <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3"><i class="ai-trash text-primary lead pe-1 me-2"></i>
                <h2 class="h4 mb-0">계정 삭제</h2>
              </div>
              <div class="alert alert-warning d-flex mb-4"><i class="ai-triangle-alert fs-xl me-2"></i>
                <p class="mb-0">언제든지 사부작 계정을 삭제할 수 있습니다. 그러나 계정이 삭제되고 나면 마음이 바뀌어도 계정을 복구하지 못할 수 있습니다.</p>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="confirm">
                <label class="form-check-label text-dark fw-medium" for="confirm">계정을 삭제하시겠습니까?</label>
              </div>
              <div class="d-flex flex-column flex-sm-row justify-content-end pt-4 mt-sm-2 mt-md-3">
                <button class="btn btn-danger" type="button"><i class="ai-trash ms-n1 me-2"></i>계정 삭제</button>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>



