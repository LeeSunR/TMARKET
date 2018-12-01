<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="useBean.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	int tid = Integer.parseInt(request.getParameter("tid"));
	Item item = JDB.getItemInfo(tid);
%>


<div id="main_contents">
 <link rel="stylesheet" href="/JSP_Eclipse/css/view.css">
 <script src="/JSP_Eclipse/js/view.js"></script>
 <div class="m-5">
   <h2>상품</h2>
   <div class="row container-fluid p-0 m-0">
     <div class="col-12 col-lg-6">
       <div id="big_image">
         <img src="/JSP_Eclipse/image/item/<%=item.getTid()%>.jpg" alt="">
       </div>
     </div>
     <div class="col-12 col-lg-6">
       <form action="index.html" method="post">
         <h3><%=item.getName()%></h3>
         <input type="text" name="id" value="<%=item.getTid()%>" style="display:none;"> <!--상품ID-->
         <div class="view_info">
           <div class="view_info_title">
             가격
           </div>
           <div class="view_info_main">
             <span class="price"><%=item.getPrice()%>원</span>
           </div>
         </div>
         <div class="view_info">
           <div class="view_info_title">
             색상
           </div>
           <div class="view_info_main">
           	<%
           		String[] colors = item.getColor(); 
           		for(String color : colors){
           	%>
             <input type="radio" name="color" value="<%=color %>" id="<%=color %>">
             <label for="<%=color %>" style="background-color:<%=color %>;"></label>
            <%}%>
           </div>
         </div>
         <div class="view_info">
           <div class="view_info_title">
             사이즈
           </div>
           <div class="view_info_main">
             <select class="view_size_select" name="size">
			<%
           		String[] sizes = item.getSize(); 
           		for(String size : sizes){
           	%>
               <option value="<%=size%>"><%=size%></option>
			<%}%>
             </select>
           </div>
         </div>
         <div class="view_info">
           <div class="view_info_title">
             수량
           </div>
           <div class="view_info_main">
             <input type="number" name="" value="1">
           </div>
         </div>
         <div style="text-align:right;margin-top:20px;">
            <button type="button" name="button" class="btn btn-primary d-block" style="width:100%" onclick="addCart(<%=item.getTid()%>)">장바구니에 추가</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>