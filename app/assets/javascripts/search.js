function showResult(str){
$("#results").load("/search/twitter.json?utf8=✓&search="+str,true);
}