<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center align-items-center">
	<div class="login-box">
		
		<form id="loginForm" action="/user/sign-in" method="post">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">ID</span>
				</div>
				<input type="text" class="form-control" id="loginId" name="loginId" placeholder="ID를 입력해 주세요.">
			</div>
	
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">PW</span>
				</div>
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해 주세요.">
			</div>
			
			<input type="submit" id="loginBtn" class="btn btn-block btn-secondary" value="로그인">
		</form>
	</div>
</div>

<script>

</script>
