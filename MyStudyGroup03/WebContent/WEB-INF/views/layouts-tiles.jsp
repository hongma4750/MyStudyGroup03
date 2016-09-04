<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

    <fmt:requestEncoding value="utf-8"/>
    <tiles:insertAttribute name="common"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<tiles:insertAttribute name="header"/>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/go_url.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css"/>
</head>

<div id="body_wrap">
	<div id="main_wrap">
		<div id="header_wrap">
			<tiles:insertAttribute name="top_inc"/>
			<tiles:insertAttribute name="top_menu"/>
		</div>	
		
		<div id="middle_wrap">
			
			<div id="content_wrap">
				
				
				<tiles:insertAttribute name="main"/>		
			</div>		
		</div>	
		
				
	</div>
</div>



</body>
</html>