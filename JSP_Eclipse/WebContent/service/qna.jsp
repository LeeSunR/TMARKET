<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
  <div class="m-5">
    <form action="index.html" method="post">
      <h2> QnA </h2><br>
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      <label for="name">Your Name:</label>
      <input type="name" class="form-control" id="name" placeholder="Enter Your Name" name="name">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="15" id="comment"></textarea>
      <div style="text-align:right; margin-top:15px;">
        <button type="button" class="btn btn-primary">전송</button>
      </div>
    </form>
  </div>
  <!--클릭하면 관리자 메일로 보내지게 함 form action=""안에 변경.-->
</div>