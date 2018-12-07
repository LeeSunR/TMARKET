<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="main_contents">
<!--HEAD-->


   <script>
		<% if(request.getParameter("errer")!=null){ %>
			alert("아이디 혹은 비밀번호가 다릅니다.");
		<% } %>
		<% if(request.getParameter("nothing")!=null){ %>
		alert("이메일 인증이 안된 계정입니다.");
		<% } %>
       $(function() {
           $('ul.tab li a').on('click',function(e) {
               e.preventDefault();
               $('ul.tab li').removeClass('on');
               $(this).closest('li').addClass('on');
           });
       });
       
   </script>
   <link type="text/css" rel="stylesheet" href="/JSP_Eclipse/css/login.css">
   <!--TODO 이곳에 페이지 내용을 작성합니다.-->
   <div class="m-5" style="margin-top:10rem !important;margin-bottom:10rem !important">

     <!--관리자 회원 변경-->
     <h2>로그인</h2>

     <!--로그인 폼-->
     <form action="/JSP_Eclipse/member/loginProcess.jsp" method="post">
       <input class="login" type="id" name="idt" placeholder="아이디를 입력해 주세요."/>
       <input class="login" type="password" name="password" placeholder="비밀번호를 입력해 주세요."/>
       <button class="btn" type="submit">로그인</button>
       <input id="check1" type="checkbox"/><label for="check1">자동 로그인</label>
     </form>
   </div>

   <!--메시지-->
   <p style="text-align:center">회원이 아직 아니세요?<a href="signup.html">회원가입</a></p>
 </div>