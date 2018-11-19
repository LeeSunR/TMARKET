<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import = "java.sql.*" %>

<jsp:useBean id="Member" class="useBean.Member" scope="session" >
    <jsp:setProperty name="Member" property="*"/>
</jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String idt = Member.getIdt();
	String password = Member.getPassword();
%>
<!-- TODO DB search -->
<%
int check=0;
Connection conn = null;
Statement stmt = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest", "root", "dongyang");
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from MEMBER where IDT =" + idt);
		
	if(rs.next()){
		if(idt.equals(rs.getString("idt"))){
			session.setAttribute("idt", idt);
			response.sendRedirect("/JSP_Eclipse/index.jsp");
		}
	}
	
}catch(Exception e){
		out.println("실패");
}finally{
	if(stmt != null) try{stmt.close();}catch(SQLException sqle){}
	if(conn != null) try{conn.close();}catch(SQLException sqle){}
}

%>
