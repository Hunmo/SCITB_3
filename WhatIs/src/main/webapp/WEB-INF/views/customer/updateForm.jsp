<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [수정하기]</title>
<link type="text/css" rel="stylesheet" href="../resources/css/join.css">

<script type="text/javascript">

	function back() {
		
		location.href="../"
	}
	
	function check() {
		var pass =  document.getElementById("pass").value;
		var pass1 =  document.getElementById("pass1").value;
		
		if(pass == '' || pass1 == ''){
			alert("비밀번호를 입력하시오");
			return false;
		}
		
		if(pass != pass1){
			
			alert("비밀번호가 다릅니다. 다시 확인해 주세요");
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
<div id="div">
	<h1> [수정 하시죠] </h1>
	<br>
	<form action="update" method="post" onsubmit="return check()">
		<table>
			<tr>
				<th> Id : </th>
				<td> <input type="text" name="custid" id="custid" readonly="readonly" value="${loginedCust.custid}" required> 
				</td>
			</tr>
			<tr>
				<th> 비밀번호 : </th>
				<td> <input type="password" name="pass" id="pass" required value="${loginedCust.pass}"> </td>
			</tr>
			<tr>
				<th> 비밀번호 확인 : </th>
				<td> <input type="password"  id="pass1" required > </td>
			</tr>
			<tr>
				<th> 이름 : </th>
				<td> <input type="text" name="name" id="name" required value="${loginedCust.name}"> </td>
			</tr>
			<tr>
				<th> 나이 : </th>
				<td> <input type="text" name="age" id="age" required value="${loginedCust.age}"> </td>
			</tr>
			<tr>
				<th> 이메일 : </th>
				<td> <input type="email" name="email" value="${loginedCust.email}" > </td>
			</tr>
			<tr>
				<th> 주소 : </th>
				<td> <input type="text" name="address" id="address" value="${loginedCust.address}"> </td>
			</tr>
			
			
		</table>
		<br>
		<input type="submit" id="button" value="수 정">
		<input type="button" value="홈으로" onclick="back()">
	</form>
</div>			
</body>
</html>