<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
<link type="text/css" rel="stylesheet" href="resources/css/home.css">	

</head>
<body id="backg">


<div id="div">
 	<ol>
<c:choose>

	<c:when test="${sessionScope.custId == null }">
		<li>
 			<a href="customer/joinForm" >회원가입</a>
 		</li>
 		<li>
 			<a href="customer/loginForm">로그인</a>
 		</li>
 		<li>
 			<a href="board/list">챔피언 정보 입력</a>
 		</li>
 		<li>
 			<a href="paper/listForm">월 페이퍼</a>
 		</li>
 	</c:when>	
 	<c:otherwise>
 		<p>${sessionScope.custId}(${sessionScope.custName}) 소환사 님 환영합니다</p>
 		
		<li>
 			<a href="customer/updateForm" >회원 정보 수정</a>
 		</li>
 		<li>
 			<a href="customer/logOut">로그아웃</a>
 		</li>
 		<li>
 			<a href="board/list">챔피언 정보 입력</a>
 		</li>
 		<li>
 			<a href="paper/listForm">월 페이퍼</a>
 		</li>
 	</c:otherwise>		
 </c:choose> 		
 	</ol>
</div>


</body>
</html>
