// drama js

$(document).ready(function(){
  $("a.new-performance-link").click(function(e) {
    $("#new-performance").css("display", "block"); // show form
    $("#line_id").val($(this).data("line")); // pass line id
    e.preventDefault();
  });
});
