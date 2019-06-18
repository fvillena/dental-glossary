$(document).ready(function() {
    $.ajax({
        url: "api.php?action=viewTerm&id="+id,
        data: {
          'id': id
        },
        type: 'GET',
        success: function( result ) {
          $( "#concept" ).html( result.concept );
          $( "#description" ).html( result.description );
        }
      });
});