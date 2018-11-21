<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="main_contents">
<!--HEAD-->
   <script>
       $(function() {
	   		<% if(request.getParameter("errer")!=null){ %>
			alert("회원탈퇴에 실패했습니다.");
			<% } %>
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
     <h2>회원탈퇴</h2>

     <!--로그인 폼-->
     <script>alert("탈퇴버튼을 누를시 변경할수 없습니다. 주의하세요.")</script>     
     <form action="/JSP_Eclipse/member/deleteidProcess.jsp" method="post" >
       <input class="login" type="id" name="idt" placeholder="아이디를 입력해 주세요."/>
       <input class="login" type="password" name="password" placeholder="비밀번호를 입력해 주세요."/>
       <button class="btn" type="submit" onsubmit="next();">회원 탈퇴</button>
     </form>
     
    </div>
 </div>