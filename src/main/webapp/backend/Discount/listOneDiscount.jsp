<%@page import="com.discount.model.DiscountVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
DiscountVO discountVO = (DiscountVO) request.getAttribute("DiscountVO");
%>
<%@include file="/backend/backNavbar.jsp"%>
<html>
<head>
<title>團購折扣資料 - listOneDiscount.jsp</title>

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 600px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>團購折扣資料 - listOneDiscount.jsp</h3>
				<h4>
					<a href="<%=request.getContextPath()%>/backend/Discount/select_page.jsp">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>折扣編號</th>
			<th>團購商品編號</th>
			<th>商品數量下限</th>
			<th>商品數量上限</th>
			<th>折扣價格</th>
			<th>折扣說明</th>
		</tr>
		<tr>
			<td><%=discountVO.getDiscount_id()%></td>
			<td><%=discountVO.getGbitem_id()%></td>
			<td><%=discountVO.getDiscount_minamount()%></td>
			<td><%=discountVO.getDiscount_maxamount()%></td>
			<td><%=discountVO.getDiscount_price()%></td>
			<td><%=discountVO.getDiscount_nar()%></td>
<%-- 			<td>${DiscountVO.discount_id}</td> --%>
<%-- 			<td>${DiscountVO.gbitem_id}</td> --%>
<%-- 			<td>${DiscountVO.discount_minamount}</td> --%>
<%-- 			<td>${DiscountVO.discount_maxamount}</td> --%>
<%-- 			<td>${DiscountVO.discount_price}</td> --%>
<%-- 			<td>${DiscountVO.discount_nar}</td> --%>
		</tr>
	</table>

</body>
</html>