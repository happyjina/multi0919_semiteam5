<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원정보 조회(수정)" name="title"/>
</jsp:include>

<style>
	section #enroll-container {text-align: center;}
	section #enroll-container input {margin: 3px;}
	section #enroll-container table {margin: 0 auto;}
	section #enroll-container table th {padding: 0 10px; text-align: right;}
	section #enroll-container table td {padding: 0 10px;text-align: left;}
</style>

<section id="content">
	<h3 align="center">회원정보 조회/수정</h3>
		<form id="enroll-container" action="${path}/member/update" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id" value="${loginMember.id}" readonly required />
					</td>
				</tr>			
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="name"  value="${loginMember.name}"  required />
					</td>
				</tr>		
	
				<tr>
					<th>이메일</th>
					<td>
						<input type="email" name="email" value="${loginMember.email}"  />
					</td>
				</tr>		
				<tr>
					<th>주소</th>
					<td>
						<input type="text" name="address" value="${loginMember.address}" />
					</td>
				</tr>

			</table>
			<input type="button" id="updatePwd" value="비밀번호변경" />
	        <input type="submit" value="정보수정" />
	        <input type="button" id="deleteMember" value="탈퇴" />
		</form>
</section>

<script type="text/javascript">
	$(function () {
		$("#deleteMember").on("click", (e) => {
			if(confirm("정말로 탈퇴하시겠습니까?!")) {
				location.replace('${path}/member/delete');
			}
		});
		
		$("#updatePwd").on("click", (e) => {
			const url = "${path}/member/updatePwd";
			const status = "left=500px,top=200px,width=400px,height=210px"
			open(url, "", status);
		});
	});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






