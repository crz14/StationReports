<?php
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","","deadtime");

//$sqlQuery = "SELECT student_id,student_name,marks FROM issues";
$sqlQuery = "SELECT DISTINCT Production_line,IssueTotalClosed FROM issues   order by IssueTotalClosed DESC";

$result = mysqli_query($conn,$sqlQuery);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}


// $query = "SELECT DISTINCT Production_line,IssueTotalOpened FROM issues order by IssueTotalOpened DESC";
//
// $result2 = mysqli_query($conn,$query);
//
// $data2 = array();
// foreach ($result2 as $row2) {
// 	$data2[] = $row2;
// }

mysqli_close($conn);

echo json_encode($data);

?>
