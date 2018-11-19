<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="main_contents">
   <div class="m-5">
     <h4>ID 찾기</h4>
     <br>
       <form onsubmit="return termsCheck(this);" action="#" method="GET">
        <input type="text" name="name" class="form-control input-lg" placeholder="이름" />
        <br>
        <input id="password" type="password" name="UserBirthday" class="form-control input-lg" placeholder="생년월일 8자리" />
        <br>
        <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">찾기</button>
      </form>
      <br><br>
      <h4>PW 찾기</h4>
      <br>
      <form onsubmit="return termsCheck(this);" action="#" method="GET">
        <input type="text" name="id" class="form-control input-lg" placeholder="아이디" />
        <br>
        <input type="text" name="name" class="form-control input-lg" placeholder="이름" />
        <br>
        <input id="password" type="password" name="UserBirthday" class="form-control input-lg" placeholder="생년월일 8자리" />
        <br>
        <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">찾기</button>
      </form>
  </div>
</div>