<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div>
			<div class="d-flex">
				<h3>평점</h3>
				<div class="display-3">10.0</div>
				<div class="display-4">/10.0</div>
			</div>
			
			<%-- 평점 개수 --%>
			<div class="">
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
	<div></div>
	
	<%-- 리뷰 목록 --%>
	<div></div>
</div>