<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/css/guide/category.css" />
</head>
<body>


	<div style="width: 1200px; margin: 0 auto; margin-top: 85px;">
	
		<div class="li-option width40 margin70">
			<div class="padding-left20 topDiv recieve">
				<p>
					<c:forEach items="${categoryList}" var="category">
						<c:if test="${category.categoryNumber eq guideVO.categoryNumber }">
							${category.categoryName }
						</c:if>
					</c:forEach>
				</p>
			</div>
			<ul class="ul-option">
				<c:forEach items="${categoryList}" var="category">
					<li class="lili border-bottom border-top"><a
						href="/GreatCamping/camp/guide/guide/${category.categoryNumber }">${category.categoryName }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class=" inline">
			<form id="pageForm">
				<div class="">
						
						<br /> ${guideVO.guideContent}
					<br />
					<br />
				</div>
				${pageNavi} <br />

			</form>
		</div>
	</div>
</body>
</html>