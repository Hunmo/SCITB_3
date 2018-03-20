<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> [월페이퍼] </title>
<!-- jQuery library (served from Google) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value="../resources/js/jquery.bxslider.js"/>"></script>
<link type="text/css" rel="stylesheet" href="../resources/css/jquery.bxslider.css" ><!-- 외부 css 연결 -->

<script type="text/javascript">
	$(function(){
   		 $('.slider').bxSlider({
   			 
   			mode: 'fade',
   		    captions: true,
   		    slideWidth: 800
   		 });
  	});
	function back() {
		
		location.href="../"
	}
</script>

</head>
<body>
<h1> [ 챔피언 모음집 ] </h1>
<div class="slider">
  		
			<img class="slider_image" alt="" src="https://mblogthumb-phinf.pstatic.net/20160307_45/k760929_14573301389564PIFC_JPEG/%B8%AE%B1%D7%BF%C0%BA%EA%B7%B9%C0%FC%B5%E5_lol_%B7%D1_%C4%B3%B8%AF%C5%CD_%BD%BA%C5%B3_%BD%BA%C5%B2_-_%B8%AE%BA%EC_%281%29.jpg?type=w800">
			<img class="slider_image" alt="" src="http://cfile5.uf.tistory.com/image/254A593C51E42D2B2A6B2E"> 
			<img class="slider_image" alt="" src="http://www.gametoc.co.kr/news/photo/201309/11726_23186_5217.jpg">
			<img class="slider_image" alt="" src="http://cfile28.uf.tistory.com/image/26688B385291AA772F7683"> 
			<img class="slider_image" alt="" src="http://cfile26.uf.tistory.com/image/99C4DD335A21707B15FB25"> 
			<img class="slider_image" alt="" src="http://img.tf.co.kr/article/home/2015/03/17/201528151426549665.jpg">
			<img class="slider_image" alt="" src="https://pbs.twimg.com/media/CoOrTmoVMAEtL41.jpg">
			<img class="slider_image" alt="" src="https://na.leagueoflegends.com/sites/default/files/styles/wide_medium/public/upload/thresh_championship_banner_2.jpg?itok=8cEe0qhT">
			<img class="slider_image" alt="" src="http://cfile214.uf.daum.net/image/2306594C530D35C004E7AC">
			<img class="slider_image" alt="" src="http://www.arcana-gaming.com/content/arcana/upload/League%20of%20Legends/PBE/_Cycle_7.07/2017_03_21/LeeSin_Splash_11.jpg?width=662&height=394&scale=both&mode=crop&quality=80&format=jpg">
			<img class="slider_image" alt="" src="http://cfile27.uf.tistory.com/image/267E39345506505A3CDE50">
			<img class="slider_image" alt="" src="https://vignette.wikia.nocookie.net/leagueoflegends/images/6/6c/Warwick_OriginalSkin.jpg/revision/latest/scale-to-width-down/640?cb=20170110203842">
			<img class="slider_image" alt="" src="http://img.danawa.com/cms/img/2014/03/20/1395285255_thumb.jpg">
			<img class="slider_image" alt="" src="https://orig00.deviantart.net/6034/f/2016/201/1/9/19b27c3303e48f11bad7de980412b1eb-d9xpese.jpg">
			<img class="slider_image" alt="" src="http://cfile1.uf.tistory.com/image/275EB13652FB14061784FD">
			<img class="slider_image" alt="" src="http://1.bp.blogspot.com/-r2TpSY2Vbb4/TtWWTyy272I/AAAAAAAABLY/ko-HsYawGSE/s1600/Shaco_Splash_2.jpg">
			<img class="slider_image" alt="" src="http://cfile21.uf.tistory.com/image/99D4353359EBEA5209AE10">
			<img class="slider_image" alt="" src="http://www.leagueoflegends.co.kr/upload/EditorImages/20150316101358_1hyv52no.jpg">
			<img class="slider_image" alt="" src="https://pbs.twimg.com/media/CmDo_xUUkAAHtmc.jpg">
			
			
</div>

<div class="div">
	<input type="button" value="홈으로" onclick="back()">
</div>
</body>
</html>