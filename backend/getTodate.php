<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';


    $val = $_POST['validity_from'];
    echo $val;
    $my = $_POST['peri'];
    echo $my;

    $time = strtotime($val);
    $final = date("dd-mm-YY", strtotime($my, $time));
    $final1[]

?>