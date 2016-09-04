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


<div class="box_border" style="margin-top:5px; margin-bottom:10px;">

<form name="frmForm1" id="_frmFormSearch" method="post" action=""> <!-- 폼 같은 이름 쓰면 안된다. -->

<%-- <table style="margin-left:auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px; border:0; padding:0;">
	<tr>
		<td>검색:</td>
		<td style="padding-left: 5px">
			<select id="_s_category" name="s_category">
				<option value="" selected="selected">선택</option>
				<option value="title">제목</option>
				<option value="contents">내용</option>
			</select>
		</td>
		<td style="padding-left:5px;">
			<input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword }">
		</td>
		<td style="padding-left: 5px;">
			<span class="botton blue">
				<button type="button" id="_btnSearch" >검색</button>
			</span>
		</td>
	</tr>
</table> --%>

<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pagenNumber} "/>
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?0:recordCountPerPage} "/>

</form>
</div>

<div style="text-align:center;">
<table class="table table-hover" style="width:85%;" >
<colgroup>
	<col style="width:70px;"/>
	<col style="width:150px"/>
	<col style="width:auto;"/>
	<col style="width:100px;"/>
	<col style="width:150px;"/>
	
</colgroup>

<thead>
	<tr style="background-color:#4C4C4C;color:white;">
		<th style="text-align:center">순서</th>
		<th style="text-align:center">기능</th>
		<th style="text-align:center">제목</th>
		<th style="text-align:center">작성자</th>
		<th style="text-align:center">작성일</th>
	</tr>
</thead>

<tbody>
	<c:if test="${empty bbslist }">
		<tr>
			<td colspan="5">작성된 글이 없습니다.</td>
		</tr>
	</c:if>
	
	<!-- for(array n: arrays) : arrays의 배열을 n이라는 이름을 할당해서 돌려준다. 여기서 itmes 역할이 arrays임 -->
	<c:forEach items="${bbslist }" var="bbs" varStatus="vs">
			<tr class="active">
				<td>${bbs.seq }</td>
				<td>${bbs.actions }</td>
				<td style="text-align:left">
						<a href='bbsdetail.do?seq=${bbs.seq }'>${bbs.title }</a>
				</td>
				<td>${bbs.name }</td>
				<td>${fn:substring(bbs.wdate,0,10)}</td> 
			</tr>
	</c:forEach>
	
</tbody>
</table>
</div>


<div style="text-align:left;">
		<button type="button" class="btn btn-success" style="background-color:#4C4C4C; border-color:#4C4C4C;" id="_btnAdd">글쓰기</button>
		<input type="hidden" value="${login.id }" id="loginid">
</div>

<div id="paging_wrap">
<jsp:include page="/WEB-INF/views/common/paging.jsp" flush="false">
	<jsp:param value="${pageNumber }" name="pageNumber"/>
	<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
	<jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
	<jsp:param value="${totalRecordCount }" name="totalRecordCount"/>
</jsp:include>
</div>




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






