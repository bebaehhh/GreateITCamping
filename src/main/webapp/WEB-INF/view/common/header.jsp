<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/css/member/login.css"/>"/>
<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/dream_slider.js'/>"></script>
<style type="text/css">
	body {
		padding: 0px;
		margin: 0px;
	}
	#header-wrapper {
		position:relative;
		width:1200px;
		margin:0px auto 0px;
	}
	#header-layer1 {
		position:relative;
		padding-top:10px;
	}
	#header-layer1 .searchBox {
		width:170px;
		float:left;
	}
	#header-layer1 .memberLink {
		text-decoration: none;
		color: #555;
	}
	#header-layer2 {
		width:100%;
		height:90px;
		position:relative;
	}
	#header-layer2 .logoImg {
		position:absolute;
		top:0px;
		left:0px;
	}
	#header-layer2 #menu-area-top {
		position:absolute;
		bottom:0px;
		right:0px;
	}
	.border-line {
		height:1px;
		width:100%;
		background-color: #777;
	}
	.overlay {
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		z-index: 2000;
	    overflow: hidden;
	    width: 100%;
	    height: 100%;
	    margin: 0;
	    padding: 0;
	    background: url(/GreatCamping/img/bgOverlay.png);
	}
</style>
<script type="text/javascript">
	$().ready(function(){
		
		<c:if test="${not empty sessionScope._USER_}" >
			$("#loginSession").html("");
			var memberInfo = $("<p>"+"${sessionScope._USER_.memberNickName}"+"님 환영합니다.</p>");
			$("#loginSession").prepend(memberInfo);
		</c:if>
		
		$("#login").click(function(){
			$(".overlay").css({display: 'block'});
			$("#loginLayer").css({display: 'block'});
			$("#memberId").val("");
			$("#memberPassword").val("");
		});
		
		$(".close-login").click(function(){
			$(".overlay").css({display: 'none'});
			$("#loginLayer").css({display: 'none'});
		});
		
		$(".Btn").click(function(){
			var id = $("#memberId").val();
			var password = $("#memberPassword").val();
			if(id.length < 1) {
				alert("아이디를 입력해주세요!");
				$("#memberId").focus();
				return;
			}
			
			if(password.length < 1){
				alert("비밀번호를 입력해주세요!");
				$("#memberPassword").focus();
				return;
				
			}
			/* var param = $("#doLoginForm").serialize(); */
			$.post("<c:url value='/login/dologin' />", $("#doLoginForm").serialize(), 
					function(response){
					if(response){
						if(response != "isSuccess") {
							$("#idPwFalse").css("display", "block");
							return;
						}
						location.href = "<c:url value='/' />";
					}
			});
		});	
	});
</script>
</head>
<body style="padding: 0px; margin: 0px;">
<div class="overlay"></div>
<div id="loginLayer">
	<div class="wrap">
		<h2 style="margin-top: 0;">Great Camping에 오신 것을 환영합니다.</h2>
		<a class="close-login">
			<img src="<c:url value="/img/login/close.gif" />" />
		</a>
	</div>
	<div id="txt">
		<span>이메일 아이디</span> 와 
			<span>비밀번호</span> 를 입력하시고<br>
			로그인을 하시면 다양한 서비스를 이용하실 수 있습니다.
	</div>		
	<form id="doLoginForm">
		<div class="login-email">
			<div class="padding">
				<label for="userId">아이디</label> 
				<input type="text" id="memberId" name="memberId" class="input-box" tabindex="1" autocomplete=off/>
			</div>
			
			<div class="pw">
				<label for="userPw">비밀번호</label>
				<input type="password" id="memberPassword" name="memberPassword" class="input-box" tabindex="2" autocomplete=off/>
			</div>	
			<div class="submit">
				<!-- <a href="javascript:void(0);" class="Btn"  tabindex="3">로그인</a> -->
				<input type="button" class="Btn" tabindex="3" value="로그인" >
			</div>	
		</div>
	</form>
	<p id="idPwFalse">아이디, 비밀번호가 틀립니다. 확인 해주세요</p>
	<div class="line"></div>
	<div class="etc">
		<a href="<c:url value='/member/idpwFind' />" class="go-idpwd"  tabindex="4">아이디·비밀번호 찾기</a>
		<a href="<c:url value='/member/signUp' />" class="go-join" tabindex="5">회원가입</a>
	</div>
</div>
<div id="header-wrapper">
	<div id="header-layer1">
		<input type="text" placeholder="통합검색(캠핑장 이름, 전화번호)" class="searchBox" />
		<a href="#"><img alt="search" src="<c:url value='/img/magnifier-icon.png'/>" style="width:20px;height:20px;float:left;margin-left:5px;"></a>
		<div id="loginSession" style="float:right">
		<a class="memberLink" href="javascript:void(0);" id="login">로그인</a>
		<a class="memberLink" href="<c:url value="/member/signUp"/>">회원가입</a>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div id="header-layer2">
		<img src="<c:url value='/img/logo.png'/>" class="logoImg" width="360px" height="80px"/>
		<div id="menu-area-top">
		<c:import url="/menu/all" />
		</div>
	</div>
</div>
<div class="border-line"></div>