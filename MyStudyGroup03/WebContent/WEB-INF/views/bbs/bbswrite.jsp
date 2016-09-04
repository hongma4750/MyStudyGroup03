<%@ page contentType="text/html; charset=UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>

<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="style/style.css"/> 
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 -->


<form name="frmForm" id="_frmForm" method="post" action="bbswriteAF.do">
	
	<table class="table table-hover"  style="width:85%">
	    <colgroup>
	      <col style="width:200px;"/>
	      <col style="width:auto;"/>
	    </colgroup>
		
		<tbody>
			<tr class="id">
				<th  style="text-align:center;background-color:#4C4C4C;color:white">아이디</th>
				<td style="text-align:left;">
					<input type="text" name="id" readonly value="${login.id }" size="60">
				</td>
			</tr>
			
			
			<tr class="id">
				<th  style="text-align:center;background-color:#4C4C4C;color:white">이름</th>
				<td style="text-align:left;">
					<input type="text" name="name" readonly value="${login.name }" size="60">
				</td>
			</tr>
			
			
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">제목</th>
				<td style="text-align:left;">
					<input type="text" name="title"  size="60">
				</td>
			</tr>
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">개인 진행률</th>
				<td style="text-align:left;">
					<input type="text" name="per"  size="60" value="${bbsper.per }"> %
				</td>
			</tr>
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">기능</th>
				<td style="text-align:left;">
					<select name="actions">
						<c:forEach items="${acList }" var="ac">
							<option value="${ac.name }">${ac.name }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			
			
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">내용</th>
				<td style="text-align:left;">
					<textarea rows="10" cols="50" name="content" id="_content"></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" style="height:50px; text-align:center;">
					<button type="button" class="btn btn-success" style="background-color:#4C4C4C; border-color:#4C4C4C;" id="_btnLogin">글쓰기</button>
				</td>
			</tr>
		</tbody>
	</table>
</form>



<script>
	$("#_btnLogin").click(function(){
		alert("글쓰기버튼 클릭");
		$("#_frmForm").attr({"target":"_self", "action":"bbswriteAF.do"}).submit();
	});
</script>