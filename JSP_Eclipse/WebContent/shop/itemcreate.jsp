<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="main_contents">
 <style>
   #main_contents input[type="color"]{
     display: inline;
     padding:0px;
     margin: 2px;
     width:38px;
     height:38px;
   }
 </style>
 <script type="text/javascript">
   function colorAdd(){
     var colorInput = $("<input type='color' class='form-control' name='color'>");
     $("#colors").append(colorInput);
   }
 </script>
 <div class="m-5">
   <h2>상품등록</h2>
   <form action="#" method="get">
     <div class="row container-fluid p-0 m-0">
       <div class="col-12 col-md-6 mb-3">
         <h4>상품명</h4>
         <hr>
         <input type="text" class="form-control" name="name" placeholder="상품명을 입력해 주세요">
       </div>
       <div class="col-12 col-md-6 mb-3">
         <h4>가격</h4>
         <hr>
         <input type="number" class="form-control" name="price" placeholder="가격을 입력해 주세요">
       </div>
       <div class="col-12 col-md-6 mb-3">
         <h4>사이즈</h4>
         <hr>
         <input type="checkbox" id="size_free" class="form-control" name="size" value="free" style="width: auto; display: inline"> <label for="size_free">FREE</label> <br>
         <input type="checkbox" id="size_s" class="form-control" name="size" value="s" style="width: auto; display: inline"> <label for="size_free">S</label> <br>
         <input type="checkbox" id="size_m" class="form-control" name="size" value="m" style="width: auto; display: inline"> <label for="size_free">M</label> <br>
         <input type="checkbox" id="size_l" class="form-control" name="size" value="l" style="width: auto; display: inline"> <label for="size_free">L</label> <br>
         <input type="checkbox" id="size_xl" class="form-control" name="size" value="xl" style="width: auto; display: inline"> <label for="size_free">XL</label> <br>
       </div>
       <div class="col-12 col-md-6 mb-3">
         <h4>색상</h4>
         <hr>
         <div id="colors">
           <input type="color" class="form-control" name="color">
         </div>
         <button type="button" name="button" class="btn btn-primary" onclick="colorAdd()">색상추가</button>
         <button type="button" name="button" class="btn btn-danger" onclick="colorDel()">색상제거</button>
       </div>
       <div class="col-12 col-md-6 mb-3">
         <h4>이미지</h4>
         <hr>
         <input type="file" class="form-control" name="file">
       </div>
     </div>
     <div style="text-align:center;">
        <input type="submit" class="btn btn-primary btn-lg" value="제출">
      </div>
    </form>
  </div>
</div>