<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>

	<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    
    
<div id="page-wrapper">

<div class="row"style="width:100%;">
    <form>

	  <div class="col-md-8">
	    <label for="exampleInputId">ID</label>
	    <input type="text" class="form-control" id="exampleInputId" placeholder="ID를 입력하세요" name="id">
	  </div>

	  <div class="col-md-4">
	  	<label for="exampleInputId">ID 중복 확인</label>
	    <p class="bg-success" style="height:35px;">...</p>
	  </div>

	

	  <div class="col-md-8">
	    <label for="exampleInputPassword1">비밀번호</label>
	    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호를 입력하세요" name="pw">
	  </div>
	  <br>

	  <div class="col-md-8">
	    <label for="exampleInputPassword1">비밀번호 확인</label>
	    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호를 한번더 입력해주세요" name="pwchk">
	  </div>
  	<br>
  	
  	
	  <div class="col-md-8">
	    <label for="exampleInputId">닉네임</label>
	    <input type="text" class="form-control" id="exampleInputId" placeholder="닉네임을 입력하세요" name="nickname">
	  </div>
	  <br>
	  
	  <div class="row" style="margin:auto; padding:auto;">
	  <div class="col-md-8">
	  <label for="exampleInputId">성별</label>
	  <br>

	  <div class="btn-group" data-toggle="buttons">
		  <label class="btn btn-primary active">
		    <input type="radio" name="gender" id="option1" autocomplete="off" checked value="0"> 남자
		  </label>
		  
		  <label class="btn btn-primary">
		    <input type="radio" name="gender" id="option2" autocomplete="off" value="1"> 여자
		  </label>
		</div>
	</div>
	</div>
	<br>
	
	
	<div class="row" style="margin:auto; padding:auto;">
	<div class="col-md-4">
		<select class="form-control" name="b_year">
			<option>1년</option>
			<option>2년</option>
		</select>
	</div>
	
	<div class="col-md-4">
		<select class="form-control" name="b_month">
			<option>1월</option>
			<option>2월</option>
		</select>	
	</div>
	
	<div class="col-md-4">
		<select class="form-control" name="b_day">
			<option>1일</option>
			<option>2일</option>
		</select>
	</div>
	</div>
	
	
	<div class="row" style="margin:auto; padding:auto;">
	<div class="col-md-8">
	
	<div class="checkboxAll">
		<label>
	    <input type="checkbox" id="checkAll" value="all" aria-label="">전체선택
	  </label>
	</div>
	
	<div class="checkbox">
	  <label>
	    <input type="checkbox" id="blankCheckbox" value="ema" aria-label="" name="chk">Email
	  </label>
	  
	  <label>
	    <input type="checkbox" id="blankCheckbox" value="sms" aria-label="" name="chk">SMS
	  </label>
	  
	  <label>
	    <input type="checkbox" id="blankCheckbox" value="pho" aria-label="" name="pho">Phone
	  </label>
	</div>
	</div>
	</div>
	
	<div class="row" style="margin:auto; padding:auto;">
		<div class="col-md-8">
			    <label for="exampleInputId">이메일</label>
			    <input type="email" class="form-control" id="exampleInputId" placeholder="이메일 입력하세요" name="email">
		</div>
	</div>  
	
	<br>
		  
	<div class="row" style="margin:auto; padding:auto;">
	
		<div class="col-md-3">
			<select class="form-control" name="phone1">
				<option>010</option>
				<option>011</option>
				<option>016</option>
				<option>017</option>
				<option>018</option>
				<option>019</option>
			</select>
		</div>
		-
		
			<input type="text" name="phone2" style="height:35px;" onkeydown="return showKeyCode(event)" maxlength="4">
			<span id="keyinfo"></span>
		
		-
			<input type="text" name="phone3" style="height:35px;" onkeydown="return showKeyCode(event)" maxlength="4">
		
		</div>
	
	<br>

	
	  
	  <div class="col-md-4">
	  	<button type="submit" class="btn btn-default">회원가입</button>
	  	<button type="button" class="btn btn-default" onclick="location.href='index.do'">취소</button>
	  </div>
	  
	</form>
	</div>
	
	
</div>


<script type="text/javascript">
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


</script>


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


