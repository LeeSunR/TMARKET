<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div id="nav_header">
		<span style="font-size:24px; font-weight: bold; float:left">T-MARKET</span>
		<i onclick="nav_hide();" class="fa fa-close d-block d-md-none d-xl-none" style="font-size:36px; float:right;"></i>
	</div>
	<div id="nav_login">
		<p style="padding:5px;margin:0px;"><b>'로그아웃'</b> 상태입니다.<br>로그인하여 T-MARKET에 가입하여 더 많은 헤텍을 누리세요</p>
		<div class="row container-fluid p-0 m-0">
			<a class="col-4 login_link" href="member/login.html">로그인</a>
			<a class="col-4 login_link" href="member/signup.html">회원가입</a>
			<a class="col-4 login_link" href="member/forget.html">계정찾기</a>
		</div>
	</div>
	<div id="nav_menu">
		<span style="font-size:16px; font-weight: bold;">카테고리</span>
		<ul>
			<li>SHOP
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="shop/list.html">SHOW ALL</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="shop/list.html">BEST</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="shop/list.html">SALE</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="shop/list.html">NEW</a>
					</li>
				</ul>
			</li>

			<li>고객센터
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="service/notice.html">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="service/faq.html">FAQ</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="service/qna.html">QnA</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="service/map.html">오시는 길</a>
					</li>
				</ul>
			</li>

			<!--로그인해야 보여지는 메뉴입니다.-->
			<li>마이페이지
				<ul class="nav flex-column">
					<li class="nav-item">
                  	  <a class="nav-link p-0" href="mypage/myorder.html">주문조회</a>
					</li>
					<li class="nav-item">
                  	  <a class="nav-link p-0" href="mypage/refund.html">반품/환불</a>
					</li>
					<li class="nav-item">
                	    <a class="nav-link p-0" href="mypage/myinfo.html">회원정보변경</a>
					</li>
				</ul>
			</li>

			<!--관리자만 보여지는 메뉴입니다.-->
			<li>관리자
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="admin/member.html">회원관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="admin/order.html">주문관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="admin/item.html">상품관리</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>