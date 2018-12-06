<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="main_contents">
   <div class="m-5">
     <h4>ID / PASSWORD 찾기</h4>
     <br>
       <form action="/JSP_Eclipse/member/forgetAuth.jsp" method="POST">
        <input type="text" id="idt" name="idt" class="form-control input-lg" placeholder="아이디" />
        <br>
        <input type="text" name="name" class="form-control input-lg" placeholder="이름" />
        <br>
        <input id="birthday" name="birthday" class="form-control input-lg" placeholder="생년월일 8자리 '-' 제외" />
        <br>
        <input id="email" name="email" class="form-control input-lg" placeholder="이메일" />
        <br>
        <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">찾기</button>
      </form>
  </div>
</div>