<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<fmt:requestEncoding value="utf-8"/>

<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="style/style.css"/> 
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 -->



<div style="text-align:center;">
<table class="table table-hover" style="width:85%;" >
<colgroup>
	<col style="width:170px;"/>
	<col style="width:300px"/>
	<col style="width:200px;"/>
	<col style="width:200px;"/>
	<col style="width:200px;"/>
	
</colgroup>

<thead>
	<tr style="background-color:#4C4C4C;color:white;">
		<th style="text-align:center">seq</th>
		<th style="text-align:center">기능 이름</th>
		<th style="text-align:center">진행률</th>
		<th style="text-align:center">수정날짜</th>
		<th style="text-align:center">수정</th>
		
	</tr>
</thead>

<tbody>
	<!-- for(array n: arrays) : arrays의 배열을 n이라는 이름을 할당해서 돌려준다. 여기서 itmes 역할이 arrays임 -->
	<c:forEach items="${acList }" var="ac" >
			<tr class="active">
				<td>${ac.seq }</td>
				<td>${ac.name }</td>
				<td>${ac.per }</td>
				<td>${ac.wdate }</td>
				<td>
				<button type="button" class="btn btn-success" style="background-color:#4C4C4C; border-color:#4C4C4C;"
				 onclick="location.href='actionupdate.do?seq=${ac.seq}'">수정하기</button></td> 
			</tr>
	</c:forEach>
	
</tbody>
</table>
</div>


<hr>
<form action="actionlistRegi.do" >
	<div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="login-box well">
        
            <legend>기능추가</legend>
            
            <div class="form-group">
                <label for="username-email">기능 이름</label>
                <input name="name" id="username-email" placeholder="기능 이름" type="text" class="form-control" />
            </div>
            
            <div class="form-group">
                <label for="username-email">진행률</label>
                <input name="per" id="username-email" placeholder="1이라도 입력좀" type="text" class="form-control" />
            </div>
  
            <div class="form-group">
                <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="저장" />
            </div>
            
          </div>
        </div>
      </div>
    </div>
</form>



<script type="text/javascript">
$(document).ready(function(){
	$("._hover_tr").mouseover(function(){
		$(this).children().css("background-color","#f0f5ff");
	}).mouseout(function() {
		$(this).children().css("background-color","#fff");
	});
});

$("#_btnAdd").click(function() {
	location.href="bbswrite.do?id="+$("#loginid").val();
});

$("#_btnSearch").click(function(){
	alert("검색");
	$("#_frmFormSearch").attr({"target":"_self","action": "bbslist.do"}).submit();
});

function goPage(pageNumber){
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("targer","_self").attr("action","bbslist.do").submit();
}
</script>






