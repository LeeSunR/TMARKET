<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.util.ArrayList" %>
<%
	//접속한 사람이 admin이 아닐경우 sendRedirect
	String grade = (String)session.getAttribute("grade");
	if(!grade.equals("admin"))
	response.sendRedirect("/JSP_Eclipse/index.jsp");
	ArrayList<Member> members = JDB.getAllInfo();
%>


<div id="main_contents">
 <style media="screen">
   #main_contents table tr{
     text-align: center;
   }
 </style>
 <!--TODO 이곳에 페이지 내용을 작성합니다.-->
 <div class="m-5">
   <h2>회원관리</h2>
   <br>
   <div class="table-responsive">
     <table class="table table-hover">
       <thead class="thead-light">
         <tr>
           <th>아이디</th>
           <th>이름</th>
           <th>생년월일</th>
           <th>이메일</th>
           <th>회원등급</th>
         </tr>
       </thead>
       <tbody>
       
     		<%
     			for(int i=0;i<members.size();i++){ 
     				Member m = members.get(i);
     		%>
         <tr>
           <td><%=m.getIdt()%></td>
           <td><%=m.getName()%></td>
           <td><%=m.getBirth()%></td>
           <td><%=m.getEmail()%></td>
           <td>
             <select name="" onchanged="">
             	<% if(m.getGrade().equals("member")) {%>
               <option value="user" selected>일반회원</option>
               <option value="admin">관리자</option>
               <%} else if(m.getGrade().equals("admin")) {%>
               <option value="user">일반회원</option>
               <option value="admin" selected>관리자</option>
               <%} %>
             </select>
           </td>
         </tr>
         	<%} %>
         	
         	
       </tbody>
     </table>
   </div>
 </div>
</div>