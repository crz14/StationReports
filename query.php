<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cerrar incidentes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
  </head>
  <body>
    <table class="table table-hover table-sm table-dark">
                <thead>
                  <tr>
                    <th scope="col">Fecha</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Linea</th>
                    <th scope="col">Estacion</th>
                    <th scope="col">Numero Estacion</th>
                    <th scope="col">Numero Celda</th>
                    <th scope="col">Nombre Falla</th>
                    <th scope="col">Solucion</th>
                    <th scope="col">Minutos</th>
                  </tr>
                </thead>
                <tbody>

<?php
  session_start();
  include 'conn.php';
  $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  if ($conn=== false) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $sql = "SELECT Issue_date, User_name, Production_line, Station_name,Station_Number,Cell_number,
          Issue_name,Issue_solution,Repaired_time FROM issues WHERE Issue_status='opened'";
          $result = mysqli_query($conn, $sql);
    			$row = mysqli_fetch_row($result);
          if ($result->num_rows > 0) {
              // output data of each row
              while($row = $result->fetch_assoc()) {
        echo '<tr><td>'.$row["Issue_date"].'</td>
               <td>'.$row["User_name"].'</td>
               <td>'.$row["Production_line"].'</td>
               <td>'.$row["Station_name"].'</td>
               <td>'.$row["Station_Number"].'</td>
               <td>'.$row["Cell_number"].'</td>
               <td>'.$row["Issue_name"].'</td>
               <td>'.$row["Issue_solution"].'</td>
               <td>'.$row["Repaired_time"].'</td></tr>';

    }

}else {
  echo "no hay fallas abiertas";
}
$conn->close();
?>
  </tbody>
</table>;
  </body>
</html>
