<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
	<!-- Load c3.css -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.css" rel="stylesheet">
	
	<!-- Load d3.js and c3.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.min.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.js"></script>
</head>

<body>

대분류별 판매 금액(categoryTotSales)<hr>

<div id="table_info">
	<table border="1" width="300" cellpadding="0" cellspacing="0">
		<tr>
			<td>대분류</td>
			<td>판매 금액</td>
		</tr>
		<tbody id="categorySalesTable_id"></tbody>
	</table>
</div>
<hr>
<div id="categorySalesChart"></div>
<div id="categorySalesCountChart"></div>
		
<script>
$(document).ready(function(){
	 $.ajax({
		  url : "/categoryTotSales.do",
		  method : "get",
		  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
		  dataType : "json",
		  success : function(jsonObjList){
			  	
		  	//데이터 전송여부 콘솔 확인
			//console.log(jsonObjList);
		  
			var htmlString = "";
			var listArr = []; 
			 	$.map(jsonObjList, function(vv, key){
			 		var voArr = []; 
			 		voArr.push(vv.clac1_NM);
			 		voArr.push(vv.pd_BUY_AM);
			 		listArr.push(voArr);
			 		
			 		// 데이터 전송 여부 콘솔 확인
			 		//console.log(listArr);
			 		
			 		// 테이블(표) 제작 용도
			 		htmlString+= "<tr>";
			 		htmlString+= "<td><font color='red'><b>"+vv.clac1_NM+" </b></font></td>";
			 		htmlString+= "<td>"+vv.pd_BUY_AM+" 억</td>";
			 		htmlString+= "</tr>";
			 	})
				$("#categorySalesTable_id").html(htmlString);
				printBarChart(listArr);
		  } //e.o.success  
	 }) //e.o.ajax
}) //e.o.docReady

//바 차트
function printBarChart(listArr) {
	var chart = c3.generate({
		bindto: "#categorySalesChart",
	    data: {
	        columns: listArr,
		    type: 'bar',
	    },
	    bar: {
	        width: {
	            ratio: 1.0  //width: 100
	        }
	    },
	    grid: { x: {show: true}, y: { show: true}},
	    size: {height: 240, width: 300}
	}); 
}

</script>
</body>
</html>