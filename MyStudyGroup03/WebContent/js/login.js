/**
 * 
 */



function go_submit(){
	
	if($("#m_id").val().length==0){
		alert("아이디를 입력해주세요");
		return false;
	}else if($("#m_pw").val().length==0){
		alert("비밀번호를 입력해주세요");
		return false;
	}
	
	var password = $("#m_pw").val();
	try{
		var rsaPublicKeyModulus = document.getElementById("rsaPublicKeyModulus").value;
        var rsaPublicKeyExponent = document.getElementById("rsaPublicKeyExponent").value;
        submitEncryptedForm(password, rsaPublicKeyModulus, rsaPublicKeyExponent);
 
	}catch(err){
		alert(err);
	}

	var m_id = $("#m_id").val();
	var m_pw = $("#rsaChangePw").val();
	
	alert("m_id : "+m_id+" , m_pw : "+m_pw);
	
	
	$.ajax({
		type:"POST",
		url:"loginAF.do",
		data:"m_id="+m_id+"&m_pw="+m_pw,
		success:function(msg){
			checkLogin(msg);
		}
		
	});
	
}


function submitEncryptedForm(password, rsaPublicKeyModulus, rsaPpublicKeyExponent) {
    var rsa = new RSAKey();
    rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);

    // 사용자ID와 비밀번호를 RSA로 암호화한다.
    var securedPassword = rsa.encrypt(password);

    // POST 로그인 폼에 값을 설정하고 발행(submit) 한다.
    var securedLoginForm = document.getElementById("login-form");
    securedLoginForm.rsaChangePw.value = securedPassword;
    
}

function checkLogin(msg){
	if(msg.message  == "Suc"){
		location.href="index.do";
	}else if(msg.message == "Fai1"){
		printMessage(0);
	}else if(msg.message =="Fai2"){
		printMessage(1);
	}
} 



function printMessage(a){
	if(a == "0"){
		$("#no_login").show();
		$("#no_login").html("회원의 아이디가 비활성화 상태이거나 등록되지 않은 아이디 입니다.");
		$("#no_login").css("color","#FF0000");
	}else if(a=="1"){
		$("#no_login").show();
		$("#no_login").html("등록되지 않은 아이디 입니다.");
		$("#no_login").css("color","#FF0000");
	}
}
