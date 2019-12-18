<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';

    //$array_toto = array();

	$dob = $_REQUEST['dob'];
  // $format = explode("-", $dob);
  // $for_format = $format[1] , $format[0] , $format[2];
  $format = date("m-d-Y", strtotime($dob));


  $dob1 = explode("-", $format);
  $age = (date("md", date("U", mktime(0, 0, 0, $dob1[0], $dob1[1], $dob1[2]))) > date("md")
    ? ((date("Y") - $dob1[2]) - 1)
    : (date("Y") - $dob1[2]));
  echo $age;



  

?>