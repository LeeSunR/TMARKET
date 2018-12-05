<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "useBean.*" %>
<%@ page import = "java.sql.*" %>

<%
	//접속한 사람이 admin이 아닐경우 sendRedirect
	String grade = (String)session.getAttribute("grade");
	if(!grade.equals("admin"))
	response.sendRedirect("/JSP_Eclipse/index.jsp");
	ResultSet rs = JDB.getOrderInfo();
%>

<div id="main_contents">
  <link rel="stylesheet" href="/JSP_Eclipse/css/order.css">
  <div class="m-5">
    <h2>주문관리</h2>
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
              <span class="order_item_info_title">상태변경</span> :
              <select id="order_status_<%=rs.getInt("OID")%>" class="" name="" onchange="">
                <option value="주문접수">주문접수</option>
                <option value="결제완료">결제완료</option>
                <option value="배송중">배송중</option>
                <option value="배송완료">배송완료</option>
                <option value="반품중">반품중</option>
                <option value="환줄중">환줄중</option>
                <option value="반품완료">반품완료</option>
                <option value="환불완료">환불완료</option>
              </select>
              <script>
             	$("#order_status_"+<%=rs.getInt("OID")%>+">option[value="+"<%=rs.getString("STATUS")%>"+"]").prop("selected", true);
              </script>
            </div>
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