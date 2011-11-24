// drama js

$(document).ready(function(){
  $("a.new-performance-link").click(function(e) {
    lineid = $(this).data("line")
    $("#line_id").val(lineid); // pass line id
    // copy line and character to dialog
    $("#new-performance .character").html($("#line-character-" + lineid).html());
    $("#new-performance .line").html($("#line-" + lineid).html());
    //$('.hello').clone().appendTo('.goodbye');
    $("#new-performance").dialog( "open" );
    e.preventDefault();
  });
 
  $("#new-performance").dialog({
      autoOpen: false,
      height: "auto",
      width: 550,
      modal: true,
      position: "top",
      draggable: false,
      resizable: false,
      hide: { effect: "blind", options: {}, speed: 1000 },
      show: { effect: "blind", options: {}, speed: "fast" }
  });  
});
