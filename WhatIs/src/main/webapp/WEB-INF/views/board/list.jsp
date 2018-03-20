<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../resources/css/bc.css">
<title>[게시판]</title>

<script type="text/javascript">
	function writeForm() {
		location.href = "writeForm";
	}
	function back() {
		location.href = "../";
	}

	function pagingFormSubmit(currentPage) {

		var form = document.getElementById("pagingForm");
		var page = document.getElementById("page");

		page.value = currentPage;

		form.submit();

	}
</script>
</head>
<body>
	<h2>[챔피언 정보를 자유롭게 입력해 주세요]</h2>
	
	<div id="div">

		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록일</th>
				<th>첨부파일</th>
			</tr>

			<!-- 반복 시작 -->
			<c:forEach var="list" items="${list}">

				<tr>
					<th>${list.boardnum}</th>
					<th><a href="read?boardnum=${list.boardnum}">${list.title}</a>
					</th>
					<th>${list.id}</th>
					<th>${list.hits}</th>
					<th>${list.inputdate}</th>
					<th><a href="download?boardnum=${list.boardnum }">
							${list.originalfile }</a></th>

				</tr>

			</c:forEach>
		</table>


		<div id="navigator">

			<!-- 페이지 이동 부분 -->
			<a href="javascript:pagingFormSubmit(1)">◁◁</a>
			<a	href="javascript:pagingFormSubmit(${navi.currentPage-1 })">◀</a>

			<c:forEach var="counter" begin="${navi.startPageGroup }" end="${navi.endPageGroup }">

				<c:if test="${counter == navi.currentPage }">

					<b>
				</c:if>

				<a href="javascript:pagingFormSubmit(${counter })">${counter }</a>

				<c:if test="${counter == navi.currentPage }">

					</b>

				</c:if>

			</c:forEach>

			<a href="javascript:pagingFormSubmit(${navi.currentPage+1 })">▶</a> 
			<a href="javascript:pagingFormSubmit(${navi.totalPageCount })">▷▷</a>

			<!-- /페이지 이동 끝 -->

			<br>
			<br>

			</div>
			<div id="seach">
			<!-- 검색폼 -->
			<form id="pagingForm" method="get" action="list">
				<input type="hidden" name="page" id="page" /> 
				<select name="searchSelect">

					<option value="title"
						<c:if test="${searchSelect  == 'title'}">selected="selected"</c:if>>
						제목
					</option>


					<option value="content"
						<c:if test="${searchSelect == 'content'}">selected="selected"</c:if>>
						내용
					</option>


					<option value="id" <c:if test="${searchSelect == 'id' }">selected="selected"</c:if>>
						작성자
					</option>

				</select> 
				<input type="text" name="searchText" value="${searchText}" />
				<input type="button" onclick="pagingFormSubmit(1)" value="검색">
			</form>
			<!-- /검색폼 -->
			</div>
			<br><br>
		<div id="b">
		<c:if test="${sessionScope.custId != null }">
			<input type="button" id="button" value="글쓰기" onclick="writeForm()">
		</c:if>
		<input type="button" id="button" value="홈으로" onclick="back()">
		</div>	
	</div>
</body>
</html>