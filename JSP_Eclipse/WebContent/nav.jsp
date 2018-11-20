<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");

	String idt = (String)session.getAttribute("idt");
	String grade = (String)session.getAttribute("grade");
%>
    
    
	<div id="nav_header">
		<span style="font-size:24px; font-weight: bold; float:left">T-MARKET</span>
		<i onclick="nav_hide();" class="fa fa-close d-block d-md-none d-xl-none" style="font-size:36px; float:right;"></i>
	</div>
	
	<div id="nav_login">
	<%if(idt==null){ %>
		<p style="padding:5px;margin:0px;"><b>'로그아웃'</b> 상태입니다.<br>로그인하여 T-MARKET에 가입하여 더 많은 헤텍을 누리세요</p>
		<%}else
			out.println(idt+"님 환영합니다.");%>
		<div class="row container-fluid p-0 m-0">
		
			<%if(idt==null){%>
			<a class="col-4 login_link" href="/JSP_Eclipse/index.jsp?p=member/login.jsp">로그인</a>
			<a class="col-4 login_link" href="/JSP_Eclipse/index.jsp?p=member/signup.jsp">회원가입</a>
			<a class="col-4 login_link" href="/JSP_Eclipse/index.jsp?p=member/forget.jsp">계정찾기</a>
			<%}else{%>
			
			<a class="col-6 login_link" href="/JSP_Eclipse/member/logout.jsp">로그아웃</a>
			<a class="col-6 login_link" href="/JSP_Eclipse/index.jsp?p=mypage/myinfo.jsp">회원정보변경</a>
			
			<%}%>
			
		</div>
	</div>
	<div id="nav_menu">
		<span style="font-size:16px; font-weight: bold;">카테고리</span>
		<ul>
			<li>SHOP
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=shop/list.jsp">SHOW ALL</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=shop/list.jsp">BEST</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=shop/list.jsp">SALE</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=shop/list.jsp">NEW</a>
					</li>
				</ul>
			</li>

			<li>고객센터
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=service/notice.jsp">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=service/faq.jsp">FAQ</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=service/qna.jsp">QnA</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=service/map.jsp">오시는 길</a>
					</li>
				</ul>
			</li>

			<%
				if(idt!=null){
			%>
			<!--로그인해야 보여지는 메뉴입니다.-->
			<li>마이페이지
				<ul class="nav flex-column">
					<li class="nav-item">
                  	  <a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=mypage/myorder.jsp">주문조회</a>
					</li>
					<li class="nav-item">
                  	  <a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=mypage/refund.jsp">반품/환불</a>
					</li>
					<li class="nav-item">
                	    <a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=mypage/myinfo.jsp">회원정보변경</a>
					</li>
				</ul>
			</li>
			<%
				}
				if(grade!=null && grade.equals("admin")) {
			%>
			<!--관리자만 보여지는 메뉴입니다.-->
			<li>관리자
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=admin/member.jsp">회원관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=admin/order.jsp">주문관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link p-0" href="/JSP_Eclipse/index.jsp?p=admin/item.jsp">상품관리</a>
					</li>
				</ul>
			</li>
			<%
				}
			%>
		</ul>
	</div>