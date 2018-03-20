<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
<title> [로그인] </title>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
<script type="text/javascript">
<c:if test="${error != null}">

alert('${error}');

</c:if>


	



	function check() {
		var id = document.getElementById('id').value;
		var pass = document.getElementById('pass').value;
		
		if (id == '' || pass == ''){
			alert(' 입력을 하시죠');
			return false;
		}
	}
	
	function back() {
		
		location.href="../"
	}
</script>

</head>
<body class="backg">

<div class="div">	
	<h2> [계정 로그인] </h2>
	<form action="login" method="post" onsubmit="return check()">
	
		<table>
			<tr>
				<th> ID : </th>
				<td><input type="text" name="custid" id="custid" required></td>
			</tr>
			
			<tr>
				<th> PW : </th>
				<td><input type="password" name="pass" id="pass" required></td>
			</tr>
		
		</table>
		<br>
		<input type="submit" class="button" value="로그인">
		<input type="button" value="홈으로" onclick="back()">
	</form>
</div>	

</body>
</html>