<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="item" class="useBean.Item" scope="page">
	<jsp:setProperty name="item" property="*"/>
</jsp:useBean>



<%
	if(useBean.JDB.insert_item(item)){
		response.sendRedirect("/JSP_Eclipse");
	}
	else{
		response.sendRedirect("/JSP_Eclipse/index.jsp?p=shop/itemcreate.jsp");
	}
%>