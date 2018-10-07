$(document).ready(function(){
  layoutInit();
});

$(window).resize(function(){
  layoutInit();
  if($(window).width()>=768){
    nav_hide();
    cart_hide();
  }
  if($(window).width()>=1200){
    cart_hide();
  }
});

function layoutInit(){
  $("#cart").css("height",0+"px");
  $("#nav").css("height",0+"px");
  
  var window_height = $(window).height();
  var nav_height = $("#nav_header").height()+$("#nav_login").height()+$("#nav_menu").height()+25;
  var cart_height = $("#cart_header").height()+$("#cart_list").height()+25;
  var page_height = $("body").prop('scrollHeight');
  var side_height;

  if(window_height>=nav_height && window_height >= cart_height && window_height >= page_height)
    side_height = window_height;

  else if(nav_height>=window_height && nav_height >= cart_height && nav_height >= page_height)
    side_height = nav_height;

  else if(cart_height>=nav_height && cart_height >= window_height && cart_height >= page_height)
    side_height = cart_height;

  else if(page_height>=nav_height && page_height >= cart_height && page_height >= window_height)
    side_height = page_height;
  $("#cart").css("height",side_height+"px");
  $("#nav").css("height",side_height+"px");
  sideBackInit();
}

function nav_show(){
  $("#side_back").show();
  $("#nav").addClass("d-block");
  $("#nav").removeClass("d-none");
  $("#nav").css("z-index", "2");
  $("#nav").css("width", "280px");
  $("#nav").css("position", "absolute");
  $("#nav").css("left", "-280px");
  $("#nav").animate({ left : "0px" },200);
  $("#nav").css("top", "0px");
  layoutInit();
}

function nav_hide(){
  $("#nav").css("cssText","");
  $("#nav").addClass("d-none");
  $("#nav").removeClass("d-block");
  $("#nav").css("z-index", "0");
  $("#side_back").hide();
  layoutInit();
}

function cart_show(){
  $("body").css("overflow-x","hidden");
  $("#side_back").show();
  $("#cart").addClass("d-block");
  $("#cart").addClass("d-md-block");
  $("#cart").removeClass("d-none");
  $("#cart").removeClass("d-md-none");
  $("#cart").css("z-index", "2");
  $("#cart").css("width", "280px");
  $("#cart").css("position", "absolute");
  $("#cart").css("right", "-280px");
  $("#cart").animate({ right : "0px" },200);
  $("#cart").css("top", "0px");
  layoutInit();
  setTimeout(function(){$("body").css("overflow-x","auto")}, 200);
}

function cart_hide(){
  layoutInit();
  $("#cart").css("cssText","");
  $("#cart").addClass("d-none");
  $("#cart").addClass("d-md-none");
  $("#cart").removeClass("d-block");
  $("#cart").removeClass("d-md-block");
  $("#cart").css("z-index", "0");
  $("#side_back").hide();
}

function sideBackInit(){
  $("#side_back").css("width",$(window).width()+"px");
  $("#side_back").css("height",$(window).height()+"px");
}
