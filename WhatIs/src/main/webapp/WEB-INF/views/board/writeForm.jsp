<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [글쓰기] </title>

<link type="text/css" rel="stylesheet" href="../resources/css/write.css">

<script type="text/javascript">
	function check() {
		
		var title = document.getElementById("title").value;
		var content = document.getElementById("content").value;
		
		if(title == '' ||  content == ''){
			alert("제목에 공백이 들어갈수 없습니다.")
			return false;
		}
		
		
		
		return true;
	}
	
	function back() {
		
		location.href="list";
	}
</script>
</head>
<body>

	<h2> [게시물 작성] </h2>
<div id= div>
<form action="write" method="post" onsubmit="return ckeck()" enctype="multipart/form-data">

	<input type="hidden" name="id" value="${sessionScope.custId}">

	

	<table>
	
		<tr>
			<th> 제목 </th>
			<td> <input type="text" name="title" id="title"></td>
		</tr>
		
		<tr>
			<th> 내용 </th>
			<td><textarea rows="20" cols="35" name="content" id="content"></textarea> </td>
		</tr>
		<tr>
			<th> 첨부파일 </th>
			<td><input type="file" name="upload"> </td>
		</tr>
		
	
	</table>
	
 	<br>
	<input type="submit" id="button" value="글쓰기" >
 </form>	
 
	<input type="button" value="뒤로가기" onclick="back()">
 	
</div>
</body>
</html>