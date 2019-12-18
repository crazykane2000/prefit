<?php
    session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';


    if (count($_POST["selected_id"]) > 0 ) {
      $all = implode(",", $_POST["selected_id"]);
      $query="DELETE FROM member WHERE 1 AND id IN($all)";
      if(mysqli_query($conn,$query)){
          $_SESSION['success'] = 'Products have been deleted successfully.';
      }
    }else{
        $_SESSION['error'] = 'Select checkbox to delete product.';
    }
    header("Location:view_members.php");
?>