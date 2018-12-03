<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
<script>paymentListShow();</script>
 <div class="m-5">
   <h2>주문</h2>
   <h4>상품정보</h4>
   <hr>
   <ol id="payment_cart_list">
   </ol>
   <div style="text-align:right;font-size:16px;font-weight: bold;">
     총 가격 : <span id="payment_cart_total">80,000</span>원
   </div>

   <h4>주문정보</h4>

   <hr>
   <form id="paymentinfo" action="shop/paymentProcess.jsp" method="POST">
     <input type="text" name="addr" class="form-control input-lg" placeholder="주소" />
     <br>
     <input type="text" name="tel" class="form-control input-lg" placeholder="전화번호" />
     <br>
     <span>결재방법</span><br>
     <input type="radio" name="howtopay" value="pay1" id="pay1"><label for="pay1" class="mr-2">신용카드</label>
     <input type="radio" name="howtopay" value="pay2" id="pay2"><label for="pay2" class="mr-2">실시간 계좌이체</label>
     <input type="radio" name="howtopay" value="pay3" id="pay3"><label for="pay3" class="mr-2">무통장입금</label>

     <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit" onclick="payment();">결재하기</button>
    </form>
  </div>
</div>