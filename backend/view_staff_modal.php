<?php
   session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';

   $id = $_GET['id'];
   $lata = get_data_id_data("staff", "id", $id);
   $date = $lata['date'];
   //$mid = $lata['member_id'];
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Using Bootstrap modal</title>
</head>
<body>

            <div class="row">
               <div class="col-md-3">
                <table class="table table-striped">
                    <?php 
                         $file="staff_gallery/".$lata['upload_img'];
                         echo '<img src="'.$file.'" style="width:180px; height:180px; margin-left: 15px;"/>';
                        ?>
                </table>
              </div>

                <div class="col-md-4"  style="">
                  <div class="table-responsive" style="">  
                    <table class="table table-striped">
                        <tr>  
                             <td width="50%"><label><b>Staff Id</b></label></td>  
                             <td width="50%"><?php echo $lata["staff_id"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Name</b></label></td>  
                             <td width="50%"><?php echo $lata["name"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Mobile No</b></label></td>  
                             <td width="50%"><?php echo $lata["mobile"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Email Id</b></label></td>  
                             <td width="50%"><?php echo $lata["email"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Joining Date</b></label></td>  
                             <td width="50%"><?php echo $lata["joining_date"]; ?></td>  
                        </tr>
                         
                       </table>
                    </div>
               </div>

                <div class="col-md-4"  style="">
                  <div class="table-responsive" style="">  
                    <table class="table table-striped">
                        <tr>  
                             <td width="50%"><label><b>Date Of Birth</b></label></td>  
                             <td width="50%"><?php echo $lata["dob"]; ?></td>  
                        </tr>
                         <tr>  
                             <td width="50%"><label><b>Age</b></label></td>  
                             <td width="50%"><label class="badge badge-success"><?php echo $lata["age"]; ?></label></td>  
                        </tr>
                        <tr>  
                             <td width="50%"><label><b>Salary</b></label></td>  
                             <td width="50%"><?php echo $lata["salary"]; ?>.00</td>  
                        </tr>
                         <tr>  
                             <td width="50%"><label><b>Status</b></label></td>  
                             <td width="50%"><label class="badge badge-success"><?php echo $lata["status"]; ?></label></td>  
                        </tr>
                         <tr>  
                             <td width="50%"><label><b>Date</b></label></td>  
                             <td width="50%"><?php echo $lata["date"]; ?></td>  
                        </tr>  
                        
                       </table>
                    </div>
               </div>
          </div>

    <script src="js/vendor/bootstrap-datepicker.js"></script>
    <script src="js/dore.script.js"></script>
    <script src="js/scripts.js"></script>

    <script type="text/javascript">

       

    </script>

</body>
</html>

