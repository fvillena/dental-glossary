$(document).ready(function() {
    $.ajax({
        url: "api.php",
        data: {
          'action': 'viewCategory',
          'id': id
        },
        type: 'GET',
        success: function( result ) {
          $( "#category" ).html( result.name );
          $( "#description" ).html( result.description );
          document.title = result.name;
          $("#concepts").html('');
          $.each(result.terms, function (index, value) {
            $("#concepts").append("<li>" + "<a href=term.php?id=" + value.id + " data-toggle='tooltip' title='" + value.description_short + "'>" + value.concept + "</a>" + "</li>");
        });
        }
      });
});