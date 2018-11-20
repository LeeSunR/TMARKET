<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import = "java.sql.*" %>
    
<jsp:useBean id="Member" class="useBean.Member" scope="page" >
    	<jsp:setProperty name="Member" property="*"/>
</jsp:useBean>

<!-- TODO DB INSERT -->

<%
Connection conn = null;
PreparedStatement pstmt = null; 
ResultSet rs = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	conn = DriverManager.getConnection("jdbc:mysql://baka.kr:3306/dongyang", "dongyang", "dongyang");
	
	pstmt = conn.prepareStatement(
			"insert into MEMBER(IDT, PASSWORD, NAME, BIRTH, EMAIL) values(?, ?, ?, ?, ?)");
	
	String idt = Member.getIdt();
	String passwd = Member.getPassword();
	String name = Member.getName();
	String birth = Member.getBirth();
	String email = Member.getEmail();
	
	pstmt.setString(1, idt);
	pstmt.setString(2, passwd);
	pstmt.setString(3, name);
	pstmt.setString(4, birth);
	pstmt.setString(5, email);
	pstmt.executeUpdate();
	}catch(Exception e){
		out.println(e.getMessage());
	}finally{
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
		response.sendRedirect("/JSP_Eclipse/index.jsp");
	}
%>


