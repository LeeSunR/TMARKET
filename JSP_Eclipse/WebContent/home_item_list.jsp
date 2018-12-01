<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="useBean.*"%>
<%@ page import="java.sql.*"%>

<%
	Item[] items = null;
	String sel = request.getParameter("sel");
	if(sel.equals("new")){
		items = JDB.getNewItemListTop6();
	}
	else if(sel.equals("best")){
		items = JDB.getBestItemListTop6();
	}
	else if(sel.equals("sale")){
		items = JDB.getSaleItemListTop6();
	}
	
	for(Item item : items){
	%>
	<li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp&tid=<%=item.getTid()%>'">
		<img src="/JSP_Eclipse/image/item/<%=item.getTid()%>.jpg" alt="티셔츠이미지" style="width:100%">
		<div class="item_name"><%=item.getName()%></div>
		<div class="item_price"><%=item.getPrice()%>원</div>
	</li>
	<%
	}
	%>