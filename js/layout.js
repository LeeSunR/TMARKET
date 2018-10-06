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
  var window_height = $(window).height();
  var nav_height = $("#nav_header").height()+$("#nav_login").height()+$("#nav_menu").height()+25;
  var cart_height = $("#cart_header").height()+$("#cart_list").height()+25;

  if(nav_height>cart_height && window_height<nav_height)
    $("#cart").css("height",nav_height+"px");
  else if(window_height>cart_height)
      $("#cart").css("height",window_height+"px");
  else
    $("#cart").css("height",cart_height+"px");

  if(window_height>nav_height)
    $("#nav").css("height",window_height+"px");
  else
    $("#nav").css("height",nav_height+"px");
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
