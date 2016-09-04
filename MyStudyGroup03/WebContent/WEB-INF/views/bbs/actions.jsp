<%@ page contentType="text/html; charset=UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<fmt:requestEncoding value="utf-8"/>


<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: '진행도'
        },
        
        xAxis: {
            categories: ${memname },
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            max:100,
            tickInterval: 10,
            title: {
                text: '진행도(퍼센트)',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' 퍼센트'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 80,
            floating: true,
            borderWidth: 1,
            
            	backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
          
            
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
            name: '진행률',
            data: ${jsonList }
        }]
    });
});
</script>



<br><br>

<hr>

<br><br>

<h1>달성표</h1>
<br><br>
<div id='container' style="height: 300px"></div> 

<br><br>

<%-- <!-- 로그인 한 아이디가 chart 테이블 안에 있으면 -->
<c:if test="${login.auth eq 3 }">
<form name="afrmForm" id="_afrmForm" method="get" action="">
	해장이의 수정 : <input type="text" value="${bbsper.per }" name="per"/>% &nbsp;&nbsp;&nbsp;
	<input type="hidden" name="seq" value="${bbsper.seq }"/>
	<input type="hidden" name="id" value="${login.id }">
	<button id="_achbtn">달성율 수정</button>
</form>
</c:if> --%>



<script type="text/javascript">
$("#_achbtn").click(function name() {
	alert('달성율 수정');
	$("#_afrmForm").attr({"target":"_self", "action":"perupdate.do"}).submit();
});

</script>
