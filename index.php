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
  <script src="js/chartbundle.js"></script>
  <script src="js/ajaxjquery.js"></script>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js"></script> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> -->
  <!-- <script src="http://code.jquery.com/jquery-1.4.min.js" type="text/javascript"></script> -->
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
            <a href="#" id="p" class="list-group-item list-group-item-action text-white bg-dark">Fallas</a>
            <a href="#" id="q" class="list-group-item list-group-item-action text-white bg-dark">UCS</a>
            <a href="#" id="r" class="list-group-item list-group-item-action text-white bg-dark">Maquinas Virtuales</a>
            <a href="#" id="s" class="list-group-item list-group-item-action text-white bg-dark">Registro Incidentes</a>
            <a href="#" id="aTec" class="list-group-item list-group-item-action text-white bg-dark">Tecnicos</a>
            </div>

        </div>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Cerrar</button>
          <div class="dropdown-menu">
          <a href="#" id="ctick" class="list-group-item list-group-item-action text-white bg-dark">Fallas Pendientes</a>
          <a href="#" id="cInicidentes" class="list-group-item list-group-item-action text-white bg-dark">Incidentes Pendientes</a>
          </div>
        </div>
        <div class="btn-group dropright">
        <button type="button" class="list-group-item list-group-item-action text-white bg-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Mostrar</button>
          <div class="dropdown-menu">
          <a href="#" id="listaucs"class="list-group-item list-group-item-action text-white bg-dark">Lista UCS</a>
          <a href="#"  class="list-group-item list-group-item-action text-white bg-dark">Maquinas Virtuales</a>
          <a href="#"  id="listafallas" class="list-group-item list-group-item-action text-white bg-dark">Fallas de Estaciones (Abiertos / Cerrados)</a>
          <a href="#"  id="listacisco" class="list-group-item list-group-item-action text-white bg-dark">Casos Cisco (Abiertos/Cerrados) </a>
          </div>
        </div>
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
        <h1 class="mt-4"> Ingenieria de Prueba (UABU)</h1><br>
        <div class="chart">



          <div id="result">
            <!-- <div class="chart-container" style="position: relative; height:40vh; width:77vw"> -->
            <div>
              <div class="form-row mb-0">
              <div class="col">
                <!-- <div class="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="myChart" ></canvas>
                </div> -->
                <div id="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="graphCanvas"></canvas>
                </div>

                <div class="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="graphCanvas2" ></canvas>
                </div>
              </div>
              <div class="col">
                <div class="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="myChart3" ></canvas>
                </div>
                <div class="chart-container" style=" height:40vh; width:37vw">
                  <canvas id="myChart4" ></canvas>
                </div>
              </div>
            </div>
            </div>

        </div>

      </div>
    </div>
  </div>
</div>
<script>
  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });
</script>
</body>

</html>
<script>

// var ctx = document.getElementById("myChart");
// var myChart = new Chart(ctx, {
// type: 'line',
// data: {
// labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
// datasets: [{
//   label: '# Fallas Abiertas ',
//   data: [5, 2, 3, 1, 2, 1],
//   backgroundColor: [
//       'rgba(255, 99, 132, 0.2)',
//       'rgba(54, 162, 235, 0.2)',
//       'rgba(255, 206, 86, 0.2)',
//       'rgba(75, 192, 192, 0.2)',
//       'rgba(153, 102, 255, 0.2)',
//       'rgba(255, 159, 64, 0.2)'
//   ],
//   borderColor: [
//       'rgba(255,99,132,1)',
//       'rgba(54, 162, 235, 1)',
//       'rgba(255, 206, 86, 1)',
//       'rgba(75, 192, 192, 1)',
//       'rgba(153, 102, 255, 1)',
//       'rgba(255, 159, 64, 1)'
//   ],
//   borderWidth: .5
// }]
// },
// options: {
// scales: {
//   yAxes: [{
//       ticks: {
//           beginAtZero:true
//       }
//   }]
// }
// }
// });
$(document).ready(function () {
    showGraph();
});


function showGraph()
{
    {
        $.post("datachart.php",
        function (data)
        {

            console.log(data);
             var name = [];
            var marks = [];


            for (var i in data) {
                name.push(data[i].Production_line);
                marks.push(data[i].IssueTotalClosed);

            }

            var chartdata = {
                labels: name,
                datasets: [
                    {
                        label: 'Fallas Cerradas ',
                        backgroundColor: '#2FAEC9',
                        borderColor: '#0235C7',
                        hoverBackgroundColor: '#2FA2BD',
                        hoverBorderColor: '#0235C7',
                        borderWidth: .3,
                        data: marks



                    }
                ]
            };

            // var chartdata2 = {
            //     labels: name,
            //     datasets: [
            //         {
            //             label: 'Fallas Abiertas ',
            //             backgroundColor: '#2FAEC9',
            //             borderColor: '#0235C7',
            //             hoverBackgroundColor: '#2FA2BD',
            //             hoverBorderColor: '#0235C7',
            //             borderWidth: .3,
            //             data: marks
            //
            //
            //
            //         }
            //     ]
            // };


            var graphTarget = $("#graphCanvas");

            var barGraph = new Chart(graphTarget, {
                type: 'bar',
                data: chartdata
            });



            // var graphTarget = $("#graphCanvas2");
            //
            // var barGraph = new Chart(graphTarget, {
            //     type: 'bar',
            //     data: chartdata2
            // });
            // var graphTarget = $("#graphCanvas3");
            //
            // var barGraph = new Chart(graphTarget, {
            //     type: 'line',
            //     data: chartdata
            // });
            // var graphTarget = $("#graphCanvas4");
            //
            // var barGraph = new Chart(graphTarget, {
            //     type: 'line',
            //     data: chartdata
            // });

        });
    }

    $.post("datachart2.php",
    function (data2)
    {

        console.log(data2);
         var name = [];
        var marks = [];


        for (var i in data2) {
            name.push(data2[i].Production_line);
            marks.push(data2[i].IssueTotalOpened);

        }
        var text = "Fallas Abiertas";
        var chartdata = {
            labels: name,
            datasets: [
                {

                    label: 'Fallas Abiertas ',
                    backgroundColor: '#2FAEC9',
                    borderColor: '#0235C7',
                    hoverBackgroundColor: '#2FA2BD',
                    hoverBorderColor: '#0235C7',
                    borderWidth: .3,
                    data: marks
                }
            ]
        };

        // var chartdata2 = {
        //     labels: name,
        //     datasets: [
        //         {
        //             label: 'Fallas Abiertas ',
        //             backgroundColor: '#2FAEC9',
        //             borderColor: '#0235C7',
        //             hoverBackgroundColor: '#2FA2BD',
        //             hoverBorderColor: '#0235C7',
        //             borderWidth: .3,
        //             data: marks
        //
        //
        //
        //         }
        //     ]
        // };


        var graphTarget = $("#graphCanvas2");

        var barGraph = new Chart(graphTarget, {
            type: 'bar',
            data: chartdata
        });



        // var graphTarget = $("#graphCanvas2");
        //
        // var barGraph = new Chart(graphTarget, {
        //     type: 'bar',
        //     data: chartdata2
        // });
        // var graphTarget = $("#graphCanvas3");
        //
        // var barGraph = new Chart(graphTarget, {
        //     type: 'line',
        //     data: chartdata
        // });
        // var graphTarget = $("#graphCanvas4");
        //
        // var barGraph = new Chart(graphTarget, {
        //     type: 'line',
        //     data: chartdata
        // });

    });
}



// var ctx = document.getElementById("myChart2");
// var myChart = new Chart(ctx, {
// type: 'doughnut',
// data: {
// labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
// datasets: [{
//   label: '# Fallas Abiertas ',
//   data: [5, 2, 3, 1, 2, 1],
//   backgroundColor: [
//       'rgba(255, 99, 132, 0.2)',
//       'rgba(54, 162, 235, 0.2)',
//       'rgba(255, 206, 86, 0.2)',
//       'rgba(75, 192, 192, 0.2)',
//       'rgba(153, 102, 255, 0.2)',
//       'rgba(255, 159, 64, 0.2)'
//   ],
//   borderColor: [
//       'rgba(255,99,132,1)',
//       'rgba(54, 162, 235, 1)',
//       'rgba(255, 206, 86, 1)',
//       'rgba(75, 192, 192, 1)',
//       'rgba(153, 102, 255, 1)',
//       'rgba(255, 159, 64, 1)'
//   ],
//   borderWidth: .5
// }]
// },
// options: {
// scales: {
//   yAxes: [{
//       ticks: {
//           beginAtZero:true
//       }
//   }]
// }
// }
// });
//
var ctx = document.getElementById("myChart3");
var myChart = new Chart(ctx, {
type: 'bar',
data: {
labels: ["Nyquist", "Porter", "Adelphi", "Newton", "G48", "Gladiador"],
datasets: [{
  label: '# ',
  data: [5, 2, 3, 1, 2, 1],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});


var ctx = document.getElementById("myChart4");
var myChart = new Chart(ctx, {
type: 'pie',
data: {
labels: ["Abiertas", "cerradas"],
datasets: [{
  // label: 'Porcenatje de fallas abiertas y fallas cerradas ',
  data: [5, 2,],
  backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 159, 64, 0.2)'
  ],
  borderColor: [
      'rgba(255,99,132,1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 159, 64, 1)'
  ],
  borderWidth: .5
}]
},
options: {
scales: {
  yAxes: [{
      ticks: {
          beginAtZero:true
      }
  }]
}
}
});
</script>

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
            // $("#result").load("fallaquery.html");
             $("#result").load("query.php");
           });
           $("#cInicidentes").on("click",function(){
            $("#result").load("queryCisco.php");
            });
            $("#listacisco").on("click",function(){
             $("#result").load("querylistacisco.php");
             });
             $("#listafallas").on("click",function(){
              $("#result").load("querylistafallas.php");
              });
              $("#aTec").on("click",function(){
               $("#result").load("agregarTecnicos.php");
               });
           $("#listaucs").on("click",function(){
            $("#result").load("queryUCS.php");
            });
      });
  </script>
