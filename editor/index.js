$(document).ready(function() {
    $.ajax({
        url: "../api.php",
        data: {
            'action': 'terms'
        },
        async: true,
        type: 'GET',
        success: function(result) {
            $("#terms").html('');
            $.each(result, function(index, value) {
                $("#terms").append("<tr><td>" +value.name+  "<td><div class='btn-group' role='group'><a href='../term.php?id=" + value.id + "' type='button' class='btn btn-primary'><i class='fas fa-eye'></i></a><a href='term.php?id=" + value.id + "' type='button' class='btn btn-primary'><i class='fas fa-edit'></i></a><a href='?delete=term&id="+value.id+"' type='button' class='btn btn-danger'><i class='fas fa-trash'></i></a></div></td></tr>");
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
                $("#categories").append("<tr><td>" + value.name + "</td><td><div class='btn-group' role='group'><a href='../term.php?id=" + value.id + "' type='button' class='btn btn-primary'><i class='fas fa-eye'></i></a><a href='term.php?id=" + value.id + "' type='button' class='btn btn-primary'><i class='fas fa-edit'></i></a><a href='' type='button' class='btn btn-danger'><i class='fas fa-trash'></i></a></div></td></tr>");
            });
        }
    });
});