function setCookie(cookie_name, cookie_value, days) {
  document.cookie = cookie_name + '=' + cookie_value;
}

function getCookie(name) {
	  var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	  return value? value[2] : null;
};

	
function addCart(tid){
  var cart = getCookie("cart");
  var old_json = JSON.parse(cart);
  var obj;
  var new_json;
  if(old_json==null){
	  new_json = '[{"tid":"'+tid+'","size":"'+$(".view_size_select").val()+'","color":"'+$('input[name="color"]:checked').val()+'"}]';
	  new_json = JSON.parse(new_json);
  }
  else{
	  new_json = '{"tid":"'+tid+'","size":"'+$(".view_size_select").val()+'","color":"'+$('input[name="color"]:checked').val()+'"}';
	  new_json = JSON.parse(new_json);
	  
	  old_json.push(new_json);
	  new_json = old_json;
  }
  alert(new_json);
  alert(JSON.stringify(new_json));
  setCookie("cart",JSON.stringify(new_json));

  alert("장바구니에 추가되었습니다.");
}

function delCart(){
  alert("DELCART");
}

function order(){
  location.href="/JSP_Eclipse/index.jsp?p=shop/payment.jsp";
}

function payment(){
  alert("payment");
}

function emptyCart(){
  alert("카트비우기");
  setCookie("cart","hahah");
}
