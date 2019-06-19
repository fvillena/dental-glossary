$(document).ready(function() {
    document.title = query;
    $( "#query" ).html( query );
    $.ajax({
      url: "api.php",
      data: {
        'action': 'search',
        'query': query
      },
      type: 'GET',
      success: function( result ) {
        $("#results").html('');
        
        if (result.length > 0) {
            $.each(result, function (index, value) {
                $("#results").append("<li>" + "<a href=view.php?id=" + value.id + ">" + value.concept + "</a>" 
                + "<ul><li>" + value.description + "</li></ul>"
                + "</li>");
            });
        } else {
            $("#results").html('No se encontraron resultados para ' + query)
        }
        
      }
    });
});