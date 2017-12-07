<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <style type="text/css">
	.fc-right {
		width: 50px;
		height: 50px;
		background-color: blue;
	}
</style> -->


<%-- <link rel="stylesheet" href="${path}/css/reservation/calendar-style.css" /> --%>
<link rel="stylesheet" href="${path}/js/calendar/fullcalendar.min.css"/>
<link rel="stylesheet" href="${path}/js/calendar/fullcalendar.print.min.css" media="print"/>


<script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%-- <link rel="stylesheet" href="${path}/js/jquery-ui-themes/themes/base/jquery-ui.min.css"> --%>

<script type="text/javascript" src="${path}/js/calendar/lib/moment.min.js"></script>
<script type="text/javascript" src="${path}/js/calendar/lib/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/calendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="${path}/js/calendar/gcal.min.js"></script>
<script type="text/javascript" src="${path}/js/calendar/lib/jquery-ui.min.js"></script>
<%-- <script type="text/javascript" src="${path}/js/calendar/locale-all.js"></script> --%>

<script type="text/javascript">

$(document).ready(function() {
    $("#date1").datepicker();
    $("#date2").datepicker();
	
	var reservationArr = [];
	
	$.post("${path}/calendar", {}, function(response) {
		for(var res of response) {
			reservationArr.push({title: res.mId + ' 님 예약 완료', start: res.rCheckIn, end: res.rCheckOut});
		}		
		reserv(reservationArr);
	});

	function reserv(reservation){
		$('#calendar').fullCalendar({
			defaultDate: '2017-11-12',
			editable: true,
			eventLimit: true, // allow "more" link when too many events
	 		events: reservation
		});
	}

	
	
});

</script>
<style>

body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

</style>
</head>
<body>

<div id='calendar'></div>
<div>
	<c:forEach var="rList" items="${reservationList}">
		${rList}
	</c:forEach>
</div>

<input type="text" name="date" id="date1" size="12" />
<input type="text" name="date2" id="date2" size="12" />

</body>
</html>