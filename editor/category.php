<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="tinymce/tinymce.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.0.11/jquery.tinymce.min.js"></script> -->
<script>tinymce.init({
    selector:'#description',
    language: 'es',
    menubar: 'edit insert view format table tools',
    plugins: "image link",
    toolbar: 'undo redo | styleselect | bold italic | link image'

    });</script>
</head>

<body>
<div class="container">
    <?php include('../header.php'); ?>
    
        <form id="category_form">
            <div class="form-group">
                <label for="id">ID</label>
                <input name="id" class="form-control" id="id" type="text" readonly>
            </div>
            <div class="form-group">
                <label for="name">Nombre</label>
                <input name="name" type="text" class="form-control" id="name">
            </div>
            <div class="form-group">
                <label for="description">Descripción</label>
                <textarea name="description" class="form-control" id="description" rows="2"></textarea>
            </div>

            <div class="form-group">
            <button type="button" class="btn btn-primary" id="send">Enviar</button>
            </div>
        </form>
    </div>
    
    <script src="../jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        var id = "<?php echo $_GET["id"]; ?>"
    </script>
    <script type="text/javascript" src="category.js"></script>


    <?php include('../footer.php'); ?>
    </div>
</body>

</html>