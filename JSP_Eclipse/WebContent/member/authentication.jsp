<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="useBean.Member" scope="session" >
    	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>
<%    
	String random = (String)useBean.JDB.RandomNum();
	useBean.JDB.AuthMailSend(member.getEmail(), random);
%>

<script>
	function check(){
		var form = document.authenform;
		var authNum = '<%=random%>';
		if(!form.authnum.value){
			alert("인증번호를 입력하세요.");
		}
		if(form.authnum.value!=authNum){
			alert("틀린 인증번호입니다. 다시입력하세요.");
		}
		if(form.authnum.value == authNum){
			alert("인증완료.");
			form.action="/JSP_Eclipse/index.jsp?p=member/authenticationProcess.jsp";
		}
	}
</script>

<div id="main_contents">
  <div class="m-5">
      <h4> 등록하신 메일로 회원 인증을 하세요! </h4><br>
      <label for="from">인증번호 : </label>
      <br>
	      <form method="post" name="authenform" onSubmit="check();" >	      
      		<input type="text" class="form-control" id="authnum" placeholder=인증번호 입력 name="authnum">
			<input type="submit" class="btn btn-info" value="Submit">
	      </form>
   </div>
</div>