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


<form action="actionupdateAF.do" >
	<div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="login-box well">
        
            <legend>기능수정</legend>
            
            <div class="form-group">
                <label for="username-email">기능 이름</label>
                <input name="name" id="username-email" value="${ac.name }" type="text" class="form-control" />
                <input type="hidden" value="${ac.seq }" name="seq">
            </div>
            
            <div class="form-group">
                <label for="username-email">진행률</label>
                <input name="per" id="username-email"  value="${ac.per }"type="text" class="form-control" />
            </div>
  
            <div class="form-group">
                <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="수정" />
            </div>
            
          </div>
        </div>
      </div>
    </div>
</form>