<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
<link rel="stylesheet" href="${path }/css/guide/category.css" />
<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>


<%-- <script type="text/javascript" src="${path }/js/ticker/jquery.vticker-min.js"></script> --%>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body> 

	<div style="width: 1200px; margin: 0 auto; margin-top: 85px;">
		<div class="li-option width40 margin70">
			<div class="padding-left20 topDiv recieve">
				<p>
					<c:forEach items="${categoryList}" var="category">
						<c:if test="${category.categoryNumber eq guideNumber }">
							${category.categoryName}
						</c:if>
					</c:forEach>
				</p>
			</div>
			<ul class="ul-option">
				 <c:forEach items="${categoryList}" var="category">
					<li class="border-bottom <c:if test="${category.categoryNumber eq guideNumber }">a-text</c:if>"><a class="a-margin" href="/GreatCamping/camp/guide/guide/${category.categoryNumber }">${category.categoryName }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class=" inline">
		<form id="pageForm">
		  <div class="guideLines">
			<ul class="AllLiGoodBye borderUl rightContents inline ul-option">
				<c:forEach var="poster" items="${guideList.list }">
					<li class="higthLI">
						<a href="${path }/camp/guide/guideContent/${poster.guideNumber }" class="borgerA" >
							<img alt="poster" src="${path }/img/guide/${poster.poster}.jpg">
						</a>
					</li>
				</c:forEach>
			</ul>
			<br/><br/>
		  </div>
		  	${pageNavi}
		  	  <br/>
		  	 <input type="text" name="searchKeyword" value="${guideSearchVO.searchKeyword}" id="searchKeyword" />
		  	 <select name="searchType" class="searchType">
					<option value="1" ${guideSearchVO.searchType == '1' ? "selected" : ""}>제목</option>
					<option value="2" ${guideSearchVO.searchType == '2' ? "selected" : ""}>내용</option>
			</select>
	   </form>
		</div>
	</div>
	<button onclick="javascript:location.href='${path}/camp/guide/write'">글쓰기</button>
	
	<jsp:include page="/WEB-INF/view/common/footer/footer.jsp" />
</body>
</html>