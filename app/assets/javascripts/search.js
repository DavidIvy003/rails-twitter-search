function showResult(str){
$("#results").load("/search/twitter.json?utf8=✓&search="+str,true);
}

function clickPage(query, max_id, page){
$("#results").load("/search/twitter.json?utf8=✓&max_id="+max_id+"&page="+page+"&search="+query,true);
}