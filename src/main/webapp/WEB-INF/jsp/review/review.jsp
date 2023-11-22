<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<%-- 책 관련 소개 --%>
	<div class="d-flex ">
		<div>
		<img alt="책이미지" src="https://shopping-phinf.pstatic.net/main_4230559/42305597619.20230926084733.jpg?type=w300" width="100">
		</div>
		<div class="mr-5">
			<span class="d-block mt-2">마흔에 읽는 쇼펜하우어</span>
			<span class="d-block mt-2">강용수</span>
			<span class="d-block mt-2">서양철학</span>
		</div>
		<div class="ml-5">
			<span class="d-block mt-2">책 소개</span>
			<span class="d-block mt-2">하고 싶고 할 수 있는 것에 집중하라! 마흔의 삶에 지혜를 주는 쇼펜하우어의 30가지 조언</span>
		</div>
	</div>
	<div class="card-like ml-5">
		12
		<a href="#" class="like-btn" data-post-id="${card.post.id}">
			<img src="/static/images/star.png" width="20" height="20" alt="filled heart">
		</a>
	</div>
	
	<%-- 평점 --%>
	<div class="point">
		<div class="card border rounded">
		
		<%-- 평균 평점 --%>
		<div class="d-flex justify-content-center">
			<div class="mr-5 mt-3 point-box">
				<h3>평점</h3>
				<span class="display-3">10.0</span>
				<span class="display-4">/10.0</span>
			</div>
			
			<%-- 평점 개수 --%>
			<div class="ml-5">
				<div>
					<img src="/static/images/like5.png" width="150" height="30" alt="평점5">
					<span>10명</span>
				</div>
				<div>
					<img src="/static/images/like4.png" width="150" height="30" alt="평점4">
					<span>2명</span>
				</div>
				<div>
					<img src="/static/images/like3.png" width="150" height="30" alt="평점3">
					<span>0명</span>
				</div>
				<div>
					<img src="/static/images/like2.png" width="150" height="30" alt="평점2">
					<span>0명</span>
				</div>
				<div>
					<img src="/static/images/like1.png" width="150" height="30" alt="평점1">
					<span>0명</span>
				</div>
			</div>
		</div>
		</div>
	</div>
	
	<%-- 리뷰창 --%>
	<div class="ml-5 mt-5">
		<div>
		<c:if test="${not empty userLoginId}">
			<a href="#" class="like-btn" data-post-id="">
				<img src="/static/images/Ulike.png" width="25" height="25" alt="filled heart">
				<img src="/static/images/Ulike.png" width="25" height="25" alt="filled heart">
				<img src="/static/images/Ulike.png" width="25" height="25" alt="filled heart">
				<img src="/static/images/Ulike.png" width="25" height="25" alt="filled heart">
				<img src="/static/images/Ulike.png" width="25" height="25" alt="filled heart">
			</a>
		</div>
		
		<div class="write-box border rounded d-flex mb-5">
			<textarea id="writeTextArea" placeholder="내용을 입력해주세요" class="w-100 border-0"></textarea>
			<button id="writeBtn" class="btn btn-light">등록</button>
		</div>
		</c:if>
	<%-- 리뷰 목록 --%>
	<%-- 작성된 리뷰가 있을 때 --%>
	<div class="container ml-5">
		<div class="review-box"> <%-- 반복문으로  --%>
			<div class="d-flex justify-content-between">
				<h2 class="m-2">제목</h2>
				<div>
					<a href="#" class="updateReview mr-3">수정</a>
					<a href="#" class="deleteReview mr-5">삭제</a>
					<img alt="평점" src="/static/images/Ulike.png" width="25" height="25">
				</div>	
			</div>
			
			<div class="m-3">내용</div>
		</div>
	</div>
	<%-- 작성된 리뷰가 없을 때  --%>
	<div class="container d-none">
		<div class="d-flex justify-content-center">
			<span>아직 작성된 리뷰가 없습니다.</span>
		</div>
	</div>
</div>
</div>

<script>
$(document).ready(function(){
	
	// 리뷰 등록 버튼
	$("#writeBtn").on('click', function(){
		
		let content = $("#writeTextArea").val();
		
		if (!content){
			alert("내용을 입력해 주세요.");
			return;
		}
	});
});
</script>