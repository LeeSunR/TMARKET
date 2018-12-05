<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="main_contents">
  <div class="m-5">
    <form action="/JSP_Eclipse/service/mailSend.jsp" method="post">
      <h2> QnA </h2><br>
      <label for="from">From : </label>
      <input type="from" class="form-control" id="from" placeholder="from" name="from">
      <label for="to">To:</label>
      <input type="to" class="form-control" id="to" placeholder="to" name="to">
      <label for="subject">제목:</label>
      <input type="subject" class="form-control" id="subject" placeholder="subject" name="subject">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="15" id="comment" name="comment"></textarea>
      <div style="text-align:right; margin-top:15px;">
        <button type="submit" class="btn btn-primary">전송</button>
      </div>
    </form>