<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value ="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
	<script>tinymce.init({ selector:'textarea' });</script>
</head>
<body>
	
	<div>
		<form action="${path}/camp/guide/wirteSend" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<th>작성자</th>
					<td>
						<select name="categoryNumber">
							<c:forEach var="categoryList" items="${categoryList }">
								<option value="${categoryList.categoryNumber }">${categoryList.categoryName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="guideName"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="guideContent"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
		
		
	</div>
	
</body>
</html>