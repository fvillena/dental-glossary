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
    var $speech = $('#description');
    var defaultSize = $speech.css('fontSize');
    $('#switcher button').click(function() {
      var num = parseFloat($speech.css('fontSize'));
      switch (this.id) {
        case 'switcher-large':
          num *= 1.3;
          break;
        case 'switcher-small':
          num /= 1.3;
          break;
        default:
          num = parseFloat(defaultSize);
      }
      $speech.css('fontSize', num + 'px');
    });
});