function setCookie(name,value,d){

document.cookie=name+'='+value+'; path=/'+(d?'; expires='+(function(t){t.setDate(t.getDate()+d);return t})(new Date).toGMTString():'');

}

function getCookie(name) {
	  var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	  return value? value[2] : null;
};

	
function addCart(tid){
  var cart = getCookie("cart");
  if(cart=='') cart = 'null';
  var old_json = JSON.parse(cart);
  var obj;
  var new_json;
  if(old_json==null){
	  new_json = '[{"tid":"'+tid+'","size":"'+$(".view_size_select").val()+'","color":"'+$('input[name="color"]:checked').val()+'","qty":'+$("#qty").val()+'}]';
	  new_json = JSON.parse(new_json);
  }
  else{
	  new_json = '{"tid":"'+tid+'","size":"'+$(".view_size_select").val()+'","color":"'+$('input[name="color"]:checked').val()+'","qty":'+$("#qty").val()+'}';
	  new_json = JSON.parse(new_json);
	  
	  old_json.push(new_json);
	  new_json = old_json;
  }
  setCookie("cart",JSON.stringify(new_json),"4");

  alert("장바구니에 추가되었습니다.");
  showCart();
}

function showCart(){
	var price_sum = 0;
	$("#cart_list>ul").html("");
	var cart = getCookie("cart");
	var cart_obj = JSON.parse(cart);
	for(var i=0;i<cart_obj.length;i++){
		var tid = cart_obj[i]["tid"];
		var size = cart_obj[i]["size"];
		var color = cart_obj[i]["color"];
		var qty = cart_obj[i]["qty"];
	    $.get("cart_list.jsp",{"tid":tid,"size":size,"color":color,"qty":qty},function(html){
	    	$("#cart_list>ul").append(html);
	    	
	    	var cart_qty = parseInt($(html).find(".cart_qty").text());
	    	for(var i=0;i<cart_qty;i++){
		    	price_sum += parseInt($(html).find(".cart_price").text());
		    	$("#cart_total").text(price_sum);
	    	}
	    });
	}
}

function delCart(){
  alert("DELCART");
}

function order(){
  location.href="/JSP_Eclipse/index.jsp?p=shop/payment.jsp";
}

function payment(){
  alert("payment");
  var cart = getCookie("cart");
  
  $("#paymentinfo").append("<input type='text' name='cart' value='"+cart+"'>");
}

function paymentListShow(){
	var price_sum = 0;
	alert("paymentListShow");
	var cart = getCookie("cart");
	var cart_obj = JSON.parse(cart);
	
	for(var i=0;i<cart_obj.length;i++){
		var tid = cart_obj[i]["tid"];
		var size = cart_obj[i]["size"];
		var color = cart_obj[i]["color"];
		var qty = cart_obj[i]["qty"];
	    $.get("shop/payment_list.jsp",{"tid":tid,"size":size,"color":color,"qty":qty},function(html){
	    	$("#payment_cart_list").append(html);
	    	
	    	var cart_qty = parseInt($(html).find(".payment_cart_qty").text());
	    	for(var i=0;i<cart_qty;i++){
		    	price_sum += parseInt($(html).find(".payment_cart_price").text());
		    	$("#payment_cart_total").text(price_sum);
	    	}
	    });
	}
}

function emptyCart(){
  setCookie("cart","","-1");
  $("#cart_total").text("0");
  showCart();
}