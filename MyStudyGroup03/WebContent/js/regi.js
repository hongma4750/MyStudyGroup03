/**
 * 
 */

var submitCheck = new Array(false,false,false,false,false,false,false,false,false,false);

/**
 * submitCheck[0] = m_id
 * submitCheck[1] = m_pw
 * submitCheck[2] = m_pwChk
 * submitCheck[3] = m_nickname
 * submitCheck[4] = m_name
 * submitCheck[5] = m_address2
 * submitCheck[6] = m_email1
 * submitCheck[7] = m_email2
 * submitCheck[8] = m_phone2
 * submitCheck[9] = m_phone3
 * submitCheck[10] = m_nickname
 * submitCheck[10] = m_nickname
 */

$(document).ready(function(){
	$("#m_id").click(function(){
	 $(document).mousedown(function(e){
		 $('#m_id').each(function(){
		         if( $(this).css('display') == 'block' )
		         {
		        	 var l_position = $(this).offset();
		             l_position.right = parseInt(l_position.left) + ($(this).width());
		             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
		             
		             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
			                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
			             {
			                 //alert( 'popup in click' );
			             }
			             else
			             {
			                 //alert( 'popup out click' );
			                 BaseIdCheck();
			             }   
		         }
		     });
		 }); 
	});
	
	 
	 $("#m_pw").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_pw').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckPw();
				             }   
			         }
			     });
			 });
	 });
	 
	 $("#m_pwChk").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_pwChk').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckedPw();
				             }   
			         }
			     });
			 });
	 	});
		 
		 $("#m_nickname").click(function(){
			 $(document).mousedown(function(e){
				 $('#m_nickname').each(function(){
				         if( $(this).css('display') == 'block' )
				         {
				        	 var l_position = $(this).offset();
				             l_position.right = parseInt(l_position.left) + ($(this).width());
				             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
				             
				             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
					             {
					                 //alert( 'popup in click' );
					             }
					             else
					             {
					                 //alert( 'popup out click' );
					                 BaseCheckNickName();
					             }   
				         }
				     });
				 });
		 	});
		 
	 
	 $("#m_name").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_name').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckName();
				             }   
			         }
			     });
			 });
	 	});
	 
	 $("#genderChk01,#genderChk02").click(function(){
		 submitCheck[7] = true;
	 });
	 
	 
	 //달력 만들기
	 var b_year = $("#b_year").val();
	 var b_month = $("#b_month").val();
	 var lastDay = ( new Date( b_year, b_month, 0) ).getDate();

	 for(var i =1; i<=lastDay; i++){
		 $("#b_day").append("<option value='"+i+"'>"+i+"</option>");
	 }
	 
	 //달력 만들기
	 
	 //년,월 선택시 일 바꾸기
	 
	 $("#b_year").change(function(){
		 var b_year = $("#b_year").val();
		 var b_month = $("#b_month").val();
		 
		 var lastDay = ( new Date( b_year, b_month, 0) ).getDate();
		 
		 BaseBirth(lastDay);
	 });
	 
	 $("#b_month").change(function(){
		 var b_year = $("#b_year").val();
		 var b_month = $("#b_month").val();
		 
		 var lastDay = ( new Date( b_year, b_month, 0) ).getDate();
		 
		 BaseBirth(lastDay);
	 });
	 
	//년,월 선택시 일 바꾸기
	 
	 
	 $("#m_address2").focus(function(){
		 $(document).mousedown(function(e){
			 $('#m_address2').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckAddr();
				             }   
			         }
			     });
			 });
	 	});
	 
	 
	 
	 $("#checkAll").click(function(){
			if($("#checkAll").prop("checked")) {
				//해당화면에 전체 checkbox들을 체크해준다
				$("input[type=checkbox]").prop("checked",true);
			// 전체선택 체크박스가 해제된 경우
			} else {
				//해당화면에 모든 checkbox들의 체크를해제시킨다.
				$("input[type=checkbox]").prop("checked",false);
			}
			
		})

	 	$("#m_ema").click(function(){
	 		if($("#m_ema").prop("checked") && $("#m_sms").prop("checked") && $("#m_pho").prop("checked")){
				$("input:checkbox[id='checkAll']").prop("checked",true);
			}else {
				$("input:checkbox[id='checkAll']").prop("checked",false);
			}
	 	})
	 	
	 	$("#m_sms").click(function(){
	 		if($("#m_ema").prop("checked") && $("#m_sms").prop("checked") && $("#m_pho").prop("checked")){
				$("input:checkbox[id='checkAll']").prop("checked",true);
			}else {
				$("input:checkbox[id='checkAll']").prop("checked",false);
			}
	 	})
	 	
	 	$("#m_pho").click(function(){
	 		if($("#m_ema").prop("checked") && $("#m_sms").prop("checked") && $("#m_pho").prop("checked")){
				$("input:checkbox[id='checkAll']").prop("checked",true);
			}else {
				$("input:checkbox[id='checkAll']").prop("checked",false);
			}
	 	})

	 
	 $("#m_email1").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_email1').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckEmail1();
				             }   
			         }
			     });
			 });
	 	});
	 
	 $("#m_email2").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_email2').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckEmail2();
				             }   
			         }
			     });
			 });
	 	});
	 
	 
	 $("#m_email3").click(function(){
	 		$("#m_email2").val($("#m_email3").val());
	 		submitCheck[7] = true;
	 	});
	 
	 
	 $("#m_phone2").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_phone2').each(function(){
			         if( $(this).css('display') == 'block' )
			         { 
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckPhone2();
				             }   
			         }
			     });
			 });
	 	});
	 
	 $("#m_phone3").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_phone3').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckPhone3();
				             }   
			         }
			     });
			 });
	 	});


	 });//document.ready
	 
function BaseIdCheck(){
	var m_id = $("#m_id").val();
	if($("#m_id").val().length==0){
		//아이디를 아무것도 입력 x
		putYourId(0);
	}else {
		var idCheck01 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/;
		var idCheck02 = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var idCheck03 =  /\s/g;
		var idCheck04 = /(?=.*[ㄱ-힣])/;

		if(idCheck01.test(m_id)){		
			
			if(idCheck02.test(m_id)){
				putYourId(1);
			}else{
				if(idCheck03.test(m_id)){
					putYourId(1);
					return;
				}else{
					if(idCheck04.test(m_id)){
						putYourId(1);
						return;
					}else{
						//ajax작업
						showallcust();
						return;
					}
					
				}
				
			}
		}else{
			putYourId(1);
		}

	}
}

function showallcust(){
	var m_id = $("#m_id").val();
	
	$.ajax({
		type:"POST",
		url:"getID.do",
		data:"m_id="+m_id,
		success:function(msg){
			outputList(msg);
		}
		
	});
}

function outputList(msg){
	if(msg.message  == "Suc"){
		$("#chekedId").show();
		$("#chekedId").html("사용할 수 없는 아이디 입니다.");
		$("#chekedId").css("color","#FF0000");
		submitCheck[0] = false;
		
	}else{
		$("#chekedId").show();
		$("#chekedId").html("멋진 아이디 입니다");
		$("#chekedId").css("color","#1DDB16");
		$("#m_id_checked").attr("value",$("#m_id").val());

		submitCheck[0] = true;

	}
} 

function putYourId(a){
	
	if(a == "0"){
		$("#chekedId").show();
		$("#chekedId").html("필수 항목 입니다.");
		$("#chekedId").css("color","#FF0000");
		submitCheck[0] = false;
	}else if(a == "1" ){
		$("#chekedId").show();
		$("#chekedId").html("6~12자의 영문 소문자, 숫자만 사용 가능합니다.");
		$("#chekedId").css("color","#FF0000");
		submitCheck[0] = false;
	}
}

function BaseCheckPw(){
	var m_pw = $("#m_pw").val();
	
	if($("#m_pw").val().length==0){
		//아이디를 아무것도 입력 x
		putYourPw(0);
	}else {
		var pwCheck01 = /\s/g;
		var pwCheck02 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]).{8,12}$/;
		var pwCheck03 = /a{4,}|b{4,}|c{4,}|d{4,}|e{4,}|f{4,}|g{4,}|h{4,}|i{4,}|j{4,}|k{4,}|l{4,}|m{4,}|n{4,}|o{4,}|p{4,}|q{4,}|r{4,}|s{4,}|t{4,}|u{4,}|v{4,}|w{4,}|x{4,}|y{4,}|z{4,}/;	//동일한 글자 4글자 이상 반복 불가

		var ex = $("#m_id").val();
		var pwCheck04 = /[ex]{1}/;

		if(pwCheck01.test(m_pw) ){		//조건 01. 공백체크
			putYourPw(1);
			return;
		}else{
			if(pwCheck02.test(m_pw)){	//조건 02. 영어소문,대문,숫자,특수문자 조합인지 체크
				if(pwCheck03.test(m_pw)){	//조건 03. 동일한 글자 4글자 이상인지 체크
					putYourPw(3);
					return;
				}else{
					if(pwCheck04.test(m_pw)){		//조건 04. 아이디와 동일문자 있는지 체크
						putYourPw(1);
						return;
					}else{
						putYourPw(2);
						return;
					}	
				}
			}else{
				putYourPw(1);
				return;
			}
			
		}

	}
}

function putYourPw(a){
	
	if(a == "0"){
		$("#checkPw").show();
		$("#checkPw").html("필수 항목 입니다.");
		$("#checkPw").css("color","#FF0000");
		submitCheck[1]=false;
		
		$("#checkPwed").show();
		$("#checkPwed").html("필수 항목 입니다.");
		$("#checkPwed").css("color","#FF0000");
		submitCheck[1]=false;
		
	}else if(a == "1" ){
		$("#checkPw").show();
		$("#checkPw").html("8~12자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
		$("#checkPw").css("color","#FF0000");
		submitCheck[1]=false;
	}else if(a == "2"){
		$("#checkPw").hide();
		submitCheck[1]=true;
		
	}else if(a == "3" ){
		$("#checkPw").show();
		$("#checkPw").html("동일한 문자 4개 이상 반복을 금합니다.");
		$("#checkPw").css("color","#FF0000");
		submitCheck[1]=false;
	}
}


function BaseCheckedPw(a){
	var m_pwChk = $("#m_pwChk").val();
	
	if(m_pwChk.length==0){
		//아이디를 아무것도 입력 x
		putYourPwed(0);
	}else if($("#m_pw").val() != m_pwChk){
		putYourPwed(1);
	}else if($("#m_pw").val() == m_pwChk){
		putYourPwed(2);
	}
}

function putYourPwed(a){
	if(a=="0"){
		$("#checkPwed").show();
		$("#checkPwed").html("필수 항목 입니다.");
		$("#checkPwed").css("color","#FF0000");
		submitCheck[2]=false;
	}else if(a=="1"){
		$("#checkPwed").show();
		$("#checkPwed").html("비밀번호가 일치하지 않습니다.");
		$("#checkPwed").css("color","#FF0000");
		submitCheck[2]=false;
	}else if(a=="2"){
		$("#checkPwed").hide();
		submitCheck[2]=true;
	}
}

function BaseCheckNickName(){
	var m_nickname = $("#m_nickname").val();
	
	var nickCheck01 = /^[a-z|A-Z|0-9|가-힣]+$/;
	
		if(m_nickname.length==0){
			putYourNickName(0);
		}else {
			if(nickCheck01.test(m_nickname)){
				putYourNickName(2)
			}else{
				putYourNickName(1);
			}
		}
}

function putYourNickName(a){
	if(a=="0"){
		$("#checknickname").show();
		$("#checknickname").html("필수 항목 입니다.");
		$("#checknickname").css("color","#FF0000");
		submitCheck[3] = false;
	}else if(a=="1"){
		$("#checknickname").show();
		$("#checknickname").html("영문자,숫자,한글 제외 금합니다");
		$("#checknickname").css("color","#FF0000");
		submitCheck[3] = false;
	}else if(a=="2"){
		$("#checknickname").hide();
		submitCheck[3] = true;
		
	}
}



function BaseCheckName(a){
	var m_name = $("#m_name").val();

	var nameCheck01 =  /^[a-z|A-Z|\s/g]+$/;
	var nameCheck02 = /^[가-힣]+$/;
	
	var nameCheck03 = /^\s/;
	
	if($("#m_name").val().length==0){
		putYourName(0);
	}else if(nameCheck01.test(m_name)){	
		if(nameCheck03.test(m_name)){
			putYourName(2);
			return;
		}else{
			putYourName(1);
			return;
		}
	}else if(nameCheck02.test(m_name)){
		putYourName(1);
	}else {
		putYourName(2);
		return;
	}
}

function putYourName(a){
	
	if(a=="0"){
		$("#checkName").show();
		$("#checkName").html("필수 항목 입니다.");
		$("#checkName").css("color","#FF0000");
		submitCheck[4] = false;
	}else if(a=="1"){
		$("#checkName").hide();
		submitCheck[4]=true;
	}else if(a=="2"){
		$("#checkName").show();
		$("#checkName").html("이름에는 한글, 영문 대소문자를 이용해 주세요.");
		$("#checkName").css("color","#FF0000");
		submitCheck[4] = false;
	}
}

function BaseBirth(lastDay){
	 $("select[id='b_day'] option").remove();
	 
	 for(var i =1; i<=lastDay; i++){

		 $("#b_day").append("<option value='"+i+"'>"+i+"</option>");
	 }
}

function BaseCheckAddr(){
	var m_address2 = $("#m_address2").val();
	
	
	var addrCheck01 =  /^\s/;

	if(m_address2.length==0){
		putYourAddr(0);
	}else if(addrCheck01.test(m_address2)){
		putYourAddr(2);
	}else {
		putYourAddr(1);
	}
}

function putYourAddr(a){
	if(a=="0"){
		$("#checkAddr").show();
		$("#checkAddr").html("필수 항목 입니다.");
		$("#checkAddr").css("color","#FF0000");
		submitCheck[5]=false;
		
	}else if(a=="1"){
		$("#checkAddr").hide();
		submitCheck[5]=true;
	}else if(a=="2"){
		$("#checkAddr").show();
		$("#checkAddr").html("첫글자가 공백입니다");
		$("#checkAddr").css("color","#FF0000");
		submitCheck[5]=false;
	}
}

function BaseCheckEmail1(){
	var m_email1 = $("#m_email1").val();
	
	var emailCheck01 =  /\s/g;
	var emailCheck02 = /^[a-z|A-Z|0-9|-|.|\\]+$/;
	
	if(m_email1.length==0){
		putYourEmail1(0);
	}else{
		if(emailCheck01.test(m_email1)){
			putYourEmail1(0);
		}else{
			if(emailCheck02.test(m_email1)){
				putYourEmail1(1);
			}else{
				putYourEmail1(0);
			}
		}
	}
}

function putYourEmail1(a){
	if(a == "0"){
		$("#checkEmail").show();
		$("#checkEmail").html("필수 정보입니다.");
		$("#checkEmail").css("color","#FF0000");
		submitCheck[6] = false;
	}else if(a=="1"){
		$("#checkEmail").hide();
		submitCheck[6] = true;
	}
}

function BaseCheckEmail2(){
	var m_email2 = $("#m_email2").val();
	
	var emailCheck01 =  /\s/g;
	var emailCheck02 = /^(@)/g;
	var emailCheck03 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(m_email2.length==0){
		putYourEmail2(0);
	}else{
		if(emailCheck01.test(m_email2)){
			putYourEmail2(2);
		}else{
			if(emailCheck02.test(m_email2)){
				putYourEmail2(3);
			}else{
				if(emailCheck03.test(m_email2)){
					putYourEmail2(1);
				}else{
					putYourEmail2(4);
				}
			}
		}
	}
}

function putYourEmail2(a){
	if(a == "0"){
		$("#checkEmail2").show();
		$("#checkEmail2").html("필수 정보입니다.");
		$("#checkEmail2").css("color","#FF0000");
		submitCheck[7] = false;
	}else if(a=="1"){
		$("#checkEmail2").hide();
		submitCheck[7] = true;
	}else if(a=="2"){
		$("#checkEmail2").show();
		$("#checkEmail2").html("띄어쓰기는 노노");
		$("#checkEmail2").css("color","#FF0000");
		submitCheck[7] = false;
	}else if(a=="3"){
		$("#checkEmail2").show();
		$("#checkEmail2").html("@ 는 생략해주세요");
		$("#checkEmail2").css("color","#FF0000");
		submitCheck[7] = false;
	}else if(a=="4"){
		$("#checkEmail2").show();
		$("#checkEmail2").html("졸바로 입력해주세요");
		$("#checkEmail2").css("color","#FF0000");
		submitCheck[7] = false;
	}
}

function BaseCheckPhone2(){
	var m_phone2 = $("#m_phone2").val();

	
	if(m_phone2.length<3){
		putYourPhone2(0);
	}else if(m_phone2.length==4 || m_phone2.length==3){
		putYourPhone2(1);
	}
}

function putYourPhone2(a){
	if(a=="0"){
		$("#checkPhone2").show();
		$("#checkPhone2").html("필수 정보입니다.");
		$("#checkPhone2").css("color","#FF0000");
		submitCheck[8] = false;
	}else if(a=="1"){
		$("#checkPhone2").hide();
		submitCheck[8] = true;
	}
}

function BaseCheckPhone3(){
	var m_phone3 = $("#m_phone3").val();

	if(m_phone3.length<4){
		putYourPhone3(0);
	}else if(m_phone3.length==4){
		putYourPhone3(1);
	  }
}

function putYourPhone3(a){
	if(a=="0"){
		$("#checkPhone3").show();
		$("#checkPhone3").html("필수 정보입니다.");
		$("#checkPhone3").css("color","#FF0000");
		submitCheck[9] = false;
	}else if(a=="1"){
		$("#checkPhone3").hide();
		submitCheck[9] = true;
	}
}





function go_submit(){
	for(var i =0;i<submitCheck.length;i++){
		if(!submitCheck[i]){
			alert("모든 항목을 입력해주세요!"+i);
			return false;
		}
	}
	
	var password = $("#m_pw").val();
	try{
		var rsaPublicKeyModulus = document.getElementById("rsaPublicKeyModulus").value;
        var rsaPublicKeyExponent = document.getElementById("rsaPublicKeyExponent").value;
        submitEncryptedForm(password, rsaPublicKeyModulus, rsaPublicKeyExponent);
	}catch(err){
		alert(err);
	}
	
	return true;
	
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
    



