<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<div class="d-flex h-100 header">
	<%-- 로고 & 검색창--%>
	<div class="d-flex justify-content-center align-items-center col-9 mt-3">
	<%-- <img src="/images/partlyCloudy.jpg"> 
		로고 이미지 저장 후 사용 --%>
		<a href="/book/booknote-view"><img alt="로고" src="/static/images/booknoteLogo.png"></a>
		<input type="text" class="form-control col-3 ml-2">
		<input type="button" class="btn btn-secondary" value="검색">
	</div>
	
	<%-- (로그인 x) => 로그인 회원가입 & (로그인 o) => 내정보 로그아웃 --%>
	<div class="d-flex col-3 justify-content-end align-items-center mt-2">
		
		<c:if test="${not empty userLoginId && userLoginId == admin}">
			<a href="/manager/manager-set-view" class="font-weight-bold mr-5 text-black">관리자 페이지</a>
			<a href="/user/sign-out" class="font-weight-bold">로그아웃</a>
		</c:if>
		<c:if test="${not empty userLoginId}">
		<a href="/user/user-data-view" class="font-weight-bold mr-5 text-black">내 정보</a>
			<a href="/user/sign-out" class="font-weight-bold">로그아웃</a>
		</c:if>
		
		<c:if test="${empty userLoginId}">
			<a href="/user/sign-in-view" class="font-weight-bold mr-5 text-black">로그인</a>
			<a href="/user/sign-up-view" class="font-weight-bold">회원가입</a>
		</c:if>
	</div>
</div>
<hr>