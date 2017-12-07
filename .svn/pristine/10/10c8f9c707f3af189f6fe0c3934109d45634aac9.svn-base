<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">

	#menu, #menu ul {
		list-style: none;
		margin: 0px;
		padding: 0px;
	}
	
	#menu > li {
		width: 180px;
		text-align: center;
		background-color: white;
	}
	
	#menu > li > a {
		text-decoration: none;
		font-size:14pt;
		font-weight:bold;
		font-family:fantasy;
		color:#777;
		display:inline-block;
		height: 37px;
	}
	
	#menu li {
		margin: 0px;
		display: inline-block;
		margin-right: 10px;
		vertical-align: top;
	}

	#menu li > ul {
		margin: 0px;
		padding: 0px;
	}

	#menu > li li {
		display: none;
	}
	
	.submenu {
		background-color: #FFFFF0;
		z-index: 100;
		width:180px;
		padding-bottom:5px;
		border-bottom: 1px solid #777;
		border-left: 1px solid #777;
		border-right: 1px solid #777;
		border-top: 1px solid #FB7;
	}
	
	.submenu li {
		text-align: left;
	}
	
	.submenu li a {
		padding-top:6px;
		padding-bottom:6px;
		padding-left:10px;
		display:inline-block;
		font-size:11pt;
		color:#555;
		text-decoration: none;
	}
	.submenu li a:hover {
		color:orange;
	}
	
	#menu > li:first-child .submenu li a{
		width:30px;
	}
	
	#menu > li:not(:first-child) .submenu li a{
		width:180px;
	}
	
</style>
<script src="<c:url value="/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript">

	$().ready(function() {
	    $("#menu > li").mouseenter(function() {
	        //var index = $(this).data("index");
	        //$("." + index).show();
			var html = $(this).find("ul").html();
			var submenu = $("<div class='submenu'></div>")
			$(this).children("a").css({ "color" : "orange"});
            $(this).append(submenu);
			$(this).find(".submenu").html(html);
            $(this).find(".submenu").css({
				"position": "absolute"
			});
            $(this).find(".submenu").find("ul").css({
                "list-style": "none"
			});
            $(this).find(".submenu").find("li").css({
                "display": "inline-block",
            	"margin-right": "10px"
            })

		});

        $("#menu > li").mouseleave(function() {
            //var index = $(this).data("index");
            //$("." + index).hide();
			$(this).children("a").css({ "color" : "#777"});
            $(this).find(".submenu").remove();
        });
	});
</script>
<div id="menu-wrapper">

	<c:set var="prev_level" value="0" />

	<ul id="menu">
	<c:set var="parentClass" value="class=''" />
	<c:forEach items="${menuList}" var="menu">

		<c:set var="now_level" value="${menu.level}" />

		<c:if test="${now_level eq prev_level}">
			</li>
		</c:if>

		<c:if test="${now_level > 1 && now_level > prev_level}">
			<c:set var="parentClass" value="class='_${menu.parentMenuId}'" />
			<ul>
		</c:if>

		<c:if test="${now_level < prev_level}">
			<c:forEach begin="0" end="${(prev_level - now_level) - 1}" step="1">
				</li></ul>
			</c:forEach>
			<c:set var="parentClass" value="class=''" />
		</c:if>

		<li ${parentClass} data-index="_${menu.menuId}">
			<c:if test="${menu.url ne ''}"><a href="${menu.url}"></c:if>
					${menu.menuName}
			<c:if test="${menu.url ne ''}"></a></c:if>

		<c:set var="prev_level" value="${now_level}" />
	</c:forEach>

	<c:if test="${now_level > 1}">
		<c:forEach begin="0" end="${now_level - 1}" step="1">
			</li></ul>
		</c:forEach>
	</c:if>

	</ul>


</div>

