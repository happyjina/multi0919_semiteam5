<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<style>
	section #enroll-container {text-align: center;}
	section #enroll-container input {margin: 3px;}
	section #enroll-container table {margin: 0 auto;}
	section #enroll-container table th {padding: 0 10px; text-align: right;}
	section #enroll-container table td {padding: 0 10px;text-align: left;}
</style>



<section id="content">
	<h3 align="center">회원가입 정보</h3>
		<form id="enroll-container" name="memberEnrollFrm" action="${path}/member/enroll" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td>
						<input type="hidden" name="kakaoToken" value="${kakaoMap.id}">
						<input type="text" name="id" value="${kakaoMap.email}" id="newId" placeholder="아이디 (4글자 이상)" required />
						<input type="button" id="checkDuplicate" value="중복검사"/>
					</td>
				</tr>			
				<tr>
					<th>패스워드</th>
					<td>
						<input type="password" name="password" id="pass1" required />
					</td>
				</tr>			
				<tr>
					<th>패스워드 확인</th>
					<td>
						<input type="password" id="pass2" required />
					</td>
				</tr>		
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="name" value="${kakaoMap.nickname}" required />
					</td>
				</tr>		
	
				<tr>
					<th>이메일</th>
					<td>
						<input type="email" name="email" />
					</td>
				</tr>		
				<tr>
					<th>주소</th>
					<td>
						<input type="text" name="address" />
					</td>
				</tr>

			</table>
			<input type="submit" id="enrollSubmit" value="가입"/>
			<input type="reset" value="취소"/>
		</form>

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
</section>










