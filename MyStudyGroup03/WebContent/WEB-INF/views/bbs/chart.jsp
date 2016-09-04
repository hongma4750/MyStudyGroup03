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


<table class="table table-hover" style="width:85%">
<colgroup>
	<col style="width:50px;"/>
	<col style="width:50px;"/>
	<col style="width:150px;"/>
	<col style="width:auto;"/>
	<col style="width:90px;"/>
	<col style="width:90px;"/>
</colgroup>

	<thead>
		<tr>
			<th style="text-align:center;background-color:#4C4C4C;color:white">번호</th>
			<th style="text-align:center;background-color:#4C4C4C;color:white">이름</th>
			<th style="text-align:center;background-color:#4C4C4C;color:white">제목</th>
			<th style="text-align:center;background-color:#4C4C4C;color:white">내용</th>
			<th style="text-align:center;background-color:#4C4C4C;color:white">달성률</th>
			<th style="text-align:center;background-color:#4C4C4C;color:white">날짜</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${chartList }" var="chart" varStatus="vs">
		<tr class="_hover_tr">
			<td>${vs.count }</td>
			<td>${chart.name }</td>
			<td>${chart.title }</td>
			<td>${chart.content }</td>
			<td>${chart.per } %</td>
			<td>${fn:substring(chart.wdate,0,10)}  </td>
			
		</tr>
	</c:forEach>
	</tbody>
</table>

<br><br>

<hr>

<br><br>

<h1>달성표</h1>
<br><br>
<div id='container' style="height: 300px"></div> 

<br><br>

<!-- 로그인 한 아이디가 chart 테이블 안에 있으면 -->
<c:if test="${not empty login.id }">
<form name="afrmForm" id="_afrmForm" method="get" action="">
	${login.name } : <input type="text" value="${bbsper.per }" name="per"/>% &nbsp;&nbsp;&nbsp;
	<input type="hidden" name="seq" value="${bbsper.seq }"/>
	<input type="hidden" name="id" value="${login.id }">
	<button id="_achbtn">달성율 수정</button>
</form>
</c:if>



<script type="text/javascript">
$("#_achbtn").click(function name() {
	alert('달성율 수정');
	$("#_afrmForm").attr({"target":"_self", "action":"perupdate.do"}).submit();
});

</script>
