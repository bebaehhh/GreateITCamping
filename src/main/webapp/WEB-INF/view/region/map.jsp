<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
<style type="text/css">
	#map-region-area {
		position:relative;
		width:1200px;
		margin:0px auto 0px;
	}

	#img_whole {
		position: absolute;
		left: 0px;
		top: 0px;
	}
	#imgMap_whole area {
		position: absolute;
		left: 0px;
		top: 0px;
	}
	#main-map-nav #map-nav-title {
		font-size: 23pt;
	}
	#main-map-nav #map-nav-content {
		font-size: 30pt;
	}
	#map-move-button-list li {
		float:left;
		padding:5px 8px;
	}
	#map-move-button-list li a {
		display: block;
		padding:6px 10px;
		text-decoration: none;
		font-size: 14pt;
		color: #777;
		border-radius: 12px;
		text-align:center;
		line-height: 17px;
	}
	
	#map-move-button-list li a.on
	{
		color: #fff;
		background-color:#ff6600
	}
	
	#main-map-tab {
		position:absolute;
		top:30px;
		left:480px;
	}
	#main-map-tab ul {
		padding:0px;
		margin:0px;
		list-style:none;
	}
	#main-map-tab li {
		float:left;
	}
	#main-map-tab li > a {
		text-decoration:none;
		display:block;
		border: 1px solid #aaa;
		text-align:center;
		padding: 10px 0px;
		width: 120px;
		font-size: 11pt;
		color: #333;
	}
	#main-map-tab li > a.on {
		border: 1px solid #555;
		color: #111;
	}
	.main-search-tab {
		position:relative;
		border: 1px solid #ddd;
		height:335px;
	}
	.main-search-tab #theme_tab {
		padding:0px;
		margin:120px 70px 0px;
		list-style:none;
	}
	.main-search-tab #theme_tab a{
		display:block;
		width:94px;
		height:108px;
		margin:0px 18px;
		float:left;
	}
	#theme_tab li:nth-child(1) a{
		background:url('/GreatCamping/img/map/theme1.png');
	}
	#theme_tab li:nth-child(1) a:hover {
		background:url('/GreatCamping/img/map/theme1_on.png');
	}
	#theme_tab li:nth-child(2) a{
		background:url('/GreatCamping/img/map/theme2.png');
	}
	#theme_tab li:nth-child(2) a:hover {
		background:url('/GreatCamping/img/map/theme2_on.png');
	}
	#theme_tab li:nth-child(3) a{
		background:url('/GreatCamping/img/map/theme3.png');
	}
	#theme_tab li:nth-child(3) a:hover {
		background:url('/GreatCamping/img/map/theme3_on.png');
	}
	#theme_tab li:nth-child(4) a{
		background:url('/GreatCamping/img/map/theme4.png');
	}
	#theme_tab li:nth-child(4) a:hover {
		background:url('/GreatCamping/img/map/theme4_on.png');
	}
	#theme_tab li:nth-child(5) a{
		background:url('/GreatCamping/img/map/theme5.png');
	}
	#theme_tab li:nth-child(5) a:hover {
		background:url('/GreatCamping/img/map/theme5_on.png');
	}
	#theme_tab li:nth-child(6) a{
		background:url('/GreatCamping/img/map/theme6.png');
	}
	#theme_tab li:nth-child(6) a:hover {
		background:url('/GreatCamping/img/map/theme6_on.png');
	}
	#theme_tab li:nth-child(7) a{
		background:url('/GreatCamping/img/map/theme7.png');
	}
	#theme_tab li:nth-child(7) a:hover {
		background:url('/GreatCamping/img/map/theme7_on.png');
	}
	#theme_tab li:nth-child(8) a{
		background:url('/GreatCamping/img/map/theme8.png');
	}
	#theme_tab li:nth-child(8) a:hover {
		background:url('/GreatCamping/img/map/theme8_on.png');
	}
	#org-go {
		background: #ff6600;
	    color: #fff;
	    font-size: 12px;
	    padding: 3px 6px 2px 6px;
	    display: inline-block;
	    line-height: 140%;
	    border-radius: 3px;
	    text-decoration: none;
	}
	#subRegionRedirectBtn {
		display: inline-block;
	    height: 25px;
	    margin: 0;
	    padding: 4px 12px;
	    font-family: dotum;
	    border: 0;
	    line-height: 1.4;
	    vertical-align: middle;
	    text-decoration: none;
	    color: #fff;
	    background-color: #ff6600;
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    -ms-box-sizing: border-box;
	    box-sizing: border-box;
	    cursor: pointer;
	}
</style>
<script type="text/javascript" src="<c:url value='/js/jquery.imagemapster.js'/>"></script>
<script type="text/javascript">
	var subRegionList;
	
	$().ready(function(){
		 //$("#imgMap_whole").maphilight();
		 
		 $('#img_whole').mapster({"mapKey":"title"
		     , fillColor: 'ff5511'
		     , fillOpacity: 0.5
		 	 , "onClick" : function(){
		 		var regionID = $(this).data("sido");
		 		
		 		if("${isMainPage}".length > 0) {
		 			$('#imgMap_whole area').mapster('set',false);
			 		mapLinkChange(regionID);
		 			return false;
		 		} else {
		 			return true;
		 		}
		 	 }
		 });
		 //$('#imgMap_whole area').mapster('set',true);
		 mapLinkChange("${param.regionID}","${param.subRegionID}");
		 
		 $(".main-search-tab").each(function (idx, obj) {
			 if($(obj).is(":visible")) {
				 changeMainTab(idx);
			 }
		 });
		 
	});
	
	function mapLinkClick(regionID){
		if("${isMainPage}".length > 0) {
			$('#imgMap_whole area').mapster('set',false);
			mapLinkChange(regionID);
			return false;
		} else {
			location.href="?regionID=" + regionID;
		}
	}
	
	function mapLinkChange(regionID, subRegionID) {
		var title = "전국";
		var count = ${regionTotalCount};
		$('#imgMap_whole area').each(function(idx,obj){
			if($(obj).data("sido")==regionID) {
 				$(obj).mapster('set',true);
 				title = $(obj).attr("title");
 				count = $(obj).data("count");
 			}
		});
		$("#map-move-button-list a").each(function(idx,obj){
 			if($(obj).data("sido")==regionID) {
 				$(obj).addClass("on");
 			} else {
 				$(obj).removeClass("on");
 			}
 		});
		$("#org-go").attr("href","/GreateCamping/campDetailMain?regionID=" + regionID);
 		$("#main-map-nav #map-nav-title").text(title);
 		$("#main-map-nav #map-nav-content").text(count + "개");
 		$("#map-nav-desc").text(title + " " + count + "개 캠핑장이 있습니다.");
 		
 		if("${isMainPage}".length == 0) {
	 		
	 		if(subRegionList) {
	 			resetSubRegionOptions(regionID, subRegionID);
	 		} else {
				$.post("/GreatCamping/subregion/list", {} , function (response){ 
				 	subRegionList = response;
				 	resetSubRegionOptions(regionID, subRegionID);
				});
	 		}
 		}
	}
	
	function resetSubRegionOptions(regionID, subRegionID) {
 		$("#main-map-subregion-select option").remove();
 		$("#main-map-subregion-select").append("<option value='' data-regionid=''>시/군/구 선택</option>");

	 	for(var sbKey in subRegionList) {
 			if(subRegionList[sbKey].regionID == regionID) {
 				if(subRegionList[sbKey].subRegionID == subRegionID) {
 					$("#main-map-subregion-select").append("<option value='"+subRegionList[sbKey].subRegionID+"' data-regionid='" + subRegionList[sbKey].regionID + "' selected='selected'>"+subRegionList[sbKey].subRegionNm+"</option>");	
 				} else {
 					$("#main-map-subregion-select").append("<option value='"+subRegionList[sbKey].subRegionID+"' data-regionid='" + subRegionList[sbKey].regionID + "'>"+subRegionList[sbKey].subRegionNm+"</option>");	
 				}
 			}
 		}
	}
	
	function changeMainTab(idx){
		$(".main-search-tab").hide();
		$(".main-search-tab").eq(idx).show();

		$("#main-map-tab a").removeClass("on");
		$("#main-map-tab a").eq(idx).addClass("on");
	}
	
	function moveToDetailPage() {
		var subRegionID = $("#main-map-subregion-select").val();
		var regionID = $("#main-map-subregion-select option:selected").data("regionid");
		if(regionID == "" || subRegionID == "") {
			alert("시군구를 선택하세요.");
			return;
		}
		location.href = "?regionID=" + regionID + "&subRegionID=" + subRegionID;
	}
</script>

<div id="map-region-area">
	<div class="main-search-tab">
		<div style='position:relative;float:left;padding:0px 20px;background-color:#feb500;'>
			<div style="position:relative;text-align:center;padding:20px;"><img src="/GreatCamping/img/tit_maparea.png" /></div>
			<div>
				<img id="img_whole" usemap="#imgMap_whole" src="/GreatCamping/img/map/koreamap00.gif"/>
				<map name="imgMap_whole" id="imgMap_whole">					
					<c:forEach items="${regionInfoList}" var="ritem">
						<area href="?regionID=${ritem.regionVO.regionID}" alt="${ritem.regionVO.regionNm}" title="${ritem.regionVO.regionAlias}" data-sido="${ritem.regionVO.regionID}" data-count="${ritem.regionVO.count}" shape="poly" coords="${ritem.mapCoord}">
					</c:forEach>
				</map>
			</div>
		</div>
		<div id="main-map-nav" style="position:relative;float:left;width:160px;padding:100px 0px 0px 40px;text-size:20pt;">
			<span id="map-nav-title"></span><br/>
			<span id="map-nav-content"></span>
			<c:if test='${isMainPage ne "TRUE"}'>
				<select id="main-map-subregion-select" style="height:24px;">
					<option value='' data-subRegionID=''>시/군/구 선택</option>
				</select>
				<button type="button" class="button" id="subRegionRedirectBtn" onclick="moveToDetailPage();">선택</button>
			</c:if>
		</div>
		<a style="position:absolute;bottom:70px;left:330px;" href="/GreatCamping/campingPlace/download">
			<img src='<c:url value="/img/map/btn_download_list.png" />'/>
		</a>
		<div style="position:absolute;right:130px;top:100px;width:450px;">
			<ul id="map-move-button-list" style="list-style: none;padding:0px;margin:0px;">
			<c:forEach items="${regionInfoList}" var="ritem">
				<li><a href="javascript:mapLinkClick(${ritem.regionVO.regionID});" data-sido="${ritem.regionVO.regionID}">${ritem.regionVO.regionAlias}</a></li>
			</c:forEach>
			</ul>
		</div>
		<div style="position:absolute;right:130px;top:250px;width:440px;padding:10px;border-bottom:1px solid #aaa;border-top:1px solid #aaa;">
			<span id="map-nav-desc"></span>&nbsp;
			<c:if test='${isMainPage eq "TRUE"}'>
				<a id="org-go" href="/GreatCamping/campDetailMain" class="btn-org-go">바로가기</a>
			</c:if>
		</div>
		<div style="clear:both;"></div>
	</div>

	<div class="main-search-tab" style="display:none;">
		<ul id="theme_tab">
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li style="clear:both;"></li>
		</ul>
	</div>
	
	<div id="main-map-tab">
		<ul>
			<li>
				<a href="javascript:changeMainTab(0);">전국 캠핑장</a></li>
			<li>
				<a href="javascript:changeMainTab(1);">테마별 캠핑장</a></li>
		</ul>
	</div>
</div>