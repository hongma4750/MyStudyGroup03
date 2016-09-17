<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <!-- 주소 검색 script -->
    <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
    
    <script src="js/regi.js"></script>
    
    <!-- 암호화 -->
<script type="text/javascript" src="js/rsa/jsbn.js"></script>
<script type="text/javascript" src="js/rsa/rsa.js"></script>
<script type="text/javascript" src="js/rsa/prng4.js"></script>
<script type="text/javascript" src="js/rsa/rng.js"></script>

<!-- 암호화 -->

    
    
    
<section id="main-content">
	<section class="wrapper">
		
			<div class="col-lg-9 main-chart">
			
				<form action="regiAF.do" method="post" id="login-form">
	<div class="row" style="margin:auto; padding:auto;">
	  <div class="col-md-8">
	    <label for="exampleInputId">ID</label>
	    <input type="text" class="form-control" id="m_id" placeholder="ID를 입력하세요" name="m_id">
	  </div><br><br>

	  <div id="chekedId"></div>
	</div>
	
		<div class="row" style="margin:auto; padding:auto;">
		
		<input type="hidden" id="rsaPublicKeyModulus" value="${publicKeyModulus}" />
       <input type="hidden" id="rsaPublicKeyExponent" value="${publicKeyExponent }" />
       
			  <div class="col-md-8">
			    <label for="exampleInputPassword1">비밀번호</label>
			    <input type="hidden" id="rsaChangePw" name="m_pw">
			    <input type="password" class="form-control" id="m_pw" placeholder="비밀번호를 입력하세요" >
			  </div>
			  <br><br>
			  <div id="checkPw"></div>
		</div>
		
		
		<div class="row" style="margin:auto; padding:auto;">
	  <div class="col-md-8">
	    <label for="exampleInputPassword1">비밀번호 확인</label>
	    <input type="password" class="form-control" id="m_pwChk" placeholder="비밀번호를 한번더 입력해주세요" name="m_pwChk">
	  </div>
  	<br><br>
  	<div id="checkPwed"></div>
  	</div>
  	
  	
  	<div class="row" style="margin:auto; padding:auto;">
	  <div class="col-md-8">
	    <label for="exampleInputId">닉네임</label>
	    <input type="text" class="form-control" id="m_nickname" placeholder="닉네임을 입력하세요" name="m_nickname" maxlength="20">
	  </div><br><br>
	  <div id="checknickname"></div>
	  </div>
	  
	  <div class="row" style="margin:auto; padding:auto;">
	  <div class="col-md-8">
	    <label for="exampleInputId">이름</label>
	    <input type="text" class="form-control" id="m_name" placeholder="이름을 입력하세요" name="m_name" maxlength="20">
	  </div><br><br>
	  <div id="checkName"></div>
	  </div>

	  <div class="row" style="margin:auto; padding:auto;">
		  <div class="col-md-8">
		  <label for="exampleInputId">성별</label>
		  <br>
	
				  <div class="btn-group" data-toggle="buttons">
					  <label class="btn btn-primary active" id="genderChk01">
					    <input type="radio" name="m_gender" id="genderChk01" autocomplete="off" checked value="m"> 남자
					  </label>
					  
					  <label class="btn btn-primary" id="genderChk02">
					    <input type="radio" name="m_gender" id="genderChk02" autocomplete="off" value="w"> 여자
					  </label>
					</div>
		</div>
	</div> <!-- row -->
	<br>
	
	
	<div class="row" style="margin:auto; padding:auto;">
	<div class="col-md-4">
		<select class="form-control" name="b_year" id="b_year">
		
		<c:forEach var="year" begin="1900" end="2002" step="1">
			<c:choose>
				<c:when test="${year==2002 }">
					<option value="${year }" selected>${year }년</option>
				</c:when>
				
				<c:otherwise>
					<option value="${year }">${year }년</option>
				</c:otherwise>
			</c:choose>
		</c:forEach>
			
		</select>
	</div>
	
	<div class="col-md-4">
		<select class="form-control" name="b_month" id="b_month">
			<c:forEach var="month" begin="1" end="12" step="1">
				<c:choose>
					<c:when test="${month==1 }">
						<option value="${month }" selected>${month }월</option>
					</c:when>
					
					<c:otherwise>
						<option value="${month }">${month }월</option>
					</c:otherwise>
				</c:choose>
				
			</c:forEach>
		</select>	
	</div>
	
	<div class="col-md-4">
		<select class="form-control" name="b_day" id="b_day">
			
		</select>
	</div>
	</div>
	
	<br>
	
	<div class="row" style="margin:auto; padding:auto;">
		<div class="row" style="margin:auto; padding:auto;">
			<div class="col-md-10">
			<label for="exampleInputId">우편 번호</label>
			<br>
		</div>
		</div>
		
	

		<div class="row" style="margin:auto; padding:auto;">
			<div class="col-md-5">
				<input type="text" maxlength="5" name="m_postal" class="form-control postcodify_postcode5" id="m_postal" readonly>
			</div>
			
			<div class="col-md-5">
				<input type="button" value="검색" id="search_button">
			</div>
		</div>
		<br>
		
		<div class="row" style="margin:auto; padding:auto;">
			<div class="col-md-8">
				<label for="exampleInputId">도로명 주소</label>
				<input type="text" name="m_address1" class="form-control postcodify_address" readonly >
			</div>
		</div>
		
		<div class="row" style="margin:auto; padding:auto;">
			<div class="col-md-8">
				<label for="exampleInputId">상세 주소</label>
				<input type="text" name="m_address2" class="form-control postcodify_details" id="m_address2">
				<div id="checkAddr"></div>
			</div>
		</div>
		
		<div class="row" style="margin:auto; padding:auto;">
			<div class="col-md-8">
				<label for="exampleInputId">참고 항목</label>
				<input type="text" name="addr1" class="form-control postcodify_extra_info"  readonly>
			</div>
		</div>

	</div>

<script> 
$("#search_button").postcodifyPopUp();

</script>
	
	
	<br><br>
	<div class="row" style="margin:auto; padding:auto;">
	<div class="col-md-8">
	
	<div class="checkboxAll">
		<label for="exampleInputId">마켓팅 수신 동의</label>
		<br>
		<label>
	    <input type="checkbox" id="checkAll" value="all" aria-label="">전체선택
	  </label>
	</div>
	
	<div class="checkbox">
	  <label>
	    <input type="checkbox" id="m_ema" value="Email" aria-label="" name="chk">Email
	  </label>
	  
	  <label>
	    <input type="checkbox" id="m_sms" value="SMS" aria-label="" name="chk">SMS
	  </label>
	  
	  <label>
	    <input type="checkbox" id="m_pho" value="Phone" aria-label="" name="chk">Phone
	  </label>
	</div>
	</div>
	</div>
	
	
	&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<label for="exampleInputId">이메일</label>
	
	
	<div class="row" style="margin:auto; padding:auto;">
		<div class="col-md-5">
			<input type="text" class="form-control" id="m_email1" placeholder="이메일 입력하세요" name="m_email1" maxlength="64"> 
			<div id="checkEmail"></div>
		</div>
		
		<div class="col-md-1">
			<label for="exampleInputId"><h5>@</h5></label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" id="m_email2" name="m_email2" maxlength="255">
			<div id="checkEmail2"></div>
		</div>
		
		<div class="col-md-3">
			    <select class="form-control" id="m_email3" name="m_email3">
			    	<option value="" selected>직접입력</option>
			    	<option value="naver.com"> @ naver.com</option>
			    	<option value="gmail.com"> @ gmail.com</option>
			    	<option value="hanmail.com"> @ hanmail.com</option>
			    </select>
		</div>
	</div>  
	
	<br>
		  
	&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<label for="exampleInputId">휴대전화</label>
	<div class="row" style="margin:auto; padding:auto;">
	
			<div class="col-md-3">
				<select class="form-control" name="m_phone1">
					<option>010</option>
					<option>011</option>
					<option>016</option>
					<option>017</option>
					<option>018</option>
					<option>019</option>
				</select>
			</div>
		
					<div class="col-md-1">
						<label for="exampleInputId"><h5>-</h5></label>
					</div>
		
			<div class="col-md-3">
				<input type="text" name="m_phone2" id="m_phone2" style="height:35px;" 
				onkeydown="return showKeyCode(event)" maxlength="4" class="form-control">
				<div id="checkPhone2"></div>
			</div>

					<div class="col-md-1">
						<label for="exampleInputId"><h5>-</h5></label>
					</div>
		
			<div class="col-md-3">
				<input type="text" name="m_phone3" id="m_phone3" style="height:35px;" 
				onkeydown="return showKeyCode(event)" maxlength="4" class="form-control">
				<div id="checkPhone3"></div>
			</div>

		</div>
	
		<br>

		<div class="row" style="margin:auto; padding:auto;">
			<label for="exampleInputId">자동기입방지</label>
		</div>
		
	
	
	
	
		<br><br><br>
	  
	  <div class="col-md-4">
	  	<button type="submit" class="btn btn-default" onclick="return go_submit()">회원가입</button>
	  	<button type="button" class="btn btn-default" onclick="location.href='index.do'">취소</button>
	  </div>
	  
	</form>
				
				
				
			</div>

	</section>
</section>
    
    
<div id="page-wrapper">

<div class="row"style="width:100%;">
    
	</div>
	
	
</div>


	<script>
		function showKeyCode(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
			{
				return;
			}
			else
			{
				return false;
			}
		}
	</script>
	
	
	<script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>
	


