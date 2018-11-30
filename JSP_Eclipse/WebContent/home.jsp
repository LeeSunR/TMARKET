<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <div id="main_contents">
          <link rel="stylesheet" href="css/home.css">
          <div id="slide" class="row container-fluid p-0 m-0">
            <div class="home_slide_item col-6 col-md-6 col-xl-4 p-1 m-0">
              <div id="demo" class="carousel slide" data-ride="carousel" data-interval="7000">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="image/home/slide_1/slide_1.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_1/slide_2.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_1/slide_3.jpg" style="width:100%" alt="">
                  </div>
                </div>
              </div>
            </div>

            <div class="home_slide_item col-6 col-md-6 col-xl-4 p-1 m-0">
              <div id="demo" class="carousel slide" data-ride="carousel" data-interval="3000">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="image/home/slide_2/slide_1.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_2/slide_2.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_2/slide_3.jpg" style="width:100%" alt="">
                  </div>
                </div>
              </div>
            </div>

            <div class="home_slide_item col-12 col-md-12 col-xl-4 p-1 m-0">
              <div id="demo" class="carousel slide" data-ride="carousel" data-interval="5000">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="image/home/slide_3/slide_1.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_3/slide_2.jpg" style="width:100%" alt="">
                  </div>
                  <div class="carousel-item">
                    <img src="image/home/slide_3/slide_3.jpg" style="width:100%" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div id="t_list">
            <div id="list_choice" class="row container-fluid p-0 m-0">
              <button class="col-4 list_choice_active">NEW</button>
              <button class="col-4">BEST</button>
              <button class="col-4">SALE</button>
            </div>
            <ul id="list_item" class="row container-fluid p-0 m-0 mt-5">
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
              <li class="col-6 col-md-4 p-3 m-0" onclick="location.href='/JSP_Eclipse/index.jsp?p=shop/itemview.jsp'">
                <img src="image/sampleT.png" alt="샘플티셔츠" style="width:100%">
                <div class="item_name">SAMPLE T</div>
                <div class="item_price">20,000￦</div>
              </li>
            </ul>
            <button type="button" style="font-size:16px;background-color:orange;font-weight: bold;" class="btn btn-warning" onclick="location.href='shop/list.html'">MORE</button>
          </div>
        </div>