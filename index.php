<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Portaldent</title>
</head>
<body>
<div class='container'>
    <?php include('header.php'); ?>
    
    <!-- <style>
#welcome {background-image: url("bg.jpeg") !important;
color: #000 !important;
font-weight: bold !important}
</style> -->
    <br>
<div id="welcome" class="jumbotron">
  <h1 class="display-4">Bienvenidos!</h1>
  <p class="lead">Portaldent es un página web diseñada para entregar información Odontológica de fácil compresión.</p>
  <hr class="my-4">
  <p>A continuación encontrarás las distintas especialidades disponibles.</p>

</div>
<div class="card-columns">

  <div class="card text-white bg-info">
  <a href="category.php?id=2"><img src="https://www.clinicaeverest.cl/wp-content/uploads/2017/10/Incrustacio%CC%81n-dental.png" class="card-img-top" alt="Rehabilitación Oral"></a>

    <div class="card-body">
      <h5 class="card-title">Rehabilitación Oral</h5>
      <p class="card-text">Área de la odontología que devuelve estética y función cuando se han perdido dientes o parte de ellos.</p>
    </div>
    <div class="card-footer bg-transparent border-success text-center">
    <a href="category.php?id=2" class="btn btn-primary">Ver Más</a>
    </div>

  </div>
  <div class="card text-white bg-info">
  <a href="category.php?id=3"><img src="https://clinicaenrile.es/wp-content/uploads/2019/01/periodoncia3.jpg" class="card-img-top" alt="Periodoncia"></a>

    <div class="card-body">
      <h5 class="card-title">Periodoncia</h5>
      <p class="card-text">Área de la odontología que estudia las enfermedades de las encías y los tejidos que rodean el diente.</p>
      
    </div>
    <div class="card-footer bg-transparent border-success text-center">
    <a href="category.php?id=3" class="btn btn-primary">Ver Más</a>
    </div>


  </div>
  <div class="card text-white bg-info">
  <a href="category.php?id=4"><img src="https://www.lastraclinicadental.com/wp-content/uploads/2014/11/servicios-endodoncia.jpg" class="card-img-top" alt="Endodoncia"></a>

    <div class="card-body">
      <h5 class="card-title">Endodoncia</h5>
      <p class="card-text">Rama de la odontologia que trata la morfologia, fisiologia y patologia del interior del diente y sus tejidos perirradiculares.</p>
    </div>
    <div class="card-footer bg-transparent border-success text-center">
    <a href="category.php?id=4" class="btn btn-primary">Ver Más</a>
    </div>

  </div>
  <div class="card text-white bg-info">
  <a href="category.php?id=5"><img src="https://www.ortodonciafuncional.es/wp-content/uploads/2018/12/odontopediatria.jpg" class="card-img-top" alt="Odontopediatría"></a>

    <div class="card-body">
    <h5 class="card-title">Odontopediatría</h5>
      <p class="card-text">Area de la odontología encargada de tratar a los niños entre 0 a 12 años con enfoque preventivo y ayudando a supervisar un correcto desarrollo dento-facial del menor.</p>
    </div>
    <div class="card-footer bg-transparent border-success text-center">
    <a href="category.php?id=5" class="btn btn-primary">Ver Más</a>
    </div>

  </div>
  <!-- <div class="card text-white bg-info">
  <img src="https://www.erescambio.com/wp-content/uploads/2019/05/books-1673578_640.png" class="card-img-top" alt="Glosario">

    <div class="card-body">
      <h5 class="card-title">Glosario</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer bg-transparent border-success text-center">
    <a href="category.php?id=1" class="btn btn-primary">Ver Más</a>
    </div> -->

  </div>
  <div align='right' ><img class="img-responsive" width=200 src="https://www.donde-estudiar-medicina.es/wp-content/uploads//2018/07/dentista.gif?x40160" alt="">
</div>
<?php include('footer.php'); ?>
</div>
</body>
</html>