<?php
   session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';

   $id = $_GET['id'];
   $lata = get_data_id_data("enquiry", "id", $id);
   $date = $lata['date'];
 
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
               <div class="col-md-6">
                <div class="table-responsive" style="">  
                <table class="table table-striped">

                <tr>  
                     <td width="40%"><label><b>Enquiry Id</b></label></td>  
                     <td width="60%"><?php echo $lata["enquiry_id"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Name</b></label></td>  
                     <td width="60%"><?php echo $lata["name"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Phone</b></label></td>  
                     <td width="60%"><?php echo $lata["phone"] ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Phone2</b></label></td>  
                     <td width="60%"><?php echo $lata["phone2"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Address</b></label></td>  
                     <td width="60%"><?php echo $lata["address"]; ?></td>  
                </tr>
                 <tr>  
                     <td width="40%"><label><b>Occupation</b></label></td>  
                     <td width="60%"><?php echo $lata["occupation"]; ?></td>  
                </tr>
                <tr>  
                     <td width="40%"><label><b>Age</b></label></td>  
                     <td width="60%"><?php echo $lata["age"]; ?></td>  
                </tr>  
                 </table></div>
                    </div>

              <div class="col-md-6">
                <div class="table-responsive" style="">  
                <table class="table table-striped">

                 <tr>  
                     <td width="40%"><label><b>Email ID</b></label></td>  
                     <td width="60%"><?php echo $lata["email"]; ?></td>  
                </tr>
                   
                <tr>  
                     <td width="40%"><label><b>Gender</b></label></td>  
                     <td width="60%"><?php
                        $gender = '<label class="badge badge-success">Female</label>';
                                        if($lata['gender']=="Male"){
                                            $gender = '<label class="badge badge-danger">Male</label>';
                                        }
                      echo $gender; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Service</b></label></td>  
                     <td width="60%"><?php echo $lata["service"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Conversion Status</b></label></td>  
                     <td width="60%" style="text-transform:capitalize"><?php echo stutusify($lata["conversion_status"]); ?></td>  
                </tr> 
                <tr>  
                     <td width="40%"><label><b>Purpose</b></label></td>  
                     <td width="60%"><?php echo $lata["purpose"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="40%"><label><b>Date</b></label></td>  
                     <td width="60%"><?php echo $lata["date"]; ?></td>  
                </tr> 
                <tr>  
                     <td width="30%"><label><b>Following By</b></label></td>  
                     <td width="70%" style="color: #7d9ed4; font-size: 15px;"><b><?php echo $lata["following_by"]; ?></b><a href="followup_details.php?8d1d4357e1e1c6b3e4ea6df4ff01fede=<?php echo base64_encode($lata['id']); ?>"  class="badge badge-success" style="margin-left: 5px;">Follow Up Details</a></label></td>  
                </tr>  
                 </table>
               </div>
             </div>
          </div>
            <br>
            <hr>
            <br>

          <div class="button" style="text-align: right;">
             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
             <a href="make_member.php?8d1d4357e1e1c6b3e4ea6df4ff01fede=<?php echo base64_encode($lata['id']);?>" style="color:#fff;" target="_blank"><button type="button" class="btn btn-info">Make Member</button></a>
         </div>

    <script src="js/vendor/bootstrap-datepicker.js"></script>
    <script src="js/dore.script.js"></script>
    <script src="js/scripts.js"></script>

    </body>
    </html>
