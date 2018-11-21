<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	String idt = (String)session.getAttribute("idt");
	request.setCharacterEncoding("UTF-8");
	String new_password = request.getParameter("new_password");
%>

<jsp:useBean id="member" class="useBean.Member" scope="page" >
    	<jsp:setProperty name="member" property="*"/>
    	<jsp:setProperty name="member" property="idt" value="<%=idt %>"/>
</jsp:useBean>

<%
	if(new_password==null)
		if(useBean.JDB.update_info(member)){
			response.sendRedirect("/JSP_Eclipse/index.jsp");
		}
		else{
			response.sendRedirect("/JSP_Eclipse/index.jsp?p=myinfo.jsp");
		}
	else
		if(useBean.JDB.update_password(member,new_password)){
			response.sendRedirect("/JSP_Eclipse/index.jsp");
		}
		else{
			response.sendRedirect("/JSP_Eclipse/index.jsp?p=myinfo.jsp");
		}
%>
