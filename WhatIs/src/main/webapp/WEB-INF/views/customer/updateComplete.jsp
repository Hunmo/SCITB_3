<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function login() {
		location.href="../"
	}
</script>
<link type="text/css" rel="stylesheet" href="../resources/css/joinComplete.css">
</head>
<body>

	<h3> [ ${sessionScope.custId}(${sessionScope.custName})님 수정 되었습니다 ] </h3>
	
	<input type="button" value="홈으로" onclick="login()">
</body>
</html>