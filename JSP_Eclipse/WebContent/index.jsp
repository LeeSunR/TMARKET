<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String content = request.getParameter("p");
	if(content==null) content = "home.jsp";
%>

<html>
	<head>
		<meta charset="utf-8">
		<title>T MARKET</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/layout.js"></script>
		<script src="js/cart.js"></script>
	    <link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link rel="stylesheet" href="css/layout.css">
	</head>
	<body>
		<div id="row" class="row container-fluid p-0 m-0">
			<!-- 왼쪽 메뉴 -->
			<div id="nav" class="d-none d-md-block col-md-3 d-xl-block col-xl-2 p-0">
				<jsp:include page="nav.jsp" flush="false"/>
			</div>

			<!-- 중앙 메인 컨텐츠 -->
			<div id="main" class="col-12 col-md-9 d-xl-block col-xl-8 p-0">
				<div id="main_header" class="navbar bg-dark navbar-dark">
				<!--메뉴 버튼-->
					<span>
						<button onclick="nav_show()" class="navbar-toggler d-block d-md-none d-xl-none" type="button">
							<span class="navbar-toggler-icon"></span>
						</button>
					</span>
		
					<!--타이틀-->
					<a class="navbar-brand p-0" href="#" style="font-size:24px;font-weight: bold;" >T-MARKET</a>
		
					<!--카트 버튼-->
					<span>
						<button onclick="cart_show()" class="navbar-toggler d-block d-md-block d-xl-none" type="button">
							<i class="fa fa-shopping-cart" style="font-size:30px;"></i>
						</button>
					</span>
		        </div>
		        
		        <!-- 메인 컨텐츠 -->
				<jsp:include page="<%=content %>" flush="false"/>
				
				<!-- 푸터 -->
				<div id="main_footer">
					© 2018 by T-MARKET.
				</div>
			</div>
			
			<!-- 장바구니 -->
			<div id="cart" class="d-none d-md-none d-xl-block col-xl-2 p-0">
				<jsp:include page="cart.jsp" flush="false"/>
			</div>
			
		</div>
	</body>
</html>