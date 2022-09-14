<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

월별 판매 금액(totSalesList)<hr>

<table border="1" width="300" cellpadding="0" cellspacing="0">
	<tr>
		<td>월</td>
		<td>판매 금액</td>
	</tr>
	<c:forEach items="${totSalesList}" var="vo">
		<tr>
			<td>${vo.SESS_DT} 월</td>
			<td>${vo.PD_BUY_AM} 억</td>
		</tr>
	</c:forEach>
</table> 



월별 판매 건수(totSalesCountList)<hr>

<table border="1" width="300" cellpadding="0" cellspacing="0">
	<tr>
		<td>월</td>
		<td>판매건수</td>
	</tr>
	<c:forEach items="${totSalesCountList}" var="vo">
		<tr>
			<td>${vo.SESS_DT} 월</td>
			<td>${vo.PD_BUY_CT} 건</td>
		</tr>
	</c:forEach>
</table> 



분류별 판매 금액(categoryTotSalesList)<hr>

<table border="1" width="300" cellpadding="0" cellspacing="0">
	<tr>
		<td>대분류</td>
		<td>판매금액</td>
	</tr>
	<c:forEach items="${categoryTotSalesList}" var="vo">
		<tr>
			<td>${vo.CLAC1_NM}</td>
			<td>${vo.PD_BUY_AM} 억</td>
		</tr>
	</c:forEach>
</table> 



분류별 판매 건수(categoryTotSalesCountList)<hr>

<table border="1" width="300" cellpadding="0" cellspacing="0">
	<tr>
		<td>대분류</td>
		<td>판매건수</td>
	</tr>
	<c:forEach items="${categoryTotSalesCountList}" var="vo">
		<tr>
			<td>${vo.CLAC1_NM}</td>
			<td>${vo.PD_BUY_CT} 건</td>
		</tr>
	</c:forEach>
</table> 

</body>
</html>