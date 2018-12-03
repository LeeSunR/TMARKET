<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="useBean.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String idt = (String)session.getAttribute("idt");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	String cart = request.getParameter("cart");
	
	int oid = JDB.insertOrder(idt,tel,addr);
	JDB.insertOrderItem(cart,oid);
	if(oid>0) response.sendRedirect("/JSP_Eclipse/index.jsp?p=shop/paymentOk.jsp");
	else response.sendRedirect("/JSP_Eclipse/index.jsp?p=shop/payment.jsp");
%>