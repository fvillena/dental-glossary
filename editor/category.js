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
        var $form = $("#category_form");
        var data = getFormData($form);
        $.ajax({
            url: "../api.php?action=addEditCategory",
            data: JSON.stringify(data),
            type: "POST",
            success: function (result) {
              window.location.replace("category.php?id="+result.id);
            }
        });
          
      });
    if (id != 'NULL') {
    $.ajax({
      url: "../api.php",
      data: {
        'action': 'viewCategory',
        'id': id
      },
      type: 'GET',
      success: function (result) {
        $("#id").val(result.id);
        $("#name").val(result.name);
        $("#description").val(result.description);
        document.title = result.name;
      },
      complete: function () {
        
      }
    });
    } else {
    $("#id").val('NULL');
    }
    
    
  });
  