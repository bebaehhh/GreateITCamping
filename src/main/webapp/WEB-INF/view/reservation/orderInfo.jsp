<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrapper {
		width: 1050px;
		margin: 0 auto;
	}
</style>

<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript">
</script>

<style type="text/css">
.titleNumber {
 	position:relative;
	top:4px;
    display: inline-block;
    width: 16px;
    height: 16px;
    border: 1px solid #c83f35;
    background: #e25147;
    font-weight: bold;
    color: #fff;
    border-radius: 3px;
    text-align: center;
    font-family: 'Nanum Square';
}
.titleSubject {
	font-family: 'Nanum Square';
}
.confirmTable {
	width: 1000px;
    height: 166px;
    border: 1px solid #d5d5d5;
    font-size: 13px;
    color: #222222;
    margin-bottom: 10px;
}
.confirmTable tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: gray;
}
.confirmTable tbody tr {
	display: table-row;
	vertical-align: middle;
	border-color: gray;
}
.confirmTable tbody tr th {
    width: 168px;
    height: 49px;
    border-bottom: 1px solid #d5d5d5;
    border-right: 1px solid #d5d5d5;
    background-color: #f9f9f9;
    
    font-weight: bold;
    text-align: -internal-center;
    display: table-cell;
    font-family: 'Nanum Square';
}
.confirmTable tbody tr td {
	display: table-cell;
	vertical-align: middle;
	border-bottom: 1px solid gray;
	padding-left: 20px;
	font-family: 'Nanum Square';
}
</style>

</head>
<body>
	<div id="wrapper">
	
		<!-- 이전단계 버튼 -->
		<div style="padding: 30px 0 20px 0;height: 50px;">
			<a href="<c:url value="/reservation/condition" />" style="text-decoration: none;float: right;height: 50px;">
				<img src="<c:url value="/img/reservation/pre_step.jpg" />">
			</a>
		</div>
		
		<form id="pay">
			<div style="margin-bottom: 15px;">
				<span class="titleNumber">1</span>
				<span class="titleSubject">예약 객실 확인</span>
			</div>
			<table class="confirmTable">
				<tbody>
					<tr>
						<th>객실</th>
						<td>${reservationOneReadVO.rRoomNumber}</td>
					</tr>
					<tr>
						<th>날짜</th>
						<td>${reservationOneReadVO.rCheckIn} ~ ${reservationOneReadVO.rCheckOut}(1박 2일)</td>
					</tr>
					<tr>
						<th>인원</th>
						<td>총 ${reservationOneReadVO.rPeopleCount}명(성인 2명 / 소아 0명 / 영유아 0명)</td>
					</tr>
					<tr>
						<th>금액</th>
						<td>객실금액: ${reservationOneReadVO.rPrice}원 + 인원 추가 금액: 0원 + 옵션 요금: 0원     총 합계 금액: ${reservationOneReadVO.rPrice}원</td>
					</tr>
				</tbody>
			</table>
			<div style="margin-top: 20px;">
				<div style="border:1px solid red;background-color:yellow;height: 48px;text-align: center;">
					<span>객실금액 : ${reservationOneReadVO.rPrice}원 + 인원 추가 금액: 0원 + 옵션 요금 : 0원</span>
					<span style="color: red;font-size: 16px;font-weight: bold;">     총 합계 금액 : ${reservationOneReadVO.rPrice}원</span>
				</div>
			</div>
			
			<div style="margin: 50px 0 15px 0;">
				<span class="titleNumber">2</span>
				<span class="titleSubject">예약 정보 확인</span>
			</div>
			<table class="confirmTable">
				<tbody>
					<tr>
						<th>아이디</th>
						<td>${reservationOneReadVO.memberVO.memberId}</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>${reservationOneReadVO.memberVO.memberPhoneNumber}</td>
					</tr>
				</tbody>
			</table>
			<div>
				<div>객실 이용 안내</div>
				<div></div>
			</div>
			<div>
				<textarea readonly="readonly" rows="50" cols="180"
				style="font-family: 'Nanum Square';">
					1. 입실 시간은 이용당일 15:00부터 22:00 까지 입니다. 
					  22:00 이후 캠핑장에 도착하게 되는 경우에는 사전연락을 주시기 바랍니다. 
					2. 퇴실 시간은 마지막 이용일 오전 11:00까지 입니다. 
					1. 입장시 주의사항
					- 캠핑장의 출입은 반드시 출입구를 이용하셔야 하며, 관리자의 안내에 따라 주시기 바랍니다.
					- 반드시 최대인원(영유아 포함)을 준수해 주시길 바랍니다.
					  위반시에는 환불없이 퇴거조치 되므로 예약인원 외 방문객의 출입을 엄금합니다.
					- 차량은 1대 기준이며, 추가시 (10,000원/대당) 추가요금이 가산됩니다.
					
					2. 시설사용료
					- 시설사용료는 사용료 징수기준에 준하며, 요금은 선불입니다.
					- 글램핑 숙박시간은 당일 오후 2시부터 익일 오전 11시까지 입니다.
					
					3. 장소 이용 시 사용자께서는 배정된 캠핑구역을 사용하셔야 하며, 항상 깨끗하게 이용하여 주시기 바랍니다.
					
					4. 자동차 이용시 지정된 장소외에는 주차는 불가합니다. (소방차 진출입로 확보)
					- 자동차의 출입은 오후 11부터 오전 7시까지는 삼가하여 주시기 바랍니다.
					- 캠핑장내에서의 차량통행은 서행(20km)이며, 불필요한 자동차의 사용을 삼가해 주시기 바랍니다.
					- 캠핑장 내에서 자동차를 세차할 수 없습니다.
					
					5. 소음
					- 무분별한 음주·가무·고성방가를 절대 금합니다. 다른 투숙객의 휴식에 방해가 된다고 판단되면 관리자가 주의를 줄 수 있으며,
					  주의 후에도 시정되지 않을 경우에는 퇴실을 요구할 수 있습니다.(이러한 사유로 퇴실하게 될 경우 이용요금은 환불해 드리지 않습니다.)
					- 정숙시간은 22:00부터 07:00까지 입니다.
					
					6. 위생
					- 식수 수도꼭지는 식수만을 공급하며, 다른 용도의 사용은 금지되어 있습니다.
					- 폐수는 반드시 지정된 곳에 버려 주시고 절대로 바닥에 버려서는 안됩니다.
					- 쓰레기는 지정된 장소에 재활용 종류별로 분류하여 내 놓으셔야 합니다.
					
					7. 캠핑장 내의 애완동물을 포함한 모든동물의 출입을 금합니다.
					8. 화재와 사고
					- 캠핑장내 잔디와 수목의 보호를 위하여, 함부로 불을 사용하는 것을 금합니다.
					- 음식의 조리 및 불 사용은 지정된 곳에서만 할 수 있습니다.
					- 캠핑장 내 불꽃놀이는 전면 금지되어 있습니다.
					- 캠핑자 내 이용객 안전보호 및 효율적인 관리를 위하여 원동기 장착용구(ATV, 킥보드 등)의 이용 및 출입을 제한합니다.
					- 숯, 장작은 반드시 화롯대에서만 사용 가능합니다.
					- 타고남은 재는 지정된 장소에 분리 배출하여 주시기 바랍니다.
					
					9. 홍보
					- 캠핑장 내에서 정치적 또는 종교적인 홍보 등은 금지되어 있습니다.
					- 관리자의 사전 허가 없이 상업적인 홍보 또는 물품의 판매를 할 수 없습니다.
					
					10. 유실 또는 피해
					- 관리자는 사용자의 소유물에 대한 유실 또는 피해에 대하여 책임을 지지 않습니다.
					- 시설에 대한 피해에 대해서는 피해를 입힌 사람들에게 비용이 청구됩니다.
					
					11. 긴급사태일 경우와 호우. 강풍 등으로 피난이 필요한 경우 관리자의 지시에 따라 주시기 바랍니다.
				</textarea>
			</div>
			
		</form>
		
		<!-- 예약하기 버튼 -->
		<div style="margin-top: 40px;margin-bottom: 30px;">
			<div style="margin: auto;width: 140px;">
				<a href="<c:url value="" />" class="next">
					<img src="<c:url value="/img/reservation/reservation.jpg" />" style="text-align: center;">
				</a>
			</div>
		</div>
		
	</div>
</body>
</html>