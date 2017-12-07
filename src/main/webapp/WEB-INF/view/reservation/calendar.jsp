<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${path}/css/reservation/calendar-style.css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	
	$().ready(function(){
		$("td").data
		$("#cal").on("click", function printCalendar(y, m){
			var date = new Date();
/*  			alert(date); */
			var year = date.getFullYear();
			var month = date.getMonth();
			var day = date.getDate();
			
			y = year;
			m = month;
/*  			y = (y != undefined) ? y:year;
 			m = (m != undefined) ? m-1:month; */
 			var theDate = new Date(y, m, 1);
 			var theDay = theDate.getDay();
/*   			alert("1: " + y + " 2: " + m + " 3: " + theDate + " 4: " + theDay); */
 			var last=[31,28,31,30,31,30,31,31,30,31,30,31]; 
 			
 			if(y%4 == 0 && y % 100 !=0 || y%400 == 0){
 				var lastDate=last[1]=29;
 			}
 			 var lastDate=last[m]; 
/*  			 alert(lastDate + "  " + m); */
 			var row=Math.ceil((theDay+lastDate)/7);
 			
		});
		var date = new Date();
		/*  			alert(date); */
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
 		$("#yearAndMonth").text(year + "." + month);
 		
 	    var calendar="<table border='1'>";
 	    calendar+="<tr>";
 	    calendar+="<th>일</th>";
 	    calendar+="<th>월</th>";
 	    calendar+="<th>화</th>";
 	    calendar+="<th>수</th>";
 	    calendar+="<th>목</th>";
 	    calendar+="<th>금</th>";
 	    calendar+="<th>토</th>";
 	    calendar+="</tr>";
 		
 	    
 	    
 	    var dNum=1;
 	    for(var i=1; i<=row; i++){
 	    calendar+="<tr>";

 	    for(var k=1; k<=7; k++){
 	        if(i==1 && k<=theDay || dNum>lastDate){
 	          calendar+="<td> &nbsp; </td>";
 	         }else{
 	          calendar+="<td>"+dNum+"</td>";
 	           dNum++;
 	         }
 	    }
 	    calendar+="<tr>";
 	    } 
 		$
	});
	
	
/*         var schedules = {
          data: [
            {start: 1, end: 4, days: 4, order: 0, name: "ABC"},
            {start: 8, end: 12, days: 5, order: 0, name: "가나다"},
            {start: 11, end: 13, days: 3, order: 1, name: "하하하"}
          ]
        };

        $().ready(function() {
          for( var i in schedules.data ) {
            var schedule = schedules.data[i];

            var startDate = 0;
            var endDate = 0;
            $("td").each(function(index, td) {
              var day = parseInt($(td).text());
              startDate = $(td).is(".start") ? day : startDate;
              endDate = $(td).is(".end") ? day : endDate;

              endDate = parseInt(endDate);

              if(startDate > endDate) {
                if(startDate == 1) {
                  endDate = endDate + (7 - (index % 7));
                } else {
                  endDate = endDate + 7;
                }
              }

              if ( day == schedule.start ) {

                var isOver = (index % 7) + schedule.days > 6;
                var weekScheduleDay = schedule.days;
                if (isOver) {
                  weekScheduleDay = (endDate + 1) - day;
                }

                var position = $(td).position();
                var schd = $("<div class='schedule " + schedule.name + "'>" + schedule.name + "</div>");
                $(schd).css({
                  "top": (position.top + 20 + (schedule.order * 23) ) + "px",
                  "width": ((weekScheduleDay * 150) - 13) + "px"
                });
                $(td).append(schd);

                if(isOver) {
                  schedule.days = schedule.days - weekScheduleDay;
                  schedule.start = endDate + 1;
                }
              }
            });

          }
        }); */

      </script>
	
	
</head>
<body>
 	<div class="wrapper">
 		<div class="calendarHeader">
 			<div id="cal" class="calendarTitle">
 				<a>
 					<img src="${path}/img/reservation/calendar/m_prev.gif">
 				</a>
 				<span id="yearAndMonth"></span>
 				<a>
 					<img src="${path}/img/reservation/calendar/m_next.gif">
 				</a>
 			</div>
 			<div>
 				<input type="checkbox">
 				<span style="font-size: 15px;">일자별 요금보기</span>
 			</div>
 		</div>
 		<div id="calendar"style="border: 1px solid black;width: 1050px;">
 		<table>
	        <colgroup>
	          <col width="150" />
	          <col width="150" />
	          <col width="150" />
	          <col width="150" />
	          <col width="150" />
	          <col width="150" />
	          <col width="150" />
	        </colgroup>
	      	<tr height="50px" style="background-color:silver;">
	      		<th>SUN</th>
	      		<th>MON</th>
	      		<th>TUE</th>
	      		<th>WED</th>
	      		<th>THU</th>
	      		<th>FRI</th>
	      		<th>SAT</th>
	      	</tr>
<%-- 	      	<c:forEach var="" items="${ }">
	      	
	      	</c:forEach> --%>
	      	<c:if test="">
	      	</c:if>
	        <tr>
	      		<td data-year='2017' data-month='6'>
		      		<div style="width:100%;display: inline-block;border-bottom: 1px solid silver;">25 비수기주중</div>
		      		<div style="margin-top: 5px;"><input type="checkbox"><span>101호</span></div>
		      		<div><input type="checkbox"><span>102호</span></div>
		      		<div><input type="checkbox"><span>103호</span></div>
		      		<div><input type="checkbox"><span>104호</span></div>
		      		<div><input type="checkbox"><span>105호</span></div>
		      		<div><input type="checkbox"><span>106호</span></div>
		      		<div><input type="checkbox"><span>107호</span></div>
		      		<div><input type="checkbox"><span>108호</span></div>
	      		</td>
	      		<td data-year='2017' data-month='6'>26</td>
	      		<td data-year='2017' data-month='6'>27</td>
	      		<td data-year='2017' data-month='6'>28</td>
	      		<td data-year='2017' data-month='6'>29</td>
	      		<td data-year='2017' data-month='6'>30</td>
	      		<td data-year='2017' data-month='7' class='end start'>1</td>
	      	</tr>
	      	<c:forEach items="">
	      	<tr>
	      		<td data-year='2017' data-month='7' class='start'>2</td>
	      		<td data-year='2017' data-month='7'>3</td>
	      		<td data-year='2017' data-month='7'>4</td>
	      		<td data-year='2017' data-month='7'>5</td>
	      		<td data-year='2017' data-month='7'>6</td>
	      		<td data-year='2017' data-month='7'>7</td>
	      		<td data-year='2017' data-month='7' class='end'>8</td>
	      	</tr>
	      	</c:forEach>
	      	<tr>
	      		<td data-year='2017' data-month='7' class='start'>9</td>
	      		<td data-year='2017' data-month='7'>10</td>
	      		<td data-year='2017' data-month='7'>11</td>
	      		<td data-year='2017' data-month='7'>12</td>
	      		<td data-year='2017' data-month='7'>13</td>
	      		<td data-year='2017' data-month='7'>14</td>
	      		<td data-year='2017' data-month='7' class='end'>15</td>
	      	</tr>
	      	<tr>
	      		<td data-year='2017' data-month='7' class='start'>16</td>
	      		<td data-year='2017' data-month='7'>17</td>
	      		<td data-year='2017' data-month='7'>18</td>
	      		<td data-year='2017' data-month='7'>19</td>
	      		<td data-year='2017' data-month='7'>20</td>
	      		<td data-year='2017' data-month='7'>21</td>
	      		<td data-year='2017' data-month='7' class='end'>22</td>
	      	</tr>
	      	<tr>
	      		<td data-year='2017' data-month='7' class='start'>23</td>
	      		<td data-year='2017' data-month='7'>24</td>
	      		<td data-year='2017' data-month='7'>25</td>
	      		<td data-year='2017' data-month='7'>26</td>
	      		<td data-year='2017' data-month='7'>27</td>
	      		<td data-year='2017' data-month='7'>28</td>
	      		<td data-year='2017' data-month='7' class='end'>29</td>
	      	</tr>
	      	<tr>
	      		<td data-year='2017' data-month='7' class='start'>30</td>
	      		<td data-year='2017' data-month='7' class='end'>31</td>
	      		<td data-year='2017' data-month='8'>1</td>
	      		<td data-year='2017' data-month='8'>2</td>
	      		<td data-year='2017' data-month='8'>3</td>
	      		<td data-year='2017' data-month='8'>4</td>
	      		<td data-year='2017' data-month='8'>5</td>
	      	</tr>
	      </table>
		</div>
	</div>
</body>
</html>