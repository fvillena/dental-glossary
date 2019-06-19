<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Concepto</title>
</head>
<body>
<?php include('header.php'); ?>
<form action="search.php" method="get">
  Buscar: <input type="text" name="query"> 
  <input type="submit" value="Submit">
</form>
<hr>
    <h2 id=concept></h2>
    <p id=description></p>
    <h3>Ver más</h3>
    <ul id=more></ul>
    <script src="jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    var id = "<?php echo $_GET["id"]; ?>"
  </script>
    <script type="text/javascript" src="view.js"></script>
</body>
</html>