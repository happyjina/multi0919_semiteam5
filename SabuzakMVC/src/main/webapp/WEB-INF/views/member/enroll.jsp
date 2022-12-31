<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>사부작 | 회원가입</title>
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
<!--아이콘-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <meta name="theme-color" content="white">

    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <!-- Theme mode-->
    <script>
      let mode = window.localStorage.getItem('mode'),
          root = document.getElementsByTagName('html')[0];
      if (mode !== undefined && mode === 'dark') {
        root.classList.add('dark-mode');
      } else {
        root.classList.remove('dark-mode');
      }
    </script>
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
    <link rel="stylesheet" href="${path}/resources/css/enroll.css">
  </head>
  <!-- Body-->
  <body>
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
<main class="enroll">
    <!--회원가입 왼쪽-->
    <form id="enroll-container" name="memberEnrollFrm" action="${path}/member/enroll" method="post">
    <div class="enroll-left" style="background-image: url(${path}/resources/img/back1.JPG);"/>
        <img src="${path}/resources/img/sabuzak_logo_black.png" width="200px" height="200px"/>
        <h3>회원가입</h3>
        <h5>사부작에 오신 걸 환영합니다.</h5>
        <h2 class="h6 text-center pt-3 pt-lg-4 	 ">SNS로 가입하기</h2>
        <button class="btn kakao" type="submit" style="text-align: center; width:88%; border: none; margin-bottom: 10px;"><img src="${path}/resources/img/kakao_login_medium_wide.png" alt="kakao"></button>
        <h6 class="gotologin">계정이 있으신가요?&nbsp;&nbsp;<a href="${path}/login">로그인</a></h6>
        <br><br><br><br><br><br><br>
    </div>
    <div class="enroll-right">
    <!-- Home button--><a class="text-nav btn btn-icon  homebutton"  href="${path}" data-bs-toggle="tooltip"  title="메인으로" style="margin-top: 10px;">돌아가기<img src="${path}/resources/img/homepage_icon.png"></a>

		<form id="enroll-container" name="memberEnrollFrm" action="${path}/member/enroll" method="post">
			<table class="inputtag">
				<tr>
					 <th><label for="text-input" class="form-label inputtag-text">아이디 *</label></th>
					<td>
					  <input class="form-control" type="text" name="id" id="newId" value="${member.id}" placeholder="아이디를 입력해주세요." required />
		<button type="button" onclick="fn_dbCheckId()" name="dbCheckId" class="checkbut" id="checkDuplicate" value="중복검사"/>
			  중복확인
      </button>
      </td>
		</tr>		
		<tr>
      <th><label for="text-input" class="form-label inputtag-text ">비밀번호 *</label></th>
      <td>	
				<div  class="pass-input">
        <input class="form-control" type="password" id="pass1" name="password" placeholder="비밀번호를 입력해주세요." required>
        <i class="bi bi-eye" type="button" ></i>
      </div>
      </td>
    </tr>
<tr>
      <th><label for="text-input" class="form-label inputtag-text">비밀번호 확인 *</label></th>
      <td>
        <div class="pass-input">
          <input class="form-control" type="password" id="pass2" required >
          <i class="bi bi-eye" type="button"></i>
        </div> 
      </td>
    </tr>			
		<tr>
      <th><label for="text-input" class="form-label inputtag-text">이름 *</label></th>
      <td>
        <input class="form-control" type="text" name="name" id="text-input" value="${member.name }" placeholder="이름" required />
      </td>
    </tr> 
	<tr>
      <th><label for="email-input" class="form-label inputtag-text">이메일 *</label></th>
      <div class="email-input">
      <td>
          <input class="form-control-email" type="text" id="email-input"  name="email"required /><h5>@</h5>
        <select class="emails">
          <option value="naver">naver.com</option>
          <option value="hanmail">hanmail.com</option>
          <option value="nate">nate.com</option>
          <option value="daum">daum.net</option>
          <option value="hotmail">hotmail.com</option>
          <option value="dreamwiz">dreamwiz.com</option>
          <option value="gmail">gmail.com</option>
        </select>
      </td>
    </div>
    </tr>
			
<tr>
      <th><label for="text-input" class="form-label inputtag-text">주소</label></th>
      <td class="postcard" ><input class="form-control1" id="sample6_postcode"  placeholder="우편번호" readonly />
        <i class="bi bi-search" type="button" onclick="sample6_execDaumPostcode()" ></i>
        </td></tr>
        
       <tr> <th></th>
        <td class="postcard" ><input class="form-control" id="sample6_address" readonly/></td>
    </tr>

    <tr> <th></th>
      <td class="postcard" >
        <input class="form-control" type="text" id="sample6_address2" name="address" placeholder="상세주소를 입력해주세요."/></td>
    </tr>	
			</table>
	
			<div class="under-button">
  <div class="form-group  mb-0 ">
    <button class="resetbut" type="reset">초기화</button>
    <button class="searchbut" type="submit" onclick="passwordcheck()"  id="enrollSubmit"><a href="${path}">가입하기</a></button>
   </div>
   </div>
</div>
</div> 
			
</form>
</main>
<!-- Copyright -->
<br>
<div class="copyright">
<p><span class="text-muted">&copy; All rights reserved. Made by 사부작</span></p>
</div>

    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/css/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/css/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/css/Around/assets/js/theme.min.js"></script>

  </body>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script>
      $(document).ready(function(){
    $('.pass-input i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"bi bi-eye-slash")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"bi bi-eye")
            .prev('input').attr('type','password');
        }
    });
});

    </script>
   <script type="text/javascript">
	$(function() {
		$("#pass2").blur((event) => {
			let pass1 = $("#pass1").val();			
			let pass2 = $(event.target).val();
			
			if(pass1.trim() != pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#pass1").val("");
				$(event.target).val("");
				$("#pass1").focus();
			}
		});
    	
	    $("#enrollSubmit").on("click", () => {
	    	// TODO 전송하기 전에 각 영역에 유효성 검사로직을 추가하는 부분!
	    	//return false;
	    });
	    
	    // 아이디 중복을 확인하는 AJAX 코드
	    $("#checkDuplicate").on("click", () => {
	    	let id = $("#newId").val().trim();
	    	
	    	if(id.length < 4){
	    		alert("아이디는 최소 4글자입니다.")
	    		return;
	    	}
	    	
	    	$.ajax({
	    		type:"get",
	    		url:"${path}/member/idCheck",
	    		data:{id}, // 속성값이 키값과 같은 이름을 가질때 하나로만 key-value 채운다.
	    		success:
	    			(data)=>{ // validate key값
	    				console.log(data);
	    				if(data.validate === true){
	    					alert("이미 사용중인 아이디입니다.")
	    				} else{
	    					alert("사용 가능합니다.")
	    				}
	    			},
	    		error:
	    			(e)=>{
						console.log(e);	    				
	    			}
	    	});
	    });
	});
</script>
</html>











