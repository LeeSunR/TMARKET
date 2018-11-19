<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="main_contents">
  <!--TODO 이곳에 페이지 내용을 작성합니다.-->
  <script>
    function passCheck(form){
      if ($("#new_password").val()!=$("#new_confirm_password").val()||$("#new_confirm_password").val()==""){
        alert("새로운 페스워드가 일치하지 않습니다.");
        return false;
      }
      return true;
    }
  </script>

  <div class="m-5">
    <h2>회원정보변경</h2>

    <!--페스워드 변경-->
    <h4>비밀번호</h4>
    <form onsubmit="return passCheck(this);" action="#" method="GET">
      <input type="password" name="password" class="form-control input-lg" placeholder="기존 비밀번호" />
      <br>
      <input id="new_password" type="password" name="new_password" class="form-control input-lg" placeholder="새로운 비밀번호" />
      <br>
      <input id="new_confirm_password" type="password" name="new_confirm_password" class="form-control input-lg" placeholder="비밀번호 재입력" />
      <br>
      <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">변경</button>
    </form>
    <br>
    <h4>기타정보</h4>
    <form action="#" method="GET">
      <input type="password" name="password" class="form-control input-lg" placeholder="패스워드" />
      <br>
      <div class="row">
        <div class="col-xs-6 col-md-6">
          <input type="text" name="firstname" class="form-control input-lg" placeholder="성" />
        </div>
        <div class="col-xs-6 col-md-6">
          <input type="text" name="lastname" class="form-control input-lg" placeholder="이름" />
        </div>
      </div>
      <br>
      <input type="text" name="email" class="form-control input-lg" placeholder="이메일" />
      <br>
      <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">변경</button>
    </form>
  </div>
</div>