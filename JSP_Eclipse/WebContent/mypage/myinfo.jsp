<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<div id="main_contents">
  <!--TODO 이곳에 페이지 내용을 작성합니다.-->
  <script>
    function passCheck(form){
      if ($("#new_password").val()!=$("#new_confirm_password").val()||$("#new_confirm_password").val()==""){
        alert("새로운 페스워드가 일치하지 않습니다.");
        return false;
      }
      return true;
    }
  </script>
  
  <%
  	request.setCharacterEncoding("UTF-8");
	String idt = (String)session.getAttribute("idt");
	String name = "";
	String birth = "";
	String email = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null; 
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://baka.kr:3306/dongyang", "dongyang", "dongyang");
	
	try{
		pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
		pstmt.setString(1, idt);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(idt.equals(rs.getString("idt"))){
				name = rs.getString("name");
				birth = rs.getString("birth");
				email = rs.getString("email");
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
	
	if(idt!=null){
		
	}
%>

  <div class="m-5">
    <h2>회원정보변경</h2>

    <!--페스워드 변경-->
    <h4>비밀번호</h4>
    <form onsubmit="return passCheck(this);" action="/JSP_Eclipse/member/loginProcess.jsp" method="GET">
      <input type="password" name="password" class="form-control input-lg" placeholder="기존 비밀번호" />
      <br>
      <input id="new_password" type="password" name="new_password" class="form-control input-lg" placeholder="새로운 비밀번호" />
      <br>
      <input id="new_confirm_password" type="password" name="new_confirm_password" class="form-control input-lg" placeholder="비밀번호 재입력" />
      <br>
      <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">변경</button>
    </form>
    <br>
    <h4>기타정보</h4>
    <form action="/JSP_Eclipse/member/loginProcess.jsp" method="GET">
      <input type="password" name="password" class="form-control input-lg" placeholder="패스워드" />
      <br>
      <input type="text" name="name" class="form-control input-lg" value=<%=name.toString() %> />
      <br>  
      <input type="text" name="birth" class="form-control input-lg" value=<%=birth.toString() %> />
      <br>
      <input type="text" name="email" class="form-control input-lg" value=<%=email.toString() %> />
      <br>
      <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">변경</button>
    </form>
  </div>
</div>
