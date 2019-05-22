<?php
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","","deadtime");

$query = "SELECT DISTINCT Production_line,IssueTotalOpened FROM issues order by IssueTotalOpened DESC";

$result2 = mysqli_query($conn,$query);

$data2 = array();
foreach ($result2 as $row2) {
	$data2[] = $row2;
}

mysqli_close($conn);

echo json_encode($data2);

?>
