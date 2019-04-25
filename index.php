<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script>
  <title>Reporte Tiempo Muerto</title>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

  <?php
    if (isset($_SESSION['loggedin'])) {
    }
    else {
        echo "<div class='alert alert-danger mt-4' role='alert'>
        <h4>No has iniciado sesion aun.</h4>
        <p><a href='login.html'>Iniciar Sesion</a></p></div>";
        exit;
    }
    $now = time();
    if ($now > (isset($_SESSION['expire']))) {
        session_destroy();
        echo "<div class='alert alert-danger mt-4' role='alert'>
        <h4>Your session has expire!</h4>
        <p><a href='login.php'>Login Here</a></p></div>";
        exit;
        }
  ?>
<div id ="wrapper" class="toggled">
  <div class="d-flex" id="wrapper" >
    <div class="bg-dark border-right" id="sidebar-wrapper">
      <div class="sidebar-heading text-white"><a href="index.php" class="text-white">Menu</a></div>

      <div class="list-group list-group-flush">
        <div class="btn-group dropright">
          <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Agregar</button>
            <div class="dropdown-menu">
            <a href="#" id="p" class="list-group-item list-group-item-action text-white bg-dark">Agregar Falla</a>
            <a href="#" id="q" class="list-group-item list-group-item-action text-white bg-dark">Agregar UCS</a>
            <a href="#" id="r" class="list-group-item list-group-item-action text-white bg-dark">Agregar Maquinas Virtual</a>
            <a href="#" id="s" class="list-group-item list-group-item-action text-white bg-dark">Registro Incidentes</a>
            </div>

        </div>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Cerrar</button>
          <div class="dropdown-menu">
          <a href="#" id="ctick" class="list-group-item list-group-item-action text-white bg-dark">Tickets de Fallas</a>
          <a href="#" id="q" class="list-group-item list-group-item-action text-white bg-dark">Tickets de Incidentes</a>
          </div>
        </div>
        <!-- <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Mostrar</button>
          <div class="dropdown-menu">
          <a href="#" class="list-group-item list-group-item-action text-white bg-dark">tickets de Fallas</a>
          <a href="#"  class="list-group-item list-group-item-action text-white bg-dark">Tabla de incidentes</a>
          </div>
        </div> -->
        <a href="#" class="list-group-item list-group-item-action text-white bg-dark">Graficas</a>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Inventarios</button>
          <div class="dropdown-menu">
          <a href="#" class="list-group-item list-group-item-action text-white bg-dark">Equipo Cisco</a>
          <a href="#"  class="list-group-item list-group-item-action text-white bg-dark">Equipo Foxconn</a>
          </div>
        </div>
      </div>
    </div>
    <div id="page-content-wrapper">
        <nav class="navbar navbar-dark bg-dark sticky-top">

          <button class="btn btn-info" id="menu-toggle">Accionar Menu</button>
          <a class="text-white "> <?php echo "Bienvenido ".$_SESSION['name']." ". $_SESSION['lastname'];?></a>
          <a href="logout.php" class="btn btn-info" role="button" aria-pressed="true">Cerrar Sesion</a>

        </nav>
      <div class="container-fluid">
        <h1 class="mt-4"> Ingenieria de Pruebas </h1><br>
        <div id="result">
        </div>

        <div class="chart">
          ​<img src="images/chart.jpg" class="rounded mx-auto d-block" alt="...">

        </div>
      </div>
    </div>
  </div>
</div>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function(){
       $("#p").on("click",function(){
        $("#result").load("agregarfallas.php");
        });

        $("#q").on("click",function(){
         $("#result").load("agregarucs.php");
         });

         $("#r").on("click",function(){
          $("#result").load("agregarvm.php");
          });
          $("#s").on("click",function(){
           $("#result").load("agregarincidentes.php");
           });

          $("#ctick").on("click",function(){
           $("#result").load("query.php");
           });
      });
  </script>

  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
</body>

</html>
