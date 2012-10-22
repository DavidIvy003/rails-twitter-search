// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
    /* Convenience for forms or links that return HTML from a remote ajax call.
    The returned markup will be inserted into the element id specified.
     */
    $('form[data-update-target]').live('ajax:success', function(evt, data) {
        var target = $(this).data('update-target');
        $('#' + target).html(data);
    });
});

function showResult(str){
if (str.length==0)  { 
  document.getElementById("results").innerHTML="";
  return;
  }
if (window.XMLHttpRequest){
  // code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function(){
  if (xmlhttp.readyState==4 && xmlhttp.status==200){
    document.getElementById("results").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","/search/twitter.json?utf8=✓&search="+str,true);
xmlhttp.send();
};