function showResult(str){
$("#results").load("/search/twitter.json?utf8=✓&search="+str,true);
}

function clickPage(query, max_id, page){
showResult(query+"&max_id="+max_id+"&page="+page);
}

$(document).ready(function() {
  $("#JSButton").click(function() {  
    var str = $("#instant_search").val();
    showResult(str)
    return false;
  });  
}); 