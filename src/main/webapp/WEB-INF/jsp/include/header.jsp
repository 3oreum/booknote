<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex h-100 header">
	<%-- 로고 & 검색창--%>
	<div class="d-flex justify-content-center align-items-center col-9 mt-3">
	<%-- <img src="/images/partlyCloudy.jpg"> 
		로고 이미지 저장 후 사용 --%>
		<a href="#"><img alt="로고" src="/static/images/booknoteLogo.png"></a>
		<input type="text" class="form-control col-3 ml-2">
		<input type="button" class="btn btn-secondary" value="검색">
	</div>
	
	<%-- (로그인 x) => 로그인 회원가입 & (로그인 o) => 내정보 로그아웃 --%>
	<div class="d-flex col-3 justify-content-end align-items-center mt-2">
	
		<a href="/user/sign-in-view" class="font-weight-bold mr-5 text-black">로그인</a>
		<a href="/user/sign-up-view" class="font-weight-bold">회원가입</a>
	</div>
</div>
<hr>