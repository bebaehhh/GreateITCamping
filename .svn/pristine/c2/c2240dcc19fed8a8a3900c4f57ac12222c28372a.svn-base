<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
 <style type="text/css">
	#main-wrapper {
		position:relative;
		width:1200px;
		margin:0px auto 0px;
	}
	#main-slider {
		position:relative
	}
	#main-slider-banner-wrapper {
		position:relative;
		top:0px;
		left:0px;
		width:1200px;
		height:360px;
	}
	#main-slider-control {
		padding: 0px;
		margin: 0px;
		list-style: 
	}
	#main-slider-left-button {
		display:inline-block;
		position:absolute;
		left:10px;
		top:150px;
	}
	#main-slider-right-button {
		display:inline-block;
		position:absolute;
		right:10px;
		top:150px;
	}
	#main-slider-left-button a {
		display:block;
		width: 28px;
		height: 47px;
		background: url(/GreatCamping/img/btn_main_left.png);
		overflow: hidden;
		text-indent: -9999px;
	}
	#main-slider-right-button a {
		display:block;
		width: 28px;
		height: 47px;
		background: url(/GreatCamping/img/btn_main_right.png);
		overflow: hidden;
		text-indent: -9999px;
	}
	#main-slider-index-control {
		list-style:none;
		padding:0px;
		margin:0px;
		position:absolute;
		left:563px;
		bottom:0px;
	}
	#main-slider-index-control li {
		display:inline-block;
		padding:0px 5px 0px 5px;
	}
	#main-slider-index-control .main-slider-index {
		display:block;
		width:11px;
		height:10px;
		background: url(/GreatCamping/img/main_dot_off.png);
		text-indent: -9999px;
	}
	#main-board {
		width:1200px;
		position:relative;
		margin:30px 0px;
	}
	#main-board > div.board-div{
		position:relative;
		margin:0px;
	}
	
	#main-board .thumbNail-Img {
		position:relative;
		left:0px;
		top:0px;
		width: 296px;
		height:240px;
		display:block;
	}
	#main-board h2 {
		position:relative;
		left:10px;
		top:10px;
		padding:0px 0px 10px 0px;
		display:inline-block;
		margin: 0px;
		font-size: 17pt;
		font-weight:bold;
		color: #333;
		border-bottom:1px solid orange;
	}
	#main-board ul {
		position:relative;
		left:0px;
		top:50px;
		padding:0px 5px 0px 5px;
		margin:0px;
		list-style: none;
	}
	#main-board li {
		width:300px;
		height:25px;
	}
	#main-board li a {
		display:inline-block;
		width:290px;
		height:100%;
		position:relative;
		text-decoration: none;
		color: #333;
	}
	#main-board span.board-title {
		display:inline-block;
		position:absolute;
		left:0px;
	}
	#main-board span.board-date {
		display:inline-block;
		position:absolute;
		right:0px;
	}
	.left {
		float:left;
	}
	.right {
		float:right;
	}
 </style>
 <jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
 <script type="text/javascript">
	var mainSlideInterval1;
	$().ready(function () {
		 initSlideListTransition($("#main-slider-banner-wrapper ul"));
		 changeIndexControlImage($("#main-slider-banner-wrapper ul").data("curr-idx"));
		 mainSlideInterval1 = setInterval(function() {
				slideListTransition($("#main-slider-banner-wrapper ul"), -1, 1000, function() {
					changeIndexControlImage($("#main-slider-banner-wrapper ul").data("curr-idx"));
				}, function(){});
			}, 4000);
	});
 
	function handleSlideList(ulObj, dir){
		// -1 : left, +1 : right;
		slideListTransition(ulObj, dir, 1000, function(){
			changeIndexControlImage($("#main-slider-banner-wrapper ul").data("curr-idx"));
		}, function(){});
	}
	
	function clickIndexControlImage(clickIdx) {
		slideListMoveTo($('#main-slider-banner-wrapper ul'), clickIdx, function (){
			changeIndexControlImage($("#main-slider-banner-wrapper ul").data("curr-idx"));
		});
	}
	
	function changeIndexControlImage(clickIdx){
		$("#main-slider-index-control .main-slider-index").each(function(idx,obj) {
			if(idx==clickIdx) {
				$(obj).css("background", "url(/GreatCamping/img/main_dot_on.png)");
			} else {
				$(obj).css("background", "url(/GreatCamping/img/main_dot_off.png)");
			}
		});
	}
	function safeMovie() {
		var popUrl = "http://www.gocamping.or.kr/safetyContent/index.htm";	//팝업창에 출력될 페이지 URL
		var popOption = "width=1000, height=670, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			window.open(popUrl,"",popOption);
	}
 </script>
<div id="main-wrapper">
	<div id="main-slider">
		<div id="main-slider-banner-wrapper">
			<ul>
				<li>
					<a><img src="<c:url value='/img/banner1.jpg'/>" width="1200"/></a></li>
				<li>
					<a><img src="<c:url value='/img/banner2.jpg'/>" width="1200"/></a></li>
				<li>
					<a><img src="<c:url value='/img/banner3.jpg'/>" width="1200"/></a></li>
			</ul>
		</div>
		<ul id="main-slider-control">
			<li id="main-slider-left-button">
				<a href="javascript:handleSlideList($('#main-slider-banner-wrapper ul'), 1);">Previous</a></li>
			<li id="main-slider-right-button">
				<a href="javascript:handleSlideList($('#main-slider-banner-wrapper ul'), -1);">Next</a></li>
		</ul>
		<ul id="main-slider-index-control">
			<li><a class="main-slider-index" href="javascript:clickIndexControlImage(0);">1</a></li>
			<li><a class="main-slider-index" href="javascript:clickIndexControlImage(1);">2</a></li>
			<li><a class="main-slider-index" href="javascript:clickIndexControlImage(2);">3</a></li>
		</ul>
	</div>
	
	<!-- <div class="safe-video" style="width: 1200px; margin: auto;">
		
	</div> -->
	<div id="main-board">
		<div class="board-div left">
			<h2>공지사항</h2>
			<ul>
				<li><a href="#">
					<span class="board-title">오늘 점심 닭칼국수 입니다.</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">내일 점심 고등어 튀김</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">모래 점심 바베큐</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">ABCDEFG</span>
					<span class="board-date">2017-11-29</span></a></li>
			</ul>
		</div>
		<div class="board-div left">
			<img class="thumbNail-Img" alt="캠핑안전 동영상" src="${path}/img/main/campingvideo.png" usemap="#safe-videoImg">
			<map name="safe-videoImg">
				<area href="javascript:safeMovie();" coords="148,66,133,72,125,79,119,90,119,103,122,112,127,119,
															136,125,149,129,159,127,167,124,173,119,178,110,181,101,
															179,91,175,81,169,74,160,68,149,66,149,66" 
															id="safe-video" shape="poly">
				<area coords="96,193,198,220" shape="rect" target="_self" href="http://gocamping.or.kr/fileDownload?comnNtbdAtchFileSral=2160&mnCd=050100">
			</map>
		</div>
		<div class="board-div right">
			<h2>FAQ</h2>
			<ul>
				<li><a href="#">
					<span class="board-title">오늘 점심 뭐에요?</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">내일 점심 뭐에요?</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">모래 점심 뭐에요?</span>
					<span class="board-date">2017-11-29</span></a></li>
				<li><a href="#">
					<span class="board-title">HIJKLMN</span>
					<span class="board-date">2017-11-29</span></a></li>
			</ul>			
		</div>
		<div class="board-div right">
			<div class="guide-box" style="float:right;">
				<a href="/guide/list?mnCd=030100&dvOpCd=NTBD05&dvCd=01">
				<img src="${path}/img/main/campingguide.png" alt="킴핑가이드 캠핑의 역사, 준비등 다양한 정보를 보실수 있습니다.">
				</a>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>
</div>
<c:import url="/region/map"/>
<div style="height:50px;width:1200px;margin:0px auto;"></div>
<jsp:include page="/WEB-INF/view/common/footer/footer.jsp"></jsp:include>
</body>
</html>