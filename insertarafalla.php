<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Insertar Falla</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">.
  </head>
  <body>
    <?php
    session_start();


    include 'conn.php';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if ($conn=== false) {
      die("Connection failed: " . mysqli_connect_error());
    }

    $User=$_SESSION['name']." ".$_SESSION['lastname'];
    $Line = $_POST['linea'];
    $Station = $_POST['estacion'];
    $NStation = $_POST['Nestacion'];
    $Ncell = $_POST['Ncelda'];
    $Nissue = $_POST['Nfalla'];
    $Solution = $_POST['solucion'];
    $Ftime = $_POST['tiempoR'];
    $Comment = $_POST['comentario'];
    $Question = $_POST['pregunta'];
    $Status = $_POST['estatus'];
    $concatenado= $Line.$Station;

    $id= "SELECT Station_id from stations where Nomenclature ='$concatenado'";
    $result = mysqli_query($conn, $id);
    $row =mysqli_fetch_row($result);
    $dato=$row[0];

    $queryS= "SELECT IssueTotalClosed from issues where Nomenclature ='$concatenado'";
    $result123 = mysqli_query($conn, $queryS);
    $row2 =mysqli_fetch_row($result123);
    $dato2=$row2[0]+1;
    //$_SESSION['resta_con']=$row2[1];

    $queryFO= "SELECT IssueTotalOpened from issues where Nomenclature ='$concatenado'";
    $result1234 = mysqli_query($conn, $queryFO);
    $row24 =mysqli_fetch_row($result1234);
    $dato24=$row24[0]+1;




                  if ($Status == "closed") {
                    $consulta = "INSERT INTO issues (User_name,Production_line, Station_name,Station_Number,Cell_number,Issue_name,Issue_solution,Repaired_time,Issue_comment,Station_Stopped,Issue_status,Station_id,issueClosedby,Nomenclature,IssueTotalClosed)
                    		          VALUES ('$User','$Line','$Station', '$NStation','$Ncell','$Nissue','$Solution','$Ftime','$Comment','$Question','$Status','$dato','$User','$concatenado',$dato2)";
                                  //$queryUp= "UPDATE issues SET IssueTotalClosed = (IssueTotalClosed + 1) WHERE Production_line = '$Line' AND Issue_status = 'closed'";
                                  $queryUp= "UPDATE issues SET IssueTotalClosed = (IssueTotalClosed + 1) WHERE Production_line = '$Line'";
                                  $result22 = mysqli_query($conn, $queryUp);

                  }else{
                    $consulta = "INSERT INTO issues (User_name,Production_line, Station_name,Station_Number,Cell_number,Issue_name,Issue_solution,Repaired_time,Issue_comment,Station_Stopped,Issue_status,Station_id,Nomenclature,IssueTotalOpened)
                    		          VALUES ('$User','$Line','$Station', '$NStation','$Ncell','$Nissue','$Solution','$Ftime','$Comment','$Question','$Status','$dato','$concatenado','$dato24')";
                                  $queryUp25= "UPDATE issues SET IssueTotalOpened = (IssueTotalOpened + 1) WHERE Production_line = '$Line' AND Issue_status = 'opened'";
                                  $result25 = mysqli_query($conn, $queryUp25);
                  }


      if(mysqli_query($conn, $consulta)){
              echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
              header( "refresh:1;url=index.php" );
    } else {
              echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta.</div>" . mysqli_connect_error($consulta);
    }

    ?>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </body>
</html>
