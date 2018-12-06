<%@page import="useBean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import = "java.sql.*" %>
    
<jsp:useBean id="member" class="useBean.Member" scope="session" >
    	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<!-- TODO DB INSERT -->
<%
	if(useBean.JDB.getGrade(member))
		response.sendRedirect("/JSP_Eclipse/index.jsp");
%>

