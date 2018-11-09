<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="cart_header">
            <i onclick="cart_hide();" class="fa fa-close d-block d-md-block d-xl-none" style="font-size:36px; float:left;"></i>
            <span style="font-size:24px; font-weight: bold; float:right">CART</span>
          </div>
        <div id="cart_list">
            <ul>
              <li>
                <div class="row container-fluid p-0 m-0">
                  <div class="col-4 p-0">
                    <img src="image/sampleT.png" alt="" style="width:100%">
                  </div>
                  <div class="col-8 p-0" style="text-align:right">
                    <span style="font-weight:bold;">SAMPLE NAME</span><br>
                    3 EA<br>
                    10,000원<br>
                  </div>
                </div>
              </li>
              <li>
                <div class="row container-fluid p-0 m-0">
                  <div class="col-4 p-0">
                    <img src="image/sampleT.png" alt="" style="width:100%">
                  </div>
                  <div class="col-8 p-0" style="text-align:right">
                    <span style="font-weight:bold;">SAMPLE NAME</span><br>
                    3 EA<br>
                    10,000원<br>
                  </div>
                </div>
              </li>
              <li>
                <div class="row container-fluid p-0 m-0">
                  <div class="col-4 p-0">
                    <img src="image/sampleT.png" alt="" style="width:100%">
                  </div>
                  <div class="col-8 p-0" style="text-align:right">
                    <span style="font-weight:bold;">SAMPLE NAME</span><br>
                    3 EA<br>
                    10,000원<br>
                  </div>
                </div>
              </li>
            </ul>
            <p style="text-align:right;font-weight:bold;font-size:24px;">TOTAL :  79,000원</p>
            <div class="p-2">
              <button type="button" onclick="emptyCart()" style="width:100%" class="btn btn-danger m-0">비우기</button>
              <button type="button" onclick="order()" style="width:100%" class="btn btn-primary mt-2">주문하기</button>
            </div>
          </div>