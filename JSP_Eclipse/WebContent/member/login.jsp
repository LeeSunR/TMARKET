<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="main_contents">
<!--HEAD-->


   <script>
		<% if(request.getParameter("errer")!=null){ %>
			alert("���̵� Ȥ�� ��й�ȣ�� �ٸ��ϴ�.");
		<% } %>
		<% if(request.getParameter("nothing")!=null){ %>
		alert("�̸��� ������ �ȵ� �����Դϴ�.");
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
   <!--TODO �̰��� ������ ������ �ۼ��մϴ�.-->
   <div class="m-5" style="margin-top:10rem !important;margin-bottom:10rem !important">

     <!--������ ȸ�� ����-->
     <h2>�α���</h2>

     <!--�α��� ��-->
     <form action="/JSP_Eclipse/member/loginProcess.jsp" method="post">
       <input class="login" type="id" name="idt" placeholder="���̵� �Է��� �ּ���."/>
       <input class="login" type="password" name="password" placeholder="��й�ȣ�� �Է��� �ּ���."/>
       <button class="btn" type="submit">�α���</button>
       <input id="check1" type="checkbox"/><label for="check1">�ڵ� �α���</label>
     </form>
   </div>

   <!--�޽���-->
   <p style="text-align:center">ȸ���� ���� �ƴϼ���?<a href="signup.html">ȸ������</a></p>
 </div>