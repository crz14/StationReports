<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cerrar incidentes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
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



          include ('conn.php');

          $linea = '';
            $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
            if ($conn=== false) {
              die("Connection failed: " . mysqli_connect_error());
            }

            $consulta = "SELECT DISTINCT Station_model FROM stations";
            $result = mysqli_query($conn, $consulta);
            $options ="";
            while ($row = mysqli_fetch_row($result)) {

                $options = $options."<option>$row[0]</option>";
            }

            foreach($result as $row)
            {
            	$linea .= '<option value="'.$row["Station_model"].'">'.$row["Station_model"].'</option>';

            }





    ?>


    <div class="container" style="margin-top:80px">

        <input class="form-control my-0 py-1" id="search_text" type="text" placeholder="Buscar por Linea/Area/Estacion" aria-label="Search"></br>
        <div id="filter">

        </div>


      <!-- <div class="form-row mb-0">
      <div class="col">
          <select name="linea" id="lineaP" class="browser-default custom-select mb-4 form-control action" required >
              <option value="" disabled selected>Filtrar por linea:</option>
               echo $options; ///////////////falta el inicio y fin de php////////////////

          </select>
          </div>
      <div class="col">
          <select name="estacion" id="nombreE" class="browser-default custom-select mb-4 form-control action" required>
            <option value="" disabled selected>Nombre Estacion:</option>
            <option value=""></option>
          </select>

      </div>
      <div class="col">
          <select name="area" id="nombreA" class="browser-default custom-select mb-4 form-control action" required>
            <option value="" disabled selected>Seleciona una area:</option>
            <option value=""></option>
          </select>

      </div>
    </div> -->


<!-- <a href="index.php"<button class="btn btn-info btn-block" type="submit">Inicio</button></a> -->
</div>
  </body>
</html>

<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetchlive.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#filter').html(data);
   }
  });
 }
 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>










<!-- <script>
$(document).ready(function(){




	//$('#city').lwMultiSelect();

	$('.action').change(function(){
		if($(this).val() != '')
		{
			var action = $(this).attr("id");
			var query = $(this).val();
			var result = '';
			if(action == 'lineaP')
			{
				result = 'nombreE';
			}else if (action == 'nombreE')
       {
        result = 'nombreA';
      }
			else
			{
				result = '';
			}
			$.ajax({
				url:'fetch.php',
				method:"POST",
				data:{action:action, query:query},
				success:function(data)
				{
					$('#'+result).html(data);
					if(result == 'city')
					{
						$('#city').data('plugin_lwMultiSelect').updateList();
					}
				}
			})
		}
	});

	$('#insert_data').on('submit', function(event){
		event.preventDefault();
		if($('#country').val() == '')
		{
			alert("Please Select Country");
			return false;
		}
		else if($('#state').val() == '')
		{
			alert("Please Select State");
			return false;
		}
		else if($('#city').val() == '')
		{
			alert("Please Select City");
			return false;
		}
		else
		{
			$('#hidden_city').val($('#city').val());
			$('#action').attr('disabled', 'disabled');
			var form_data = $(this).serialize();
			$.ajax({
				url:"insert.php",
				method:"POST",
				data:form_data,
				success:function(data)
				{
					$('#action').attr("disabled", "disabled");
					if(data == 'done')
					{
						$('#city').html('');
						$('#city').data('plugin_lwMultiSelect').updateList();
						$('#city').data('plugin_lwMultiSelect').removeAll();
						$('#insert_data')[0].reset();
						alert('Data Inserted');
					}
				}
			});
		}
	});

});
</script> -->
