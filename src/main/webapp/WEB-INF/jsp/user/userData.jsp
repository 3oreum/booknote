<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<div class="d-flex">
	<%-- 왼쪽 메뉴 --%>
	<aside>
		<div class="ml-3 mb-5">
			<h3>${userLoginId}</h3>
			<small>${userEmail}</small>
		</div>
		<ul class="nav flex-column">
			<li class="nav-item font-weight-bold reviewList"><a href="/user/user-data-view" class="nav-link">리뷰 목록</a></li>
			<li class="nav-item font-weight-bold likeList"><a href="#" class="nav-link">찜 목록</a></li>
			<li class="nav-item font-weight-bold rePassword"><a href="#" class="nav-link">비밀번호 변경</a></li>
			<li class="nav-item font-weight-bold qnaList"><a href="#" class="nav-link">1:1 문의</a></li>
		</ul>
	</aside>
	<div class="vl ml-5"></div>
	<%-- !!!!!!!!! 리뷰  목록  !!!!!!!!! --%>
	<div class="container review">
		<%-- 작성한 리뷰가 있을 때 --%>
		<table class="table text-center yesReview">
			<thead>
				<tr>
					<th>책 제목</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>색칠 공부</td>
					<td><a href="#">심심해서 사봤는데 시간 순삭이에요</a></td>
					<td>2023-11-13</td>
				</tr>
			</tbody>
		</table> <%-- 작성한 리뷰가 있을 때 끝 --%>
		
		<%-- 작성한 리뷰가 없을 때  --%>
		<div class="noReview d-none">
			<span>작성한 리뷰가 없습니다.</span> 
		</div><%-- 작성한 리뷰가 없을 때 끝 --%>
	</div> <%-- !!!!!!!!! 리뷰 목록 끝  !!!!!!!!! --%>
	
	<%-- !!!!!!!!! 찜  목록  !!!!!!!!! --%>	
	<div class="container like d-none">
	<%-- 찜 목록이 있을 때 --%>
		<div class="d-flex">
			<article class="mr-3 book-box">
				<img src="https://shopping-phinf.pstatic.net/main_4230559/42305597619.20230926084733.jpg?type=w300" alt="책1" width="120">
				<div class="font-weight-bold">마흔에 읽는 쇼펜하우어</div>
			</article> <%-- 밑에를 지울거  --%>
			<article class="book-box">
				<img src="https://shopping-phinf.pstatic.net/main_4230559/42305597619.20230926084733.jpg?type=w300" alt="책1" width="120">
				<div class="font-weight-bold">마흔에 읽는 쇼펜하우어</div>
			</article>
		</div> <%-- 찜 목록이 있을 때 끝 --%>
		
		<%-- 찜 목록 없을 때 --%>
	</div> <%-- !!!!!!!!! 찜 목록 끝  !!!!!!!!! --%>
	
	<%-- !!!!!!!!! 비밀번호 변경  !!!!!!!!! --%>
	<div class="container password d-none">
		<div class="box">
			<span class="font-weight-bold m-4">비밀번호 변경</span>
			<form id="rePasswordForm" method="post" action="/user/user-data-view">
				<div class="m-3 d-flex align-items-center">
					<small>기존 비밀번호　</small>
					<input type="password" id="password" name="password" class="form-control col-6 ml-3" placeholder="기존 비밀번호를 입력해 주세요.">
				</div>
				
				<div class="m-3 d-flex align-items-center">
					<small>변경할 비밀번호</small>
					<input type="password" id="rePassword" name="rePassword" class="form-control col-6 ml-3" placeholder="변경할 비밀번호를 입력해 주세요.">
				</div>
				
				<div class="m-3 d-flex align-items-center">
					<small>비밀번호 확인　</small>
					<input type="password" id="confirmPassword" name="confirmPassword" class="form-control col-6 ml-3" placeholder="변경할 비밀번호를 다시 입력해 주세요.">
				</div>
				
				<div class="d-flex justify-content-end">
					<button type="button" id="passwordCheckBtn" class="btn btn-secondary ml-3">변경</button>
				</div>
			</form>
		</div>
	</div> <%-- !!!!!!!!! 비밀번호 변경 끝 !!!!!!!!! --%>
	
		<%-- !!!!!!!!! 1:1문의  !!!!!!!!! --%>
	<div class="container qna d-none">
		<table class="table text-center">
			<thead>
				<tr>
					<th>작성일</th>
					<th>문의 내용</th>
					<th>처리 결과</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>22222</td>
					<td><a href="#">ssssss</a></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div> <%-- !!!!!!!!! 1:1문의 끝  !!!!!!!!! --%>
</div> <%-- 밖 뚜껑!!!! --%>


<script>
$(document).ready(function(){
	
	// 리뷰 목록 클릭 시
/* 	$(".reviewList").on('click', function(e){
		e.preventDefault();
		$('.like').addClass('d-none');
		$('.password').addClass('d-none');
		$('.qna').addClass('d-none');
		
	}); */
	
	// 찜 목록 클릭 시
	$(".likeList").on('click', function(e){
		e.preventDefault();
		$('.review').addClass('d-none');
		$('.password').addClass('d-none');
		$('.qna').addClass('d-none');
		
		$(".like").removeClass('d-none');
	});
	
	// 비밀번호 변경 클릭 시 
	$(".rePassword").on('click', function(e){
		e.preventDefault();
		$('.review').addClass('d-none');
		$('.like').addClass('d-none');
		$('.qna').addClass('d-none');
		
		$(".password").removeClass('d-none');
		
	});
	
	
	// 비밀번호 변경
	$("#passwordCheckBtn").on('click', function(){
		
		let password = $("#password").val();
		let rePassword = $("#rePassword").val();
		let confirmPassword = $("#confirmPassword").val();
		
		if (!password){
			alert("기존 비밀번호가 맞지 않습니다. 다시 확인해 주세요.");
			return;
		}
		
		if (!rePassword || !confirmPassword){
			alert("변경할 비밀번호를 입력해 주세요.");
			return;
		}
		
		if (rePassword != confirmPassword){
			alert("변경할 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
			false;
		}
		
		/* $.post(rePassword, confirmPassword)
		.done(function(data){ 
			// {"code":200, "result":"성공"}
			if (data.code == 200){ // 성공
				alert("비밀번호 변경이 완료되었습니다. 로그인을 해 주세요.");
				location.href = "/user/sign-in-view"; // 로그인 화면으로 이동
			} else {
				// 로직 실패
				alert(data.errorMessage);
			}
		}); */
		
		$.ajax({
			type:"POST"
			, url:"/user/re-password"
			, data:{"password":password, "rePassword":rePassword}
		
			, success:function(data){
				if (data.code == 200){
					alert("비밀번호 변경이 완료되었습니다. 로그인을 다시 해 주세요.");
					location.href = "/user/sign-in-view";
				} else {
					alert(data.errorMessage);
				}
			}
			, error:function(request, status, error){
				alert(request);
				alert(status);
				alert(error);
			}
		});
		
	});
	
	// 1:1문의 클릭 시 
	$(".qnaList").on('click', function(e){
		e.preventDefault();
		$('.review').addClass('d-none');
		$('.like').addClass('d-none');
		$('.password').addClass('d-none');
		
		$(".qna").removeClass('d-none');
	});
});
</script>