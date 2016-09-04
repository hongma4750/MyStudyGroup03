<%@ page contentType="text/html; charset=UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="utf-8"/>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jquery/jquery-ui.css"/>


<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="style/style.css"/> 
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 -->

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-top:45px">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="bbslist.do">진행상황[게시판]</a>
                    </li>
                    <li>
                        <a href="chart.do?id=${login.id }">진행률[차트]</a>
                    </li>
                    <li>
                        <a href="actions.do">기능별 진행률[차트]</a>
                    </li>
                    
                    <c:if test="${login.auth eq 3 }">
                    	<li>
                        	<a href="actionlist.do">기능 관련</a>
                    	</li>
                    	
                    	
                    </c:if>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>