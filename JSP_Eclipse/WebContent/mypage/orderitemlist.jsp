<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>
<%
	request.setCharacterEncoding("UTF-8");
	int oid = Integer.parseInt(request.getParameter("oid"));
	ArrayList<TorderItem> arr = JDB.getOrderItemList(oid);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/JSP_Eclipse/css/bootstrap.css">
<script src="/JSP_Eclipse/js/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<% for(int i=0;i<arr.size();i++){%>
		<% Item item = JDB.getItemInfo(arr.get(i).getTid());%>
		<li id="row" class="row container-fluid p-0 m-0" style="boder-bottom:1px solid black;">
			<div class="col-4">
						<img src="/JSP_Eclipse/image/item/<%=arr.get(i).getTid()%>.jpg" style="width:100%;"/>
			</div>
			<div class="col-8">
				<span class="m-2">상품명 : <%=item.getName()%></span>
				<span class="m-2">색상 : <span style="color:<%=arr.get(i).getColor()%>;">●</span></span><br>
				<span class="m-2">가격 : <span class="payment_cart_price"><%=item.getPrice()%>원</span></span><br>
				<span class="m-2">수량 : <span class="payment_cart_qty"><%=arr.get(i).getQty()%></span>EA</span>
			</div>
		</li>
		<% } %>
	</ul>
</body>
</html>