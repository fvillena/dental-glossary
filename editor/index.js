$(document).ready(function() {
    $.ajax({
        url: "../api.php",
        data: {
            'action': 'terms'
        },
        type: 'GET',
        success: function(result) {
            $("#terms").html('');
            $.each(result, function(index, value) {
                $("#terms").append("<li>" + "<a href=term.php?id=" + value.id + ">" + value.name + "</a>" + "</li>");
            });
        }
    });
    $.ajax({
        url: "../api.php",
        data: {
            'action': 'categories'
        },
        type: 'GET',
        success: function(result) {
            $("#categories").html('');
            $.each(result, function(index, value) {
                $("#categories").append("<li>" + "<a href=category.php?id=" + value.id + ">" + value.name + "</a>" + "</li>");
            });
        }
    });
});