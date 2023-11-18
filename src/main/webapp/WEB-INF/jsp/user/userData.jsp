<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- !!!!!!!!! 리뷰 목록  !!!!!!!!! --%>
<div class="d-flex">
	<%-- 왼쪽 메뉴 --%>
	<aside>
		<div class="ml-3 mb-5">
			<h3>아이디</h3>
			<small>이메일</small>
		</div>
		<ul class="nav flex-column">
			<li class="nav-item font-weight-bold"><a href="/user/user-data-view" class="nav-link">리뷰 목록</a></li>
			<li class="nav-item font-weight-bold"><a href="#" class="nav-link">찜 목록</a></li>
			<li class="nav-item font-weight-bold"><a href="#" class="nav-link">비밀번호 변경</a></li>
			<li class="nav-item font-weight-bold"><a href="#" class="nav-link">1:1 문의</a></li>
		</ul>
	</aside>
	<div class="vl ml-5"></div>
	<%-- 오른쪽 창 --%>
	<div class="container">
		<table class="table text-center">
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
					<td>심심해서 사봤는데 시간 순삭이에요</td>
					<td>2023-11-13</td>
				</tr>
			</tbody>
		</table>
	</div>
</div> <%-- 리뷰 목록 끝! --%>