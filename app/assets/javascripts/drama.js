// drama js

$(document).ready(function(){
  $("a.new-performance-link").click(function(e) {
    $("#line_id").val($(this).data("line")); // pass line id
    $("#new-performance").dialog( "open" );
    e.preventDefault();
  });
 
  $("#new-performance").dialog({
      autoOpen: false,
      height: 300,
      width: 350,
      modal: true,
      draggable: false,
      resizable: false,
      // buttons: {
      //   Cancel: function() {
      //       $( this ).dialog( "close" );
      //   }         
      // },
  });  
});
