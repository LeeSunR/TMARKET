<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<div id="main_contents">
  <!--TODO 이곳에 페이지 내용을 작성합니다.-->
  <script>
    function passCheck(form){
   	  <% if(request.getParameter("errer")!=null){ %>
	  	alert("회원정보 변경에 실패했습니다.");
	  <% } %>
      if ($("#new_password").val()!=$("#new_confirm_password").val()||$("#new_confirm_password").val()==""){
        alert("새로운 페스워드가 일치하지 않습니다.");
        return false;
      }
      return true;
    }
  </script>
    <% String idt = (String)session.getAttribute("idt"); %>
  	<jsp:useBean id="member" class="useBean.Member" scope="page">
  		<jsp:setProperty name="member" property="idt" value="<%=idt %>"/>
	</jsp:useBean>
	<%
		useBean.JDB.getMyinfo(member);
	%>
	

  <div class="m-5">
    <h2>회원정보변경</h2>

    <!--페스워드 변경-->
    <h4>비밀번호</h4>
    <form onsubmit="return passCheck(this);" action="/JSP_Eclipse/member/myinfoProcess.jsp" method="GET">
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
    <form action="/JSP_Eclipse/member/myinfoProcess.jsp" method="GET">
      <input type="password" name="password" class="form-control input-lg" placeholder="패스워드" />
      <br>
      <input type="text" name="name" class="form-control input-lg" value=<%=member.getName() %> />
      <br>  
      <input type="text" name="birth" class="form-control input-lg" value=<%=member.getBirth() %> />
      <br>
      <input type="text" name="email" class="form-control input-lg" value=<%=member.getEmail() %> />
      <br>
      <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">변경</button>
    </form>
  </div>
</div>
