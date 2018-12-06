
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
/* 설정법 : http://blog.naver.com/PostView.nhn?blogId=froginthesky&logNo=220834657436&redirect=Dlog&widgetTypeCall=true */
	request.setCharacterEncoding("utf-8");
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String subject = request.getParameter("subject");
	String comment = request.getParameter("comment");
	// 입력값 받음
	if(useBean.JDB.QnaMailSend(from, to, subject, comment))
		response.sendRedirect("/JSP_Eclipse/index.jsp");
%>