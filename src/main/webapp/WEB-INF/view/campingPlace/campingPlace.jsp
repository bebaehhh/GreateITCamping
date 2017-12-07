<!-- 디렉티브 : JSP페이지 구조 및 형태를 정의하는 부분 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href=/css/test1.css" /> -->
<style>

.facilitiesDetailWrapper {
	width: 1200px;
	height: 400px;
	margin: 0 auto;
	background: url(/GreatCamping/img/facilities/bg_sisulbox.jpg) no-repeat;
	padding: 35px 30px 35px 60px;
}

.facilitiesDetail {
	 border-bottom: 1px solid #5b5e61;
}

.facilitiesDetail > h3 {
	color: #ffffff;
	line-height: 140%;
	font-size: 23px;
	font-weight: 400;
	background: url(/GreatCamping/img/facilities/bg_linet.png) no-repeat 100% 50%;
}

.facilitiesDetail > table {
	color: #ffffff;
	font-size: 14px;
	border-spacing: 25px 20px;
	margin-bottom: 30px;
	border-collapse: inherit;
}

.facilitiesDetail > table > tbody > tr > td  {
	border-radius: 3px;
	text-align: center;
 	padding : 5px 3px; 
	background-color: #676767;
	height: 30px;
}

.facilitiesDetail > table > tbody > tr > td:nth-child(1)  {
	background-color: #16a36f !important;
	border-radius: 0px;
	text-align: left;
	padding-left: 50px;
}

.facilitiesDetail > table > tbody > tr:nth-child(1) > td:nth-child(1) {
 	background: url(/GreatCamping/img/facilities/icon_campingarea02.jpg) no-repeat 12px center;
}

.facilitiesDetail > table > tbody > tr:nth-child(2) > td:nth-child(1) {
	background: #16a36f url(/GreatCamping/img/facilities/icon_campingarea03.jpg) no-repeat 12px center;
}

.facilitiesDetail > table > tbody > tr:nth-child(3) > td:nth-child(1) {
	background: #16a36f url(/GreatCamping/img/facilities/icon_campingarea04.jpg) no-repeat 12px center;
}

.facilitiesDetail > table > tbody > tr:nth-child(4) > td:nth-child(1) {
	background: #16a36f url(/GreatCamping/img/facilities/icon_campingarea06.jpg) no-repeat 12px center;
}

.green {
    background-color: #16a36f !important;
}

</style>
</head>
<body>
<div class="facilitiesDetailWrapper">
	<div class="facilitiesDetail">
		<h3>캠핑장 시설소개</h3>
		
		<table>
			<colgroup>
				<col width="180px">
				<col width="120px">
				<col width="120px">
				<col width="120px">
				<col width="120px">
				<col width="120px">
				<col width="120px">
			</colgroup>
			
			<tr>
				<td>캠핑장 시설</td>
				<td class=" <c:if test="${!empty CampingPlaceVO.facToilet }">green</c:if>">화장실</td> <!-- 해당 캠핑장 DB의 'FAC_TOILET' 칼럼의 값이 NULL이 아닐 경우 css에 Class="green"으로 함 -->  
				<td class="<c:if test="${!empty CampingPlaceVO.facShowerroom }">green</c:if>">샤워실</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facSink }">green</c:if>">개수대</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facStore }">green</c:if>">매점</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facBbq }">green</c:if>">바베큐장</td>
			</tr>
			
			<tr>
				<td>이용조건</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facElectric }">green</c:if>">전기시설</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facWifi }">green</c:if>">무선인터넷</td>
			</tr>
			
			<tr>
				<td>야영시설</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facCaravan }">green</c:if>">카라반</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facGlamping }">green</c:if>">글램핑</td>
				<td class="<c:if test="${!empty CampingPlaceVO.facTent }">green</c:if>">텐트</td>
			</tr>
			
			<tr>
				<td>애완동물 출입</td>
				<td class="<c:if test="${CampingPlaceVO.facPet eq '가능' }">green</c:if>">가능</td>
				<td class="<c:if test="${CampingPlaceVO.facPet eq '불가능'}">green</c:if>">불가능</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>