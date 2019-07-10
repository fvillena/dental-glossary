<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Categoría</title>
</head>
<body>
<div class='container-fluid'>
<?php include('header.php'); ?>
<form class="form-inline" action="search.php" method="get">

  <input class='form-control' type="text" name="query"> 

  <input class='btn btn-primary' type="submit" value="Buscar">

</form>
<hr>
    <h2 id=category>...</h2>
    <p id=description>...</p>
    <h3>Conceptos</h3>
    <ul id=concepts>...</ul>
    <script src="jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    var id = "<?php echo $_GET["id"]; ?>"
  </script>
    <script type="text/javascript" src="category.js"></script>
    <script>
$(document).ready(function(){
  $('body').tooltip({
    selector: '[data-toggle="tooltip"]'
});   
});
</script>
    <?php include('footer.php'); ?>
    </div>
</body>
</html>