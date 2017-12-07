<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>회원가입</title>
		<script type="text/javascript" src ="<c:url value="/js/jquery-3.2.1.min.js" />"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<c:url value="/css/member/signUp.css"/>" />
		<script type="text/javascript" src="<c:url value="/js/member.js"/>"></script>
	</head>
	<script type="text/javascript">
			let inputId = "";
			let inputNickName = "";
			let certYN = false;
			let nickNameCheckYN = false;
			let memberIdCheckYn = false;
			const passwordPattern = /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[\w\d$@$!%*?&]{6,20}/;
			const idPattern = /^[a-z0-9._]{4,16}$/;
			const nickNamePattern = /^[0-9가-힣_]{2,8}$/;
			
			
			$().ready(function (){
				/* 인증 및 중복 체크 항목 변경 여부 확인 */
				$("#memberEmail, #memberId, #memberNickName").change(function(){
					
					switch($(this).attr("name")){
					case "memberEmail":
						if(inputEmail && certYN) {
							if(inputEmail != $(this).val()){
								$.alert({
								    title: '이메일 재인증!',
								    content: "인증받은 이메일이 변경되었습니다. 새롭게 인증 해주세요!",
					                type: 'orange',
					                boxWidth: '300px',
								});
								certYN =false;
								$("#comfirmNumber").val("");
								$("#comfirmNumber").focus();
							}
						}
						break;
					case "memberId":
						if(inputId) {
							if(inputId != $(this).val() && memberIdCheckYn){
								$.alert({
								    title: '아이디 중복체크!',
								    content: "아이디가 변경되었습니다. 새롭게 중복 체크 해주세요!",
					                type: 'orange',
					                boxWidth: '300px',
								});
								memberIdCheckYn =false;
							}
						}
						break;
					case "memberNickName":
						if(inputNickName) {
							if(inputNickName != $(this).val() && nickNameCheckYN){
								$.alert({
								    title: '닉네임 중복체크!',
								    content: "닉네임 변경되었습니다. 새롭게 중복 체크 해주세요",
					                type: 'orange',
					                boxWidth: '300px',
								});
								certYN =false;
							}
						}
						break;
					}
					
				});
				
				/* 이메일 인증 이전 텍스트 변경 시 인증번호 입력 창 none*/
				$("#memberEmail").change(function(){
					if(certNumber && inputEmail) {
						$("#emailStyle").css("display", "none");
					}
				});
				
				
				/* 비밀번호 패턴 체크  */
				$("#password1").change(function(){
					$("#pwFail").css("display", "none");
					$("#pwSuccess").css("display", "none");
					var password = $(this).val();
					
					if(!passwordPattern.test(password)) {
						$("#pwFail").css("display", "block");
						$(this).val("");
						$(this).focus();
						return;	
					}
					$("#pwSuccess").css({display:"block", color: "#0088f4"});
				});
				
				
				$("#password2").change(function(){
					$("#pwNotEquals").css("display", "none");
					$("#pwEquals").css("display", "none");
					var password = $(this).val();
					
					if($(this).val() !== $("#password1").val() ) {
						$("#pwNotEquals").css("display", "block");
						$(this).val("");
						$(this).focus();
						return;	
					}
					$("#pwEquals").css({display:"block", color: "#0088f4"});
				});
				
				
				/* 이메일 인증 */
				$("#emailCert").click(function(){
					certEmail($("#memberEmail"));
				});
				
				/* 인증번호 확인 */
				$("#emailcomfirm").click(function(){
					var comfirmNumber = $("#comfirmNumber").val();
					if(!(comfirmNumber == certNumber)) {
						$.alert({
						    title: '이메일 확인!',
						    content: "인증번호가 일치하지 않습니다. 다시 한번 입력 해주세요.",
			                type: 'orange',
			                boxWidth: '300px',
						});
						$("#comfirmNumber").val("");
						$("#comfirmNumber").focus();
						return;
					}
					$.alert({
					    title: '이메일 확인!',
					    content: "인증이 완료 되었습니다.",
		                type: 'orange',
		                boxWidth: '300px',
					});
					certYN = true;
				});
				
				/* 아이디 중복 체크 */
				$("#idCheck").click(function(){
					var id = $("#NewMemberId").val();
					if(!(idPattern.test(id))) {
						$.alert({
						    title: '아이디 확인!',
						    content: "영문 소문자, 숫자, '.', '_'만 입력할 수 있습니다(4~16자리). 다시 입력 해주세요.",
			                type: 'orange',
			                boxWidth: '300px',
						});
						$("#NewMemberId").val("");
						$("#NewMemberId").focus;
						return;
					}
					$.post("<c:url value='/member/checkId' />",{memberId : id}, function(responce){
						if(responce =="false") {
							$.alert({
							    title: '아이디 확인!',
							    content: "이미 등록된 아이디 입니다.",
				                type: 'orange',
				                boxWidth: '300px',
							});
							$("#NewMemberId").val("");
							$("#NewMemberId").focus;
							return;
						}
						$.alert({
						    title: '아이디 확인!',
						    content: "사용가능한 아이디 입니다.",
			                type: 'orange',
			                boxWidth: '300px',
						});
						memberIdCheckYn = true;
						inputId = id;
					});
				});
				
				/* 닉네임 중복 체크*/
				$("#nicknameCheck").click(function(){
					var nickname = $("#memberNickName").val();
					if(!(nickNamePattern.test(nickname))){
						$.alert({
						    title: '닉네임 확인!',
						    content: "한글, 숫자, '_'를 제외한 문자는 사용할 수 없습니다 (2~8자리)",
			                type: 'orange',
			                boxWidth: '300px',
						});
						$("#memberNickName").val("");
						$("#memberNickName").focus;
						return;
					}
					$.post("<c:url value='/member/checkNickname' />",{memberNickName : nickname}, function(responce){
						if(responce == "false") {
							$.alert({
							    title: '닉네임 확인!',
							    content: "이미 등록된 닉네임 입니다",
				                type: 'orange',
				                boxWidth: '300px',
							});
							$("#memberNickname").val("");
							$("#memberNickname").focus;
							return;
						}
						
						$.alert({
						    title: '닉네임 확인!',
						    content: "사용가능한 닉네임 입니다.",
			                type: 'orange',
			                boxWidth: '300px',
						});
						nickNameCheckYN = true;
						inputNickName = nickname;
					});
				});
				
				/* 회원가입 */
				$("#signUpbutton").click(function() {
					
					var checkArray = new Array(certYN, nickNameCheckYN, memberIdCheckYn);
					var title = "";
					var content = "";
					for(var i = 0 ; i < checkArray.length ; i++) {
						if(!checkArray[i]) {
							switch(i) {
								case 0:
									title ="이메일인증 오류";
									content ="이메일 인증 후 회원가입이 가능 합니다.";
									break;
								case 1:
									title = "닉네임 중복 체크";
									content = "닉네임 중복 체크 후 회원가입이 가능 합니다.";
									break;
								case 2:
									title = "아이디 중복 체크";
									content = "아이디 중복 체크 후 회원가입이 가능 합니다.";
									break;
							}
							$.alert({
							    title: title,
							    content: content,
				                type: 'orange',
				                boxWidth: '300px',
							});
							return;
						}
					}
					/* 약관동의 체크  */
					if(!$("#signUpForm").find("input[type=checkbox]").prop("checked")){
						$.alert({
						    title: '이용약관 동의!',
						    content: "이용약관 동의를 체크 해주세요.",
			                type: 'orange',
			                boxWidth: '300px',
						});
						return;
					}
					
					/* 필수 입력 여부 확인 (이름, 비밀번호 , 전화번호 , 주소, 이용동의 여부)*/
					$("#signUpForm").find("input[type=text], input[type=password], input[type=checkbox]")
									.each(function(i, input){
										var size = $("#signUpForm").find("input[type=text], input[type=password], input[type=checkbox]").length;
										if($(input).attr("required")) {
											if(!$(input).val()) {
												$.alert({
												    title: $(input).attr("title")+ "미입력",
												    content: $(input).data("error"),
									                type: 'orange',
									                boxWidth: '300px',
												});
												return false;
											}
										}
										
										if(i+1 == size) {
											dosignUp();
										}
									});
				});
				
				function dosignUp(){
					var param = $("#signUpForm").serialize();
					
					$.post("<c:url value='/member/dosignUp'/>", 
							param,
							function(responce){
								if(responce !== "isSuccess") {
									$.alert({
									    title: '오류!',
									    content: "회원가입 중 오류가 발생 하였습니다. 관리자에게 문의주세요.",
						                type: 'orange',
						                boxWidth: '300px',
									});
									return;
								}
								$.alert({
								    title: '회원가입 완료!',
								    content: "회원가입이 완료되었습니다.",
					                type: 'orange',
					                boxWidth: '300px',
								});
								location.href="<c:url value='/' />";
					});
				}
			});
			
			
			/* 주소 검색 */
			function searchAddr() {
				new daum.Postcode({
			        oncomplete: function(data) {
			            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
			        	
			            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = ''; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수

		                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    fullAddr = data.roadAddress;

		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    fullAddr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		                if(data.userSelectedType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('zoneCode').value = data.zonecode; //5자리 새우편번호 사용
		          
		                document.getElementById('address').value = fullAddr;

		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById('addressDetail').focus();
			        }
			    }).open();
			}
	</script>
	<body>
		<div class="SignUpWrapper">
			<form id="signUpForm">
				<p class="signUPTitle">이메일 회원가입</p>
				<ul class="inputForm">
					<li>
						<label for="email">이메일</label> 
						<input type="text" id="memberEmail" name="memberEmail" title="이메일" data-error="이메일을 입력해주세요" required="required">
						<input type="button" id="emailCert" value="인증번호 전송">
					</li>
					<li id="emailStyle" style="display: none;">
						<label for="emailcomfirm">인증번호 확인</label> 
						<input type="text" id="comfirmNumber" name="comfirmNumber" title="인증번호 확인">
						<input type="button" id="emailcomfirm" value="인증번호 확인">
					</li>
					<li>
						<label for="id">아이디</label> 
						<input type="text" id="NewMemberId" name="memberId" title="아이디" maxlength="16" data-error="아이디를 입력해주세요" required="required">
						<input type="button" id="idCheck" value="중복체크"><br/>
					</li>
					<li>
						<div class="addressSearch">
							<label for="password">비밀번호</label>
							<input type="password" id="password1" name="memberPassword" title="비밀번호" data-error="비밀번호를 입력해주세요" required="required">
						</div>
						<p id="pwFail">영문대문자, 영문소문자, 숫자, 특수문자를 하나 이상 입력하세요(6~20자리)</p>
						<p id="pwSuccess">정상입력</p>
					</li>
					<li>
						<div class="addressSearch">
							<label for="password">비밀번호 확인</label> 
							<input type="password" id="password2" name="memberPasswordConf" title="비밀번호 확인" data-error="비밀번호 확인을 입력해주세요" required="required">
						</div>
						<p id="pwNotEquals">입력한 비밀번호가 일치하지 않습니다.</p>
						<p id="pwEquals">정상입력</p>
					</li>
					<li>
						<label for="memberName">이름</label> 
						<input type="text" name="memberName" title="이름" data-error="이름을 입력해주세요" required="required">
					</li>
					<li>
						<label for="addressName">주소</label> 
						<div class="addressSearch">
							<input type="text" id="zoneCode" name="zoneCode" title="우편번호" onclick="searchAddr()" data-error="우편번호를 입력해주세요" required="required" readonly>
							<input type="button" onclick="searchAddr()" value="주소검색"><br/>
							<input type="text" id="address" name="address" onclick="searchAddr()" title="주소" data-error="주소를 입력해주세요" required="required" readonly>
							<input type="text" id="addressDetail"name="addressDetail" title="상세주소" placeholder="상세주소를 입력 해주세요"   data-error="상세주소를 입력해주세요"required="required">
						</div>
					</li>
					<li>
						<label for="nickname">닉네임</label>
						<input type="text" id="memberNickName" name="memberNickName" title="닉네임" data-error="닉네임을 입력해주세요" required="required">
						<input type="button" id="nicknameCheck" value="중복체크"><br/>
					</li>
					<li>
						<label for="email">휴대폰번호</label> 
						<input type="text" name="memberPhoneNumber" title="휴대폰번호" data-error="휴대폰번호를 입력해주세요" required="required">
					</li>
				</ul>
				<section class="privacy-agree">
					<h2>개인정보 수집 및 이용 동의</h2>
					<section class="cont">
						<h2>가. 수집하는 개인정보 항목 및 수집방법</h2>
						<p>
							웹사이트에서 회원가입, 전자민원서비스 이용 및 게시판 등에 글쓰기를 하시고자 하는 경우에, 연구원에서는 이용자의 동의를
							얻어 필요한 최소한의 개인정보를 수집하고 있습니다.<br> 수집하는 개인정보 항목은 다음과 같습니다.
						</p>
						<ul>
							<li>홈페이지 회원가입 : 이름, 이메일</li>
						</ul>
					</section>
				</section>
				<p class="agreeCheck">
					<input type="checkbox" name="memberAggrementYN" value="Y"/>
					이용약관에 동의합니다.
				</p>
				<p class="signUpinfo" style="margin-top: 10px;">
					이메일 회원가입은 이메일 인증을 하셔야만 회원가입이 완료됩니다.<br/>
					아래 회원가입 버튼을 누르신 후 입력하신 이메일 주소에서 인증 메일을 확인 하여 주시기 바랍니다.
				</p>
				<input type="button" id="signUpbutton" value="회원가입">
			</form>
		</div>
	</body>
</html>