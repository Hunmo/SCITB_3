<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [ID check] </title>

<script type="text/javascript">


function useId(searchId){
	opener.document.getElementById('custid').value = searchId;
	this.close(); 
}


</script>
</head>
<body>
	<h3> [ID Check] </h3>
	<form action="Idsearch" method="post">
		<input type="text" name="searchId" id="searchId" value="${searchId}" required>
		<input type="submit" value="검색">
	</form>
	<br>
	<!-- 검색 후에만 나오는 문구들 -->
	<c:if test="${search }">
		<!--  검색 결과가 없는 경우 -->
		<c:if test="${searchResult == null }">
			<p>${searchId} : 사용할 수 있는 아이디 입니다.</p>
			<br>
			<input type="button" value="아이디 사용하기" onclick="useId('${searchId}')">
		</c:if>
		<!--  검색 결과가 있는 경우 -->
		<c:if test="${searchResult != null }">
			<p>${searchId} : 중복된  아이디 입니다.</p>
		</c:if>		
		
	</c:if>	
</body>
</html>