<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
 <link rel="stylesheet" href="/JSP_Eclipse/css/list.css">
 <div class="m-5">
   <h2>SHOW ALL</h2>
   <form action="./list.html" method="get">
     <div class="row container-fluid p-0 m-0">
       <div class="col-12 col-md-4 mt-2">
         <input type="text" class="form-control" name="name" placeholder="검색어를 입력해 주세요">
       </div>
       <div class="col-6 col-md-3 pr-0 mt-2">
         <input type="number" class="form-control" name="price_min" style="display:inline;width:70%" placeholder="0원"><span style="display:inline-block;width:30%;text-align:center;"> ~ </span>
       </div>
       <div class="col-6 col-md-3 pl-0 mt-2">
         <input type="number" class="form-control" name="price_max" style="display:inline;width:70%" placeholder="999999원"><span style="display:inline-block;width:30%;text-align:center;">까지</span>
       </div>
       <div class="col-12 col-md-2 mt-2" style="text-align:center;">
         <button class="btn btn-primary" style="width:100%;">검색</button>
       </div>
     </div>
   </form>
   <ul id="list_item" class="row container-fluid p-0 m-0 mt-2">
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
     <li class="col-6 col-md-4 p-3 m-0">
       <img src="/JSP_Eclipse/image/sampleT.png" alt="샘플티셔츠" style="width:100%">
       <div class="item_name">SAMPLE T</div>
       <div class="item_price">20,000￦</div>
     </li>
   </ul>
   <div style="text-align:center;">
     <ul class="pagination" style="display:inline-flex">
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
        <li class="page-item active"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
      </ul>
    </div>
  </div>
</div>