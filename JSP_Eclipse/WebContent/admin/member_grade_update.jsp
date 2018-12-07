<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String idt = request.getParameter("idt");
	String grade =request.getParameter("grade");
	if(JDB.updateMemberGrade(idt, grade)) out.print("변경완료");
	else out.print("변경실패");
%>