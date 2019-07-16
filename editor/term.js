function getFormData($form){
    var unindexed_array = $form.serializeArray();
    var indexed_array = {};

    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });

    return indexed_array;
}
  $(document).ready(function () {
    $("#send").on('click',function() {
      tinymce.triggerSave();
        var $form = $("#term_form");
        var data = getFormData($form);
        $.ajax({
            url: "../api.php?action=addEditTerm",
            data: JSON.stringify(data),
            type: "POST",
            success: function (result) {
              window.location.replace("term.php?id="+result.id);
            }
        });
          
      });
    if (id != 'NULL') {
      var category_id;
    $.ajax({
      url: "../api.php",
      data: {
        'action': 'viewTerm',
        'id': id
      },
      type: 'GET',
      success: function (result) {
        $("#id").val(result.id);
        category_id = result.category_id;
        $("#name").val(result.name);
        $("#description_short").val(result.description_short);
        $("#description_long").val(result.description_long);
        document.title = result.name;
      },
      complete: function () {
        $.ajax({
            url: "../api.php",
            data: {
                'action': 'categories'
            },
            type: 'GET',
            success: function(result) {
                $.each(result, function(index, value) {
                    $("#category").append("<option value="+value.id+">" + value.name + "</option>");
                });
            },
            complete: function () {
                $("#category").val(category_id);
               
            }
        });
      }
    });
    } else {
      $.ajax({
        url: "../api.php",
        data: {
            'action': 'categories'
        },
        type: 'GET',
        success: function(result) {
            $.each(result, function(index, value) {
                $("#category").append("<option value="+value.id+">" + value.name + "</option>");
            });
        },
        complete: function () {
            $("#category").val(category_id);
           
        }
    });
    $("#id").val('NULL');
    }
    
    
  });
  