<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>
    <%
	String idt = (String)session.getAttribute("idt");
	ResultSet rs = JDB.getOrderInfo(idt);
    %>
<div id="main_contents">
   <link rel="stylesheet" href="/JSP_Eclipse/css/order.css">
   <div class="m-5">
     <h2> 주문조회 </h2>
     <ul class="d-block m-0 p-0">
      <%
      	while(rs.next()){
      %>
      <li class="d-block mb-3">
        <div class="row container-fluid p-2 m-0 order_item">
          <div class="col-12 col-md-12 m-0 p-0">
            <div class="order_item_info">
              <span class="order_item_info_title">주문번호</span> : <%=rs.getInt("OID")%>
            </div>
            <div class="order_item_info">
              <span class="order_item_info_title">주문자</span> : <%=rs.getString("IDT") %>(<%=rs.getString("NAME")%>)   <span class="order_item_info_title">전화번호</span> : <%=rs.getString("TEL") %>
            </div>
            <div class="order_item_info">
              <span class="order_item_info_title">주소</span> : <%=rs.getString("ADDR") %>
            </div>
            <div class="order_item_info">
              <span class="order_item_info_title">상태</span> : <%=rs.getString("STATUS")%> </div>
            <div style="text-align:right;">
            	<Button class="btn btn-sm btn-primary">더보기..</Button>
            </div>
          </div>
        </div>
      </li>
      <%
      	}
      	JDB.close_MYSQL();
      %>
     </ul>
   </div>
 </div>