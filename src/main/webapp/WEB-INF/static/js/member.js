/**
 * 
 */
const emailPattern = /[\w.]+[@]\w+[.]\w+/;

let certNumber ="";
let inputEmail ="";

function certEmail(emailElement){
	if(!(emailPattern.test(emailElement.val()))){
		$.alert({
		    title: '이메일 확인!',
		    content: "이메일을 입력해주세요",
            type: 'orange',
            boxWidth: '300px',
		});
		emailElement.val("");
		emailElement.focus();
		return;
	}
	$.post("/GreatCamping/member/emailCert" ,{memberEmail : emailElement.val()}, function(responce){
		$("#emailStyle").css("display", "none");
		if(responce !== "OutOfRange") {
			$.alert({
			    title: '이메일 확인!',
			    content: "인증번호가 이메일로 전송되었습니다",
                type: 'orange',
                boxWidth: '300px',
			});
			certNumber = responce;
			inputEmail = emailElement.val();
			$("#emailStyle").css("display", "block");
			
			return;
		}
		$.alert({
		    title: '인증 오류!',
		    content: "이미 다른 아이디로 가입된 이메일이 3개 존재 합니다. 다른 이메일을 입력해주세요",
            type: 'orange',
            boxWidth: '300px',
		});
	});
}