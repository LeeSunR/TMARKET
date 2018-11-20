<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>


<%
	request.setCharacterEncoding("UTF-8");
	String idt = request.getParameter("idt");
	String password = request.getParameter("password");
	
	Connection conn = null;
	PreparedStatement pstmt = null; 
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://baka.kr:3306/dongyang", "dongyang", "dongyang");
	
	try{
		pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
		pstmt.setString(1, idt);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(password.equals(rs.getString("password"))){
				session.setAttribute("idt", idt);
				response.sendRedirect("/JSP_Eclipse/index.jsp");
			}
			else{
				out.println("<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다.');history.back();</script>");
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
