<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	int tid = Integer.parseInt(request.getParameter("tid"));
	Item item = JDB.getItemInfo(tid);
%>

<li>
  <span class="m-2">상품명 : <%=item.getName()%></span>
  <span class="m-2">색상 : <span style="color:<%=request.getParameter("color")%>;">●</span></span>
  <span class="m-2">가격 : <span class="payment_cart_price"><%=item.getPrice()%>원</span></span>
  <span class="m-2">수량 : <span class="payment_cart_qty"><%=request.getParameter("qty")%></span>EA</span>
</li>