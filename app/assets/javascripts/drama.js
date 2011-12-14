// drama js

$(document).ready(function() {
    // set up link for new performance
    $("a.new-performance-link").colorbox({inline:true, width:"50%"});
    
    // add in line on open event
    $("a.new-performance-link").colorbox({
        onOpen:function() { 
            lineid = $(this).data("line");
            $("#line_id").val(lineid); // pass line id
            // copy line and character to dialog, then show
            $("#new-performance .character").html($("#line-character-" + lineid).html());
            $("#new-performance .line").html($("#line-" + lineid).html());
            $("#new-performance").show();
        },
      	onClosed:function() {
            $("#new-performance").hide();  	  
        },
    });
});
