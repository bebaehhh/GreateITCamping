<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/campDetail/campDetail.css"/>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>

<script type="text/javascript">

	$().ready(function() {
		
		var view = 0 ;	// 위치
		var max = 0;	// 이미지 수	
		
		var container;	// 리스트를 가지고 있는 ul
		var interval;
		
		init();
		
		function init() {
			
			container = $(".campDetailImg ul");
			max = container.children().length;
			interval = setInterval(next, 2000);
			
			animate();
		}
		
		function next(e) {
			view++;
			if( view > max-1 ) view = 0; 
			animate();
		}
		
		function animate() {
			var moveX = view * 527;
			TweenMax.to(container, 0.8, {marginLeft:-moveX, ease:Expo.easeOut});
			
			clearInterval(interval);			//누적되니까 지워주는게 좋음
			interval = setInterval(next, 3000);	//지속적으로 함수를 호출
		
		}
			
	}); 

</script>

</head>
<body> 
<div style="position: relative;">
	<div style="width: 1200px; margin: auto; margin-top: 110px; margin-bottom: 160px;">
	
	<%-- 	${fn:length(campDetailImageReadVO)}* 527 로 width 계산 해야됨	 --%>
		<div style="display: inline-block; float: left">
			<div style="height: 401px; width: 527px; overflow: hidden;">
				<div class="campDetailImg" style="height: 318px; width: ${fn:length(campDetailImageReadVO)* 527}px; ">
					<ul style="list-style: none; border: none; line-height: 0;">
						<c:forEach items="${campDetailImageReadVO}" var="img">
							<li style="display: inline-block; float: left;">
								<img alt="" src="<c:url value="${img.imageFilePath }"/>" style="width:527px;margin:0px;border-width:0px;">
							</li>
						</c:forEach>
					</ul>
				</div>
			</div> 	
			<%-- <div>
				<ul style="list-style: none; border: none; line-height: 0;">
					<c:forEach items="${campDetailImageReadVO}" var="img">
						<li style="display: inline-block; float: left;">
							<img alt="" src="<c:url value="/img/campDetail/main_dot_off.png"/>" style="border-width:0px;">
						</li>
					</c:forEach>
				</ul>
			</div> --%>
		</div>
		<div class="campDetailInfo" style="width: 600px; display: inline-block; float: right; padding: 0">
			<div class="campDetailName">
				<h3>${campDetailVO.cmpPlcNm}</h3>
			</div>
			<table>
				<tr>
					<th rowspan="2">주소</th>
					<td>${campDetailVO.newFullAddress}</td>
				</tr>
				<tr>
					<td>${campDetailVO.oldFullAddress}</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${campDetailVO.telNo}</td>
				</tr>
				<tr>
					<th>홈페이지</th>
					<td>${campDetailVO.hmpgAddress}</td>
				</tr>
				<tr>
					<th>요금</th>
					<td>
						<c:if test="${empty campDetailVO.charge}">
						 전화 문의</c:if>
					</td>
				</tr>
			</table>
			<div>
				<button class="campDetailRsvtn" type="button">예약하기</button>
			</div>
		</div>
	</div>

	<div style="display: inline-block;">
<%-- 		<jsp:include page="/WEB-INF/view/campingPlace/campingPlace.jsp" /> --%>
		<c:import url="/campingPlace/${campDetailVO.campingPlaceId}" />
	</div>
</div>
	<div style="display: inline-block; width: 400px; height: 300px;">
		<c:import url="/map" />
	</div>
	
</body>
</html>