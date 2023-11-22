<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex">
	<%-- 왼쪽 메뉴 --%>
	<aside>
		<div class="ml-3 mb-5">
			<h3>관리자</h3>
		</div>
		<ul class="nav flex-column">
			<li class="nav-item font-weight-bold qnaList"><a href="/manager/manager-set-view" class="nav-link">1:1문의</a></li>
			<li class="nav-item font-weight-bold reviewList"><a href="#" class="nav-link">리뷰 관리</a></li>
		</ul>
	</aside>
	<div class="vl ml-5"></div>
	
	<%-- !!!!!!! 1:1문의 !!!!!!! --%>
	<div class="container qna-list">
		<table class="table text-center">
			<thead>
				<tr>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>처리결과</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="#">fsdlksfkj</a></td>
					<td>111111</td>
					<td>2023-11-23</td>
					<td>처리완료</td>
				</tr>
			</tbody>
		</table>
	</div> <%-- !!!!!!! 1:1문의 끝 !!!!!!! --%>
	
	<%-- !!!!!!! 리뷰 관리 !!!!!!! --%>
	<div class="container review-list d-none">
		<table class="table text-center">
			<thead>
				<tr>
					<th>책 제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>삭제일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="#" class="qnaTitle">fsdlksfkj</a></td>
					<td>111111</td>
					<td>2023-11-23</td>
					<td>2023-11-23</td>
				</tr>
			</tbody>
		</table>
	</div> <%-- !!!!!!! 리뷰 관리 끝 !!!!!!! --%>

<%-- 1:1 문의 클릭 시 --%>
<div class="container qnaView d-none">
	<div class="qna-box1">
		<div class="m-5">
			<h2 class="font-weight-bold pt-5">Q 비밀번호 변경</h2>
			<div>작성자: 아무개</div>
			<div>문의 내용</div>
		</div>
		<div class="qna-box2 m-5 p-3">
			<h2 class="font-weight-bold">A</h2>
			<input type="text" class="answer" placeholder="답변을 입력해 주세요.">
		</div>
	</div>
</div>

<%-- 리뷰 관리 클릭 시 --%>
<div class="container reviewView d-none">
	<div class="qna-box1">
		<div class="m-5">
			<h2 class="font-weight-bold pt-5">책 제목</h2>
			<h2 class="font-weight-bold pt-5">저자 - </h2>
			<h2 class="font-weight-bold pt-5">작성자 - </h2>
			<span>웩</span>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
	$(".review-List").on('click', function(){
		$(".qna-list").addClass('d-none');
		$(".review-list").removeClass('d-none');
	});
});
</script>