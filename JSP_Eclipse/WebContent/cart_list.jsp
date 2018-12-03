<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	int tid = Integer.parseInt(request.getParameter("tid"));
	Item item = JDB.getItemInfo(tid);
%>
<li>
  <div class="row container-fluid p-0 m-0">
    <div class="col-4 p-0">
      <img src="/JSP_Eclipse/image/item/<%=item.getTid()%>.jpg" alt="" style="width:100%">
    </div>
    <div class="col-8 p-0" style="text-align:right">
      <span style="font-weight:bold;"><%=item.getName()%></span><br>
      <span class="cart_price"><%=item.getPrice()%></span>원 X <span class="cart_qty"><%=request.getParameter("qty")%></span> EA<br>
           색상 : <span style="color:<%=request.getParameter("color")%>;">●</span>
    </div>
  </div>
</li>