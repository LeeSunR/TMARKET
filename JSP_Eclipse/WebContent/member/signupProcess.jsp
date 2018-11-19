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
	
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest", "root", "dongyang");
	
	pstmt = conn.prepareStatement(
			"insert into MEMBER(IDT, PASSWORD, CONFIRM_PASSWORD, NAME, BIRTH, EMAIL) values(?, ?, ?, ?, ?, ?)");
	
	String idt = Member.getIdt();
	String passwd = Member.getPassword();
	String conpass = Member.getConfirm_password();
	String name = Member.getName();
	String birth = Member.getBirth();
	String email = Member.getEmail();
	
	pstmt.setString(1, idt);
	pstmt.setString(2, passwd);
	pstmt.setString(3, conpass);
	pstmt.setString(4, name);
	pstmt.setString(5, birth);
	pstmt.setString(6, email);
	pstmt.executeUpdate();
	out.println("완료");
}catch(Exception e){
		out.println("실패");
}finally{
	if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
	if(conn != null) try{conn.close();}catch(SQLException sqle){}
}
%>


