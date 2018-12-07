<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.util.ArrayList" %>

<%
	request.setCharacterEncoding("UTF-8");
	String c = request.getParameter("c");
	String tname = request.getParameter("tname");
	if(tname==null) tname="%%";
	String min_price = request.getParameter("min_price");
	if(min_price==null) min_price = "0";
	else if (min_price.equals("")) min_price = "0";
	String max_price = request.getParameter("max_price");
	if(max_price==null) max_price = "999999";
	else if (max_price.equals("")) max_price = "999999";
	int min = Integer.parseInt(min_price);
	int max = Integer.parseInt(max_price);
	ArrayList<Item> items = JDB.getItemList(c, tname, min, max);
%>

<div id="main_contents">
 <link rel="stylesheet" href="/JSP_Eclipse/css/list.css">
 <div class="m-5">
   <h2><%=c%></h2>
   <form action="/JSP_Eclipse/index.jsp" method="get">
     <div class="row container-fluid p-0 m-0">
       <input type="text" name="p" style="display:none" value="shop/list.jsp">
	   <input type="text" name="c" style="display:none" value="<%=c%>">
       <div class="col-12 col-md-4 mt-2">
         <input type="text" class="form-control" name="tname" placeholder="검색어를 입력해 주세요">
       </div>
       <div class="col-6 col-md-3 pr-0 mt-2">
         <input type="number" class="form-control" name="min_price" style="display:inline;width:70%" placeholder="0원"><span style="display:inline-block;width:30%;text-align:center;"> ~ </span>
       </div>
       <div class="col-6 col-md-3 pl-0 mt-2">
         <input type="number" class="form-control" name="max_price" style="display:inline;width:70%" placeholder="999999원"><span style="display:inline-block;width:30%;text-align:center;">까지</span>
       </div>
       <div class="col-12 col-md-2 mt-2" style="text-align:center;">
         <button class="btn btn-primary" style="width:100%;">검색</button>
       </div>
     </div>
   </form>
   <ul id="list_item" class="row container-fluid p-0 m-0 mt-2">
   	<% for(int i =0;i<items.size();i++){ %>
     <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp&tid=<%=items.get(i).getTid() %>'">
       <img src="/JSP_Eclipse/image/item/<%=items.get(i).getTid() %>.jpg" alt="샘플티셔츠" style="width:100%">
       <div class="item_name"><%=items.get(i).getName() %></div>
       <div class="item_price"><%=items.get(i).getPrice() %>￦</div>
     </li>
     <% } %>
   </ul>
  </div>
</div>