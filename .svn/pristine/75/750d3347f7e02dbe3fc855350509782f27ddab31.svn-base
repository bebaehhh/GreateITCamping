<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
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
	$().ready(function() {
		$(".next").click(function() {
			alert("101호 / 2017-11-30(1박)\n선택하신 내용이 맞습니까?");
		});
	});
</script>
</head>
<body>
	<div id="wrapper">
		
		<!-- 이전단계 버튼 -->
		<div style="padding: 30px 0 20px 0;height: 50px;">
			<a href="<c:url value="/reservation/calendar" />" style="text-decoration: none;float: right;height: 50px;">
				<img src="<c:url value="/img/reservation/pre_step.jpg" />">
			</a>
		</div>
		<!-- 상세입력 금액 -->
		<div style="margin-bottom: 10px;">
			<img src="<c:url value="/img/reservation/mark.jpg" />" style="position: relative;top: 4px;" >
			<span>상세 예약 정보 입력</span>
			<span style="float: right;font-size: 9pt;position: relative;top: 5px;">* 이전단계로 돌아가시면 날짜, 객실 변경이 가능합니다.</span>
		</div>
		<div style="border: 1px solid red; padding: 20px 25px;margin-bottom: 30px;height: 100%;">
			<div style="display:inline-block;vertical-align: middle;padding: 25px 0;">
				<img src="<c:url value="/img/reservation/payment.jpg" />" >
				<span style="position: relative;bottom: 20px;">총 합계 금액
					<span style="color: red;font-size: 20pt;position: relative;top: 4px;">17000</span>원
				</span> 
			</div>
			<div style="display: inline-block;float: right;text-align: right;">
				<div style="padding: 5px 0">결제금액: <span style="color: red">17000</span>원<br/></div>
				<div style="padding: 5px 0">추가인원금액: <span style="color: red">0</span>원<br/></div>
				<div style="padding: 5px 0">옵션금액: <span style="color: red">0</span>원</div>
			</div>
		</div>
		
		<!-- 상세입력 정보 -->
		<div style="border-left: 1px solid #ccc;border-right: 1px solid #ccc;border-bottom: 1px solid #ccc;">
			<!-- 객실명 -->
			<div style="display: inline-block;width: 23%;height: 64px;text-align: center;border-top: 1px solid #000;"><h4>101호</h4></div>
			<div style="display: inline-block;float:right; width: 76.9%;height: 64px;border-top: 1px solid #ccc;border-left: 1px solid #ccc;border-bottom: 1px solid #ccc;">&nbsp</div>
			
			<!-- 세부정보 입력 -->
			<div style="padding: 20px;">
				
				<!-- 기간선택 -->
				<div style="display: inline-block;width: 48.5%;">
					<div style="border: 1px solid #ccc;padding: 15px;height: 23px;">
						<h4 style="display:inline-block;margin: 0;">기간선택</h4>
						<select style="display:inline-block;float: right;width: 20%;height: 25px;color: #585656;border: 1px solid #ccc;">
							<option value="1">1박</option>
							<option value="2">2박</option>
							<option value="3">3박</option>
							<option value="4">4박</option>
							<option value="5">5박</option>
							<option value="6">6박</option>
							<option value="7">7박</option>
						</select>
					</div>
					<div style="border: 1px solid #ccc;padding: 0px 20px;">
						<div style="border-bottom: 1.5px dashed #ccc;padding: 15px 5px;">
							<span style="font-size: 10.5pt;">CHECK IN</span>
							<span style="color: red; float: right;margin: 0;font-size: 15pt;position: relative;bottom: 5px;">2017-11-30</span>
						</div>
						<div style="padding: 15px 5px;">
							<span style="font-size: 10.5pt;">CHECK OUT</span>
							<span style="color: red; float: right;margin: 0;font-size: 15pt;position: relative;bottom: 5px;">2017-12-01</span>
						</div>
					</div>
				</div>
				
				<!-- 인원선택 -->
				<div style="display: inline-block;float:right;width: 48.5%;">
					<div style="border: 1px solid #ccc;padding: 15px;height: 23px;">
						<h4 style="display:inline-block;margin: 0;">인원선택</h4>
						<span style="float: right;color: #585656;font-size: 9pt;">* 총 인원을 선택해 주세요.</span>
					</div>
					<div style="border: 1px solid #ccc;padding: 0px 20px;font-size: 10.5pt;">
						<div style="border-bottom: 1.5px dashed #ccc;padding: 15px 5px;">
							<span>성인</span>
							<span style="color: red; float: right;position: relative;bottom: 3px;">
								1인당 10000원
								<select style="width: 70px;color: #585656;border: 1px solid #ccc;height: 23px;">
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
								</select>
							</span>
						</div>
						<div style="border-bottom: 1.5px dashed #ccc;padding: 15px 5px;">
							<span>소아</span>
							<span style="color: red; float: right;position: relative;bottom: 3px;">
								1인당 10000원
								<select style="width: 70px;color: #585656;border: 1px solid #ccc;height: 23px;">
									<option value="0">0명</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
								</select>
							</span>
						</div>
						<div style="padding: 15px 5px;">
							<span>영유아</span>
							<span style="color: red; float: right;position: relative;bottom: 3px;">
								1인당 0원
								<select style="width: 70px;color: #585656;border: 1px solid #ccc;height: 23px;">
									<option value="0">0명</option>
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
								</select>
							</span>
						</div>
					</div>
				</div>
				
				
				<div style="clear: both;"></div>
				
				<!-- 부가서비스 -->
				<div style="border: 1px solid #ccc;margin-top: 20px;height: 23px;padding: 15px;">
					<h4 style="display:inline-block;margin: 0;position: relative;bottom: 8px;">부가서비스</h4>
					<img src="<c:url value="/img/reservation/add_service.jpg" />" style="display: inline-block;margin-left: 5px;">
				</div>
				<div style="border: 1px solid #ccc;padding: 0px 20px;">
					<div style="border-bottom: 1px solid #e6e6e6;padding: 15px 5px;font-size: 10.5pt;">
						베큐그릴대여
						<select style="float: right;position: relative;width: 22%;color: #585656;border: 1px solid #ccc;height: 23px;">
							<option value="0">없음</option>
							<option value="1">1회 바베큐그릴대여 - 20000원</option>
						</select>
					</div>
					<div style="border-bottom: 1.5px dashed #ccc;font-size: 9pt;padding-top: 6px;padding-left: 15px;padding-bottom: 10px;">
						<span>＊숯그릴+바비큐 이용요금 : 20,000원</span>
					</div>
					<div style="border-bottom: 1px solid #e6e6e6;padding: 15px 5px;font-size: 10.5pt;">
						*바베큐셋트메뉴
						<select style="float: right;position: relative;width: 17%;color: #585656;border: 1px solid #ccc;height: 23px;">
							<option value="0">없음</option>
							<option value="1">1회-2인주문 - 50000원</option>
							<option value="2">1회-3인주문 - 75000원</option>
							<option value="3">1회-4인주문 - 100000원</option>
						</select>
					</div>
					<div style="font-size: 9pt;padding-top: 6px;padding-left: 15px;padding-bottom: 10px;">
						<span>＊바비큐 1인 구성 : 돼지고기목살 + 소세지 + 라면 + 햇반 + 모듬쌈 + 김치 + 쌈장<br/>
								(2인이상 주문 가능/숯+그릴 제공합니다)<br/>
								1인기준 25,000원
						</span>
					</div>
				</div>
				
			</div>
		
		</div>
		
		<!-- 다음단계 버튼 -->
		<div style="margin-top: 40px;margin-bottom: 30px;">
			<div style="margin: auto;width: 140px;">
				<a href="<c:url value="/reservation/orderInfo" />" class="next">
					<img src="<c:url value="/img/reservation/next_step.jpg" />" style="text-align: center;">
				</a>
			</div>
		</div>
	
	</div>
</body>
</html>