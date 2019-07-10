$(document).ready(function() {
    $.ajax({
        url: "api.php",
        data: {
          'action': 'viewTerm',
          'id': id
        },
        type: 'GET',
        success: function( result ) {
          $( "#concept" ).html( result.concept );
          $( "#description_short" ).html( result.description_short );
          document.title = result.concept;
        }
      });
    $.ajax({
      url: "api.php",
      data: {
        'action': 'randomTerms',
        'n': 5
      },
      type: 'GET',
      success: function( result ) {
        $("#more").html('');
        $.each(result, function (index, value) {
          $("#more").append("<li>" + "<a href=term.php?id=" + value.id + ">" + value.concept + "</a>" + "</li>");
      });
      }
    });
});