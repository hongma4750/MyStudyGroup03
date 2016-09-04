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



<table class="table table-hover"  style="width:85%">
	    <colgroup>
	      <col style="width:200px;"/>
	      <col style="width:auto;"/>
	    </colgroup>
		
		<tbody>
			<tr class="id">
				<th  style="text-align:center;background-color:#4C4C4C;color:white">아이디</th>
				<td style="text-align:left;">
					<input type="text" name="id" readonly value="${bbsVo.id }" size="60">
				</td>
			</tr>
			
			<tr class="id">
				<th  style="text-align:center;background-color:#4C4C4C;color:white">이름</th>
				<td style="text-align:left;">
					<input type="text" name="name" readonly value="${bbsVo.name }" size="60">
				</td>
			</tr>
			
			
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">제목</th>
				<td style="text-align:left;" >
					<input type="text" name="title"  size="60" readonly value="${bbsVo.title }">
				</td>
			</tr>
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">개인 진행률</th>
				<td style="text-align:left;">
					<input type="text" name="per"  size="60" value="${bbsVo.per }" readonly> %
				</td>
			</tr>
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">기능</th>
				<td style="text-align:left;">
					<input type="text" name="per"  size="60" value="${bbsVo.actions }" readonly>
				</td>
			</tr>
			
			<tr>
				<th style="text-align:center;background-color:#4C4C4C;color:white">내용</th>
				<td style="text-align:left;">
					<textarea rows="10" cols="50" name="content" id="_content" readonly>${bbsVo.content }</textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" style="height:50px; text-align:center;">
				
					<button type="button" class="btn btn-success" style="background-color:#4C4C4C; border-color:#4C4C4C;" id="_btnList">돌아가기</button>
								
					<c:if test="${login.id eq bbsVo.id }">
						<button type="button" class="btn btn-success" style="background-color:#4C4C4C; border-color:#4C4C4C;" id="_btnUpdate">수정하기</button>
					</c:if>
					
				</td>
			</tr>
		</tbody>
	</table>




<script>
	$("#_btnList").click(function(){
		location.href="bbslist.do";
	});
	
	$("#_btnUpdate").click(function(){
		location.href="bbsupdate.do?seq="+${bbsVo.seq};
	});
	
	$("#_btnDelete").click(function(){
		
		if(confirm("정말 삭제 하시겠습니까~?") == true){
			
			location.href="bbsdelete.do?seq="+${bbsVo.seq};
			return true;
		}else{
			return false;
		}
	});
	
	$("#_btnAnswer").click(function(){
		location.href="bbsanswer.do?seq="+${bbsVo.seq};
	});
	
</script>