<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.cookie.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jquery/jquery-ui.css"/>

<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="style/style.css"/> 
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 -->
 
<title>로그인</title>
</head>
<body>

<div class="page-header" style="text-align:center">
  <h1 style="color:#4C4C4C">꽃보다 HONGMA</h1>
</div>


	<div class="container">

      <form class="form-signin" action="loginAF.do" name="frmForm" id="_frmForm" method="post" >
        
        
        <input type="text" id="inputEmail" class="form-control" placeholder="ID" required autofocus name="id">
        
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="pw">
		<br>
		
       <div style="text-align:center;">
        <button class="btn btn-success" type="submit" style="background-color:#4C4C4C;border-color:#4C4C4C;">Log in</button>
        <button class="btn btn-success" type="button" id="signin" style="background-color:#4C4C4C;border-color:#4C4C4C;">Sign in</button>
        </div>
      </form>

    </div> <!-- /container -->
    
	
<script>
	$("#signin").click(function(){
		location.href="regi.do";
	});
</script>
</body>
</html>