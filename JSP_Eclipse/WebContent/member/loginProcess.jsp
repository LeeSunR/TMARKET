<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String idt = request.getParameter("idt");
	String password = request.getParameter("password");
	
	//TODO 데이터베이스와 비교
	if(true){
		session.setAttribute("idt", idt);
		session.setAttribute("grade", "member");
	}
	
	response.sendRedirect("/JSP_Eclipse/index.jsp");
%>