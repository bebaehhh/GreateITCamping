<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
tr, td, table {
/* 	border: 1px solid black; */
}

input {
	border: none;
}

 table > tbody > tr:nth-child(3) > td {
 	height: 500px;
 }
 
.noticeInputWrapper {
	height: 100%;
	width: 100%;
	border: none;
}

.noticeSubject{
	height: 40px;
}

</style>
<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script> <!-- 제이쿼리 -->
<script type="text/javascript">
$().ready(function(){
    $(".registBtn").click(function() {
        alert("The paragraph was clicked.");
    });
});
</script>
</head>

<body>
<div>
	<table>
			<colgroup>
				<col width="120px">
				<col width="685px">
			</colgroup>
			
			<tr>
				<td colspan="2"><h2>공지사항등록</h2><input type="checkbox" name="importance">중요도설정</td>
			</tr>
			<tr>
				<td class="noticeSubject" style="text-align: center;" >제목</td>
				<td class="noticeSubject"> <input type="text" name="subject" placeholder="제목" class="noticeInputWrapper"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="content" class="noticeInputWrapper">내용</textarea> 
				</td>
			</tr>
	</table>
			<a href="#">목록</a> <a href="#" class="registBtn">등록</a>
</div>
</body>
</html>