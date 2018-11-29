<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
 <link rel="stylesheet" href="../css/view.css">
 <script src="../js/view.js"></script>
 <div class="m-5">
   <h2>상품</h2>
   <div class="row container-fluid p-0 m-0">
     <div class="col-12 col-lg-6">
       <div id="big_image">
         <img src="../image/sampleT.png" alt="">
       </div>
       <div id="image_snapshots" class="row container-fluid p-0 m-0">
         <div class="image_snapshots_item col-4 col-sm-3 col-lg-4 p-0">
           <img src="../image/sampleT.png" alt="옷 이미지" onclick="imgChange(this);">
         </div>
         <div class="image_snapshots_item col-4 col-sm-3 col-lg-4 p-0">
           <img src="../image/home/slide_2/slide_1.jpg" alt="옷 이미지" onclick="imgChange(this);">
         </div>
         <div class="image_snapshots_item col-4 col-sm-3 col-lg-4 p-0">
           <img src="../image/home/slide_2/slide_2.jpg" alt="옷 이미지" onclick="imgChange(this);">
         </div>
         <div class="image_snapshots_item col-4 col-sm-3 col-lg-4 p-0">
           <img src="../image/home/slide_2/slide_3.jpg" alt="옷 이미지" onclick="imgChange(this);">
         </div>
         <div class="image_snapshots_item col-4 col-sm-3 col-lg-4 p-0">
           <img src="../image/home/slide_1/slide_1.jpg" alt="옷 이미지" onclick="imgChange(this);">
         </div>
       </div>
     </div>
     <div class="col-12 col-lg-6">
       <form action="index.html" method="post">
         <h3>DREAMER</h3>
         <input type="text" name="id" value="t10223" style="display:none;"> <!--상품ID-->
         <div class="view_info">
           <div class="view_info_title">
             가격
           </div>
           <div class="view_info_main">
             <span class="price">20,000원</span>
           </div>
         </div>
         <div class="view_info">
           <div class="view_info_title">
             색상
           </div>
           <div class="view_info_main">
             <input type="radio" name="color" value="white" id="white">
             <label for="white" style="background-color:white;"></label>
             <input type="radio" name="color" value="gray" id="gray">
             <label for="gray" style="background-color:gray;"></label>
             <input type="radio" name="color" value="blue" id="blue">
             <label for="blue" style="background-color:blue;"></label>
             <input type="radio" name="color" value="red" id="red">
             <label for="red" style="background-color:red;"></label>

           </div>
         </div>
         <div class="view_info">
           <div class="view_info_title">
             사이즈
           </div>
           <div class="view_info_main">
             <select class="view_size_select" name="size">
               <option value="s">S</option>
               <option value="m">M</option>
               <option value="l">L</option>
               <option value="xl">XL</option>
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
            <button type="button" name="button" class="btn btn-primary">장바구니에 추가</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>