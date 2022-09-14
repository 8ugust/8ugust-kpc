<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <!-- Load c3.css -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.css" rel="stylesheet">
	<!-- Load d3.js and c3.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.min.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="ddd"></div>
<script>







console.log(pd_C=${param.pd_C});
if(${param.pd_C==687790}){printChart1()}
else if(${param.pd_C==817486}){console.log("OK2")}
else if(${param.pd_C==748308}){console.log("OK3")}

function printChart1(){
	var chart = c3.generate({
		bindto: "#regionChart",
		data: {
			x: 'x',
			columns: [
				['x', 'Busan', 'Daejeon', 'Gangwondo', 'Gyeonggido', 'Incheon', 'Jeollabukdo', 'Jeollanamdo', 'Seoul', 'Ulsan'],
				['value', 2305, 176, 80, 2426, 472, 1244, 596, 7648, 256]
			]
		}, //e.data
		axis: {
			x: {
				type: 'bar'
			}
		}
	}); //e.chart
}; //e.funciton
</script>
</body>
</html>