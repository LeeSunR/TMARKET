<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	int oid = Integer.parseInt(request.getParameter("oid"));
	String status =request.getParameter("status");
	if(JDB.updateOrderStatus(oid, status)) out.print("변경완료");
	else out.print("변경실패");
%>