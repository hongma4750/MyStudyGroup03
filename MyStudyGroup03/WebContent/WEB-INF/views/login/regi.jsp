<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.cookie.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jquery/jquery-ui.css"/>

	
	<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="style/style.css"/> 
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 -->

	
<title>회원가입</title>
</head>
<body>

<article class="container" >
        <div class="page-header">
          <h1 style="text-align:center; color:#4C4C4C">Sign in</h1>
        </div>
        
        <form role="form" action="regiAF.do" method="post">
        <div class="col-md-6 col-md-offset-3">
          
            <div class="form-group">
              <label for="InputEmail">ID</label>
              <input type="text" class="form-control" id="InputEmail" placeholder="ID" name="id">
            </div>
            
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호" name="pw">
            </div>
            
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요" name="name">
            </div>
            
            
            <div class="form-group text-center">
              <button type="submit" class="btn btn-success"style="background-color:#4C4C4C;border-color:#4C4C4C;">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="button" class="btn btn-success" id="cancel"style="background-color:#4C4C4C;border-color:#4C4C4C;">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          
        </div>

          <hr>
        </form>
        
        
      </article>


<script>
	$("#cancel").click(function(){
		location.href="login.do";
	});
</script>
</body>
</html>