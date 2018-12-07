<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>

<%
	//접속한 사람이 admin이 아닐경우 sendRedirect
	String grade = (String)session.getAttribute("grade");
	if(!grade.equals("admin"))
	response.sendRedirect("/JSP_Eclipse/index.jsp");
	ArrayList<Item> items = JDB.getItemList("SHOW ALL", "%%", 0, 999999);
%>

<div id="main_contents">
 <link rel="stylesheet" href="/JSP_Eclipse/css/order.css">
 <div class="m-5">
   <h2>상품관리</h2>
   <ul class="d-block m-0 p-0">
     <div class="row container-fluid p-2 m-0">
     	<% for(int i=0; i<items.size();i++){ %>
         <li class="col-6 d-block mb-3">
           <div class="row container-fluid p-2 m-0 order_item">
             <div class="col-12 col-md-4 m-0 p-0 order_img">
               <img src="/JSP_Eclipse/image/item/<%=items.get(i).getTid() %>.jpg" alt="샘플이미지" style="width:100%">
             </div>
             <div class="col-12 col-md-8 m-0 p-0">
               <div class="order_item_info">
                 <span class="order_item_info_title">상품번호</span> : <%= items.get(i).getTid() %>
               </div>
               <div class="order_item_info">
                 <span class="order_item_info_title">상품명</span> : <%= items.get(i).getName() %>
               </div>
               <div class="order_item_info">
                 <span class="order_item_info_title">가격</span> : <%= items.get(i).getPrice() %>원
               </div>
               <!-- 
               <div class="order_item_info">
                 <button type="button" class="btn btn-primary btn-sm m-1">수정</button>
                 <button type="button" class="btn btn-danger btn-sm m-1">삭제</button>
               </div>
                -->
             </div>
           </div>
         </li>
         <%} %>
     </div>
   </ul>
   <div style="text-align:center">
     <button class="btn btn-primary btn-lg" type="button" name="button" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemcreate.jsp'">추가</button>
    </div>
  </div>
</div>
