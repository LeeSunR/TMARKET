<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="main_contents">
<!--HEAD-->
   <script>
       $(function() {
	   		<% if(request.getParameter("errer")!=null){ %>
			alert("ȸ��Ż�� �����߽��ϴ�.");
			<% } %>
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
     <h2>ȸ��Ż��</h2>

     <!--�α��� ��-->
     <script>alert("Ż���ư�� ������ �����Ҽ� �����ϴ�. �����ϼ���.")</script>     
     <form action="/JSP_Eclipse/member/deleteidProcess.jsp" method="post" >
       <input class="login" type="id" name="idt" placeholder="���̵� �Է��� �ּ���."/>
       <input class="login" type="password" name="password" placeholder="��й�ȣ�� �Է��� �ּ���."/>
       <button class="btn" type="submit" onsubmit="next();">ȸ�� Ż��</button>
     </form>
     
    </div>
 </div>