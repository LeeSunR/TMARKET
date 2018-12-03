<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>showCart();</script>
<div id="cart_header">
     <i onclick="cart_hide();" class="fa fa-close d-block d-md-block d-xl-none" style="font-size:36px; float:left;"></i>
     <span style="font-size:24px; font-weight: bold; float:right">CART</span>
   </div>
 <div id="cart_list">
   <ul>
   </ul>
   <p style="text-align:right;font-weight:bold;font-size:24px;">TOTAL : <span id="cart_total">xxxxx</span>원</p>
   <div class="p-2">
     <button type="button" onclick="emptyCart()" style="width:100%" class="btn btn-danger m-0">비우기</button>
     <button type="button" onclick="order()" style="width:100%" class="btn btn-primary mt-2">주문하기</button>
   </div>
 </div>