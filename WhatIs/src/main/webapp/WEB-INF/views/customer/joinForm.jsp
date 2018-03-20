<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [회원가입 폼] </title>
<link type="text/css" rel="stylesheet" href="../resources/css/join.css">

<script type="text/javascript">

	function idcheckOpen() {
		
		window.open("idCheck","newwindow","top=200,left=400,width=400,height=300");
	}
	
	function back() {
		
		location.href="../"
	}
	
	function check() {
		var pass =  document.getElementById("pass").value;
		var pass1 =  document.getElementById("pass1").value;
		
		if(pass == '' || pass1 == ''){
			alert("비밀번호를 입력하시오");
			pass.focus();
			pass1.focus();
			return false;
		}
		
		if(pass != pass1){
			
			alert("비밀번호가 다릅니다. 다시 확인해 주세요");
			pass1.focus();
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
<div id="div">
	<h1> [가입 하시죠] </h1>
	<br>
	<form action="join" method="post" onsubmit="return check()">
		<table>
			<tr>
				<th> Id : </th>
				<td> <input type="text" name="custid" id="custid" readonly="readonly" value="${customer.custid}" placeholder="중복확인누르세요" required> 
					<input type="button" value="중복확인" onclick="idcheckOpen()">	
				</td>
			</tr>
			<tr>
				<th> 비밀번호 : </th>
				<td> <input type="password" name="pass" id="pass" placeholder="비밀번호 입력" value="${customer.pass}"> </td>
			</tr>
			<tr>
				<th> 비밀번호 확인 : </th>
				<td> <input type="password"  id="pass1" required placeholder="비밀번호 입력 확인!!!"> </td>
			</tr>
			<tr>
				<th> 이름 : </th>
				<td> <input type="text" name="name" id="name" placeholder="당신은 누구신가요 "required value="${customer.name}"> </td>
			</tr>
			<tr>
				<th> 나이 : </th>
				<td> <input type="text" name="age" id="age"  required value="${customer.age}"> </td>
			</tr>
			<tr>
				<th> 이메일 : </th>
				<td> <input type="email" name="email" value="${customer.email}" > </td>
			</tr>
			<tr>
				<th> 주소 : </th>
				<td> <input type="text" name="address" id="address" value="${customer.address}"> </td>
			</tr>
			
			
		</table>
		<br>
		<input type="submit" id="button" value="가 입">
		<input type="button" value="홈으로" onclick="back()">
	</form>
</div>			
</body>
</html>