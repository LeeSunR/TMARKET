<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<jsp:useBean id="Member" class="useBean.Member" scope="page" >
    	<jsp:setProperty name="Member" property="*"/>
</jsp:useBean>

<%
	request.setCharacterEncoding("UTF-8");
	String idt = (String)session.getAttribute("idt");
	String new_password = request.getParameter("new_ps1_password");
	String password1 = request.getParameter("ps1_password");
	String password2 = request.getParameter("ps2_password");
	
	Connection conn = null;
	PreparedStatement pstmt = null; 
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://baka.kr:3306/dongyang", "dongyang", "dongyang");
	
	try{
		pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
		pstmt.setString(1, idt);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			if(password2==null){
			if(password1.equals(rs.getString("password"))){
					pstmt = conn.prepareStatement("update MEMBER set password=? where IDT = ?");
					pstmt.setString(1, new_password);
					pstmt.setString(2, rs.getString("idt"));
					int r = pstmt.executeUpdate();
					response.sendRedirect("/JSP_Eclipse/index.jsp");
				}
				else{
					out.println("<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다.');history.back();</script>");
				}
			}
			if(password1==null){
			if(password2.equals(rs.getString("password"))){
				pstmt = conn.prepareStatement("update MEMBER set name=?, birth=?, email=? where IDT = ?");
				pstmt.setString(1, Member.getName());
				pstmt.setString(2, Member.getBirth());
				pstmt.setString(3, Member.getEmail());
				pstmt.setString(4, rs.getString("idt"));
				int r = pstmt.executeUpdate();
				response.sendRedirect("/JSP_Eclipse/index.jsp");
			}
			else{
				out.println("<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다.');history.back();</script>");
			}
			}
		}
		else{
			out.println("<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다.');history.back();</script>");
		}
	}catch(Exception e){
			out.println(e.getMessage());
	}finally{		
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}	
%>
