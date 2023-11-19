<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="sign-up-box">
		<form id="signUpForm" method="post" action="/user/sign-up">
			<span class="sign-up-subject">ID</span>
			<%-- 인풋 옆에 중복확인 버튼을 옆에 붙이기 위해 div 만들고 d-flex --%>
			<div class="d-flex ml-3 mt-3">
				<input type="text" id="loginId" name="loginId" class="form-control" placeholder="ID를 입력해주세요">
				<input type="button" id="loginIdCheckBtn" class="btn btn-light" value="중복확인">
			</div>
			
			<%-- 아이디 체크 결과 --%>
			<div class="ml-3 mb-3">
				<div id="idCheckLength" class="small text-danger d-none">ID를 4자 이상 입력해주세요.</div>
				<div id="idCheckDuplicated" class="small text-danger d-none">이미 사용중인 ID입니다.</div>
				<div id="idCheckOk" class="small text-success d-none">사용 가능한 ID 입니다.</div>
			</div>
			
			<span class="sign-up-subject">Password</span>
			<div class="m-3">
				<input type="password" name="password" class="form-control" placeholder="비밀번호를 입력하세요">
			</div>

			<span class="sign-up-subject">Confirm password</span>
			<div class="m-3">
				<input type="password" name="confirmPassword" class="form-control" placeholder="비밀번호를 입력하세요">
			</div>

			<span class="sign-up-subject">Email</span>
			<div class="m-3">
				<input type="text" name="email" class="form-control" placeholder="이메일을 입력하세요">
			</div>
			
			<br>
			<div class="d-flex justify-content-center m-3">
				<button type="submit" id="signUpBtn" class="btn btn-block btn-secondary">가입하기</button>
			</div>
		</form>
	</div>
</div>

<script>
$(document).ready(function(){
	
	
	// 중복 확인
	$("#loginIdCheckBtn").on('click', function(){
		//alert("중복확인");
		
		$('#idCheckLength').addClass('d-none');
		$('#idCheckDuplicated').addClass('d-none');
		$('#idCheckOk').addClass('d-none');
		
		let loginId = $("#loginId").val().trim();
		
		if (loginId.length < 4) {
			$('#idCheckLength').removeClass('d-none');
			return;
		}
		
		$.ajax({
			type:"GET"
			, url:"/user/is-duplicated-id"
			, data:{"loginId":loginId}
		
			, success:function(data){
				if (data.isDuplicatedId){ // 중복
					$("#idCheckDuplicated").removeClass('d-none');
				} else { // 중복 아님 
					$("#idCheckOk").removeClass('d-none');
				}
			}
			, error:function(request, status, error){
				//alert("중복 확인에 실패했습니다.");
				alert(request);
				alert(status);
				alert(error);
			}
		});
		
	});
	
	// 회원가입
	$("#signUpForm").on('submit', function(e){
		//alert("회원가입");
		e.preventDefault();
		
		let loginId = $("input[name=loginId]").val().trim();
		let password = $("input[name=password]").val();
		let confirmPassword = $("input[name=confirmPassword]").val();
		let email = $("input[name=email]").val().trim();
		
		if (!loginId){
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if (!password || !confirmPassword){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if (password != confirmPassword){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		
		if (!email){
			alert("이메일을 입력하세요.");
			return false;
		}
		
		// 아이디 중복 확인이 완료되었는지 확인 => idCheckOk d-none이 있으면 얼럿을 띄워야함
		if ($("#idCheckOk").hasClass('d-none')){
			alert("아이디 중복 확인을 해 주세요.");
			return false;
		}
		
		let url = $(this).attr('action');
		//alert(url);
		let params = $(this).serialize();
		console.log(params);
		
		$.post(url, params)
		.done(function(data){ // response
			// {"code":200, "result":"성공"}
			if (data.code == 200){
				alert("가입을 환영합니다. 로그인을 해 주세요.");
				location.href = "/user/sign-in-view";
			} else {
				alert(data.errorMessage);
			}
			
		});
	});
});
</script>