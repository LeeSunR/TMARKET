<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
 <div class="m-5">
   <h2>주문</h2>
   <h4>상품정보</h4>
   <hr>
   <ol>
     <li>
       <span class="m-2">상품번호 : 00001258</span>
       <span class="m-2">상품명 : SAMPLE T</span>
       <span class="m-2">색상 : <span style="color:blue">●</span></span>
       <span class="m-2">수량 : 3EA</span>
       <div style="text-align:right;">
         <span class="m-2" style="font-size:16px;font-weight: bold;">가격 : 30,000원</span>
       </div>
     </li>
     <li>
       <span class="m-2">상품번호 : 00001258</span>
       <span class="m-2">상품명 : SAMPLE T</span>
       <span class="m-2">색상 : <span style="color:blue">●</span></span>
       <span class="m-2">수량 : 2EA</span>
       <div style="text-align:right;">
         <span class="m-2" style="font-size:16px;font-weight: bold;">가격 : 40,000원</span>
       </div>
     </li>
     <li>
       <span class="m-2">상품번호 : 00001258</span>
       <span class="m-2">상품명 : SAMPLE T</span>
       <span class="m-2">색상 : <span style="color:blue">●</span></span>
       <span class="m-2">수량 : 1EA</span>
       <div style="text-align:right;">
         <span class="m-2" style="font-size:16px;font-weight: bold;">가격 : 10,000원</span>
       </div>
     </li>
   </ol>
   <div style="text-align:right;font-size:16px;font-weight: bold;">
     총 가격 : 80,000원
   </div>

   <h4>주문정보</h4>

   <hr>
   <form action="paymentProcess.jsp" method="POST">
     <input type="text" name="password" class="form-control input-lg" placeholder="이름" />
     <br>
     <input type="text" name="password" class="form-control input-lg" placeholder="주소" />
     <br>
     <input type="text" name="password" class="form-control input-lg" placeholder="전화번호" />
     <br>
     <span>결재방법</span><br>
     <input type="radio" name="howtopay" value="pay1" id="pay1"><label for="pay1" class="mr-2">신용카드</label>
     <input type="radio" name="howtopay" value="pay2" id="pay2"><label for="pay2" class="mr-2">실시간 계좌이체</label>
     <input type="radio" name="howtopay" value="pay3" id="pay3"><label for="pay3" class="mr-2">무통장입금</label>

     <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit" onclick="payment();">결재하기</button>
    </form>
  </div>
</div>