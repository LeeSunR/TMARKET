function get_item_list(kind,obj){
    $.get("home_item_list.jsp",{"sel":kind},function(html){
    	$("#list_item").html(html);
    });
    
    $(obj).siblings("button").removeClass("list_choice_active");

    $(obj).addClass("list_choice_active");
}

get_item_list("new",null);