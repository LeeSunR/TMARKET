function get_item_list(kind){
    $.get("home_item_list.jsp",{"sel":kind},function(html){
    	$("#list_item").html(html);
    });
}

get_item_list("new");