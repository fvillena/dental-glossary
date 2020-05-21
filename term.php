<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <style>
#concept-content {background-color: #86F9F9;
padding: 10pt;
border-radius: 15px}
</style>
  <title>Concepto</title>
</head>

<body>
  <div class='container'>
    <?php include('header.php'); ?>

    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" id="category"><a href="#">...</a></li>
        <li class="breadcrumb-item active concept" aria-current="page">...</li>
      </ol>
    </nav>
    <div id="concept-content">
    <div class="btn-group" role="group" id="switcher">
      <button type="button" class="btn btn-primary" id="switcher-small"><i class="fas fa-minus"></i> <i class="fas fa-font"></i></button>
      <button type="button" class="btn btn-primary" id="switcher-large"><i class="fas fa-plus"></i> <i class="fas fa-font"></i></button>
      </div>  
      <hr>
      <h2 class=concept>...</h2>
      <p class="resizeable" id=description_short>...</p>
      <p class="resizeable" id=description_long>...</p>
    </div>
    <br>
    <div id="view-more">
      <h3>Ver más</h3>
      <ul id=more>...</ul>
    </div>
    <script src="jquery-3.3.1.min.js"></script>
    <script src="jquery-doubleTap.js"></script>
    <script type="text/javascript">
      var id = "<?php echo $_GET["id"]; ?>"
    </script>
    <script type="text/javascript" src="term.js"></script>
    <script>
      $(document).ready(function() {
        $('body').tooltip({
          selector: '[data-toggle="tooltip"]'
        });
      });
    </script>
    <?php include('footer.php'); ?>
  </div>
</body>

</html>