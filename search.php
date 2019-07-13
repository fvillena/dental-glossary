<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Búsqueda</title>
</head>
<body>
<div class='container'>
<?php include('header.php'); ?>
    <h2>Búsqueda</h2>

<hr>
    <p>buscando: <b><span id=query></span></b></p>
    <ul id=results>...</ul>
    <script src="jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    var query = "<?php echo $_GET["query"]; ?>"
  </script>
    <script type="text/javascript" src="search.js"></script>
    <?php include('footer.php'); ?>
    </div>
</body>
</html>