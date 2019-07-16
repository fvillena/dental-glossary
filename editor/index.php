<?php

if (isset($_GET['delete'])) {
    include('../controller.php');
    if ($_GET['delete'] == 'term') {
        deleteTerm($_GET['id'],$connection);
    };
    if ($_GET['delete'] == 'category') {
        deleteCategory($_GET['id'],$connection);
    }
    
    
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Editor</title>
</head>

<body>
    <div class="container">
        <?php include('../header.php'); ?>
        <h2>Términos</h2>
        <p><a href="term.php?id=NULL" type="button" class="btn btn-success"><i class="fas fa-plus"></i></a></p>
        <table class="table" id=terms_table>
            <thead>
                <tr>
                    <td>
                        Término
                    </td>
                    <td>
                        Acciones
                    </td>
                </tr>
            </thead>
            <tbody id=terms>

            </tbody>
        </table>
        <!-- <ul id=terms>...</ul> -->
        <h2>Categorías</h2>
        <p><a href="category.php?id=NULL" type="button" class="btn btn-success"><i class="fas fa-plus"></i></a></p>
        <table class="table">
            <thead>
                <tr>
                    <td>
                        Término
                    </td>
                    <td>
                        Acciones
                    </td>
                </tr>
            </thead>
            <tbody id=categories>

            </tbody>
        </table>
        <!-- <ul id=categories>...</ul> -->
        <script src="../jquery-3.3.1.min.js"></script>

        <script type="text/javascript" src="index.js"></script>

        <?php include('../footer.php'); ?>
    </div>
    </div>
</body>

</html>