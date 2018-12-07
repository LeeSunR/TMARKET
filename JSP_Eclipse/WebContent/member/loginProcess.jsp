<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="member" class="useBean.Member" scope="page">
		<jsp:setProperty name="member" property="*"/>
	</jsp:useBean>
	
<%
	if(useBean.JDB.login(member)){
		if(member.getGrade().equals("nothing")){
			response.sendRedirect("/JSP_Eclipse/index.jsp?p=member/login.jsp?nothing");
		}
		else{
			session.setAttribute("idt",member.getIdt());
			session.setAttribute("grade",member.getGrade());
			System.out.println(member.getGrade());
			response.sendRedirect("/JSP_Eclipse/index.jsp");
		}
	}
	else{
		response.sendRedirect("/JSP_Eclipse/index.jsp?p=member/login.jsp?errer");
	}
%>
