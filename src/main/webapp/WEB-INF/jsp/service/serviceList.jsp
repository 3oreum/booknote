<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container serviceList">
		
		<c:if test="${not empty userLoginId}">
		<div class="d-flex justify-content-center">
			<a href="#" class="qna"><h2 class="ml-5 mb-5">1:1 문의하기</h2></a>
		</div>
		</c:if>
		<table class="table text-center">
			<thead>
				<tr>
					<th>No</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>처리 결과</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${questionList}" var="question">
				<tr>
					<td>${question.id}</td>
					<td><a href="/service/list-view?Id=${question.id}" class="qnaTitle">${question.title}</a></td>
					<td>${question.userId}</td>
					<td>${question.createdAt}</td>
					<td></td>
				</tr>
		 </c:forEach>
			</tbody>
		</table>
		
</div>

<%-- 1:1 문의 클릭 --%>
<div class="container serviceQna d-none">
	<h4>1:1 문의</h4>
		
		<input type="text" id="title" name="title" class="form-control col-6 mb-5" placeholder="제목을 입력해 주세요.">
		<textarea id="content" class="form-control mt-5" rows="10" placeholder="문의 내용을 입력해 주세요."></textarea>
		
		<div class="d-flex justify-content-end mt-3">
			<button type="submit" id="saveBtn" class="btn btn-secondary">등록</button>
		</div>
</div> <%-- 1:1 문의 클릭 끝 --%>

<div class="container qnaView d-none">
	<div class="qna-box1">
		<div class="m-5">
		<c:forEach items="${questionList}" var="question">
			<h2 class="font-weight-bold pt-5">Q ${question.title}</h2>
			<div>작성자: 아무개</div>
			<div>문의 내용</div>
		</c:forEach>
		</div>
		<div class="qna-box2 m-5 p-3">
			<h2 class="font-weight-bold">A 답변 완료</h2>
			<div>답변 내용</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	
	$(".qna").on('click', function(){
		//alert("문의");
		$(".serviceList").addClass('d-none');
		$(".serviceQna").removeClass('d-none');
	});
	
	
	// 등록 버튼 눌렀을 때
	$("#saveBtn").on('click', function(){
		//e.preventDefault();
		 

		let title = $("#title").val().trim();
		let content = $("#content").val();
		console.log(title);
		console.log(content);
		
		if (!title){
			alert("문의 제목을 입력해 주세요.");
			return;
		}
		
		if (!content){
			alert("문의 내용을 입력해 주세요.");
			return;
		}
		
		let result = confirm("등록 후 해당 문의는 수정 또는 삭제가 불가합니다. 문의를 등록하시겠습니까?");
		if (result){
		    alert("문의가 등록됐습니다.");
		    //location.href="/service/list-view";
		} else {
		    alert("등록에 실패했습니다.");
		} 
		
		let formData = new FormData();
		formData.append("title", title);  
		formData.append("content", content);  
		
		$.ajax({
			type:"POST"
			, url:"/question/create"
			, data:formData
			, contentType: false
			, processData: false
			
			, success:function(data){
				if (data.result == "성공"){
					alert("문의가 등록되었습니다.");
					location.href = "/service/list-view";
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
	
	
	// 문의 제목 클릭 시 
	$(".qnaTitle").on('click', function(e){
		e.preventDefault();
		$(".serviceList").addClass('d-none');
		$(".qnaView").removeClass('d-none');
		
		
	});
});
</script>