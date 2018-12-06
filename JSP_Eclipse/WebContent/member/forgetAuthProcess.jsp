<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="useBean.Member" scope="session" >
    	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>
<%
	useBean.JDB.AuthMailSend(member.getEmail(), useBean.JDB.forgetMyIDinfo(member));
%>
<br><br><br>
<center><h2>메일을 확인해 주세요!</h2></center>
<br><br><br>