<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [결과 페이지] </title>
<script type="text/javascript">
	function login() {
		location.href="../"
	}
</script>
<link type="text/css" rel="stylesheet" href="../resources/css/joinComplete.css">
</head>
<body>

	<h3> [ ${id}(${name})님 가입을 축하합니다 ] </h3>
	
	<input type="button" value="홈으로" onclick="login()">
</body>
</html>