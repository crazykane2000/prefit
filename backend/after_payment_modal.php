<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
    
    $id1 = base64_decode($_REQUEST['8d1d4357e1e1c6b3e4ea6df4ff01fede']);
    $pata = get_data_id_data("member", "id", $id1);
   //print_r($pata);

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
   <title><?php echo $title; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
  <?php include('configs/head_section.php');?>
    
</head>

<body id="app-container" class="menu-default show-spinner">
     <?php include 'configs/navigation.php'; ?>

    <main>
        <div class="container-fluid">

            <h3><a href="view_pending_payment.php"><label class="badge badge-danger"><i class="fa fa-arrow-left" aria-hidden="true">Back</i></label></a></h3>

            <div class="row" style="margin-bottom: 20px;">
                <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                      <center><table class="table table-striped">

                        <?php 
                             $file="member_img/".$pata['member_image'];
                             echo '<img src="'.$file.'" style="width:230px; height:200px;"/>';
                        ?><br><br>
                        
                         <tr>  
                             <td><label><b>Payment Status : </b></label></td>  
                             <td><label class="badge badge-success"><?php echo $pata["payment_status"]; ?></label></td>  
                        </tr>

                    </table></center><br>
                 </div>
                 </div>
                 </div>

               <div class="col-md-4">
                 <div class="card" style="height: 420px;">
                   <div class="card-body">
                    <div class="table-responsive" style="">  
                            <table class="table table-striped">

                        <tr>  
                             <td width="50%"><label><b>Name</b></label></td>  
                             <td width="50%"><?php echo $pata["member_name"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Phone</b></label></td>  
                             <td width="50%"><?php echo $pata["phone_number"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Dob</b></label></td>  
                             <td width="50%"><?php echo $pata["dob"] ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Address</b></label></td>  
                             <td width="50%"><?php echo $pata["address"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Validity From</b></label></td>  
                             <td width="50%"><?php echo $pata["validity_from"]; ?></td>  
                        </tr>
                         <tr>  
                             <td width="50%"><label><b>Total Amount</b></label></td>  
                             <td width="50%"><?php echo $pata["total_amount"]; ?>.00</td>  
                        </tr>
                        <tr>  
                             <td width="50%"><label><b>Membership Type</b></label></td>  
                             <td width="50%"><?php echo $pata["membership_type"]; ?></td>  
                        </tr>  

                         </table><br>   
                
                    </div>
                    </div>
                    </div>
              </div>

              <div class="col-md-4">
                <div class="card" style="height: 420px;">
                  <div class="card-body">
                  <div class="table-responsive" style="">  
                     <table class="table table-striped">
                        <tr>  
                             <td width="50%"><label><b>Member Id</b></label></td>  
                             <td width="50%"><?php echo $pata["member_id"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Other No.</b></label></td>  
                             <td width="50%"><?php echo $pata["phone_number2"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Age</b></label></td>  
                             <td width="50%"><?php echo $pata["age"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Occupation</b></label></td>  
                             <td width="50%"><?php echo $pata["occupation"]; ?></td>  
                        </tr>  
                        <tr>  
                             <td width="50%"><label><b>Validity To</b></label></td>  
                             <td width="50%"><?php echo $pata["validity_to"]; ?></td>  
                        </tr>  
                         <tr>  
                             <td width="50%"><label><b>Due Amount</b></label></td>  
                             <td width="50%"><?php echo $pata["due_amount"]; ?>.00</td>  
                        </tr>
                        <tr>  
                             <td width="50%"><label><b>Followed By</b></label></td>  
                             <td width="50%" style="color: #7d9ed4; font-size: 15px;"><b><?php echo $pata["following_by"]; ?></b></td>  
                        </tr>
                     </table><br>
                  </div>
                  </div>
                  </div>
               </div>
            </div>
        

    <div class="col-md-12">
          <div class="card">
           <div class="card-body">
                <h3>All Payment Done Details </h3><hr/>

                    <table class="table table-striped">
                      <tr>
                        <th>S.No.</th>
                        <th>Installments</th>
                        <th>Amount</th>
                        <th>Payment Mode</th>
                        <th>Status</th>
                        <th>Paid On</th>
                        <th>Action</th>
                      </tr>
                     <?php 
                        $i=1;
                        
                              $val = get_data_col("payment", "member_id",  $pata['member_id']);
                    
                            foreach ($val as $key => $value) {
                              $btn = '<a target="_blank" title="click Here to View Details" href="payment_details.php?8d1d4357e1e1c6b3e4ea6df4ff01fede='.base64_encode($value['id']).'" class="btn btn-sm btn-primary">Receipt</a>';
                              $status = '<label class="label label-success">Paid</label>';
                              
                              echo '<tr>
                                    <td>'.$i.'.</td>
                                    <td><b>Installment Part - '.$i.'</b></td>
                                    <td>Rs.'.$value['pay_amount'].'.00</td>  
                                    <td><lebel class="label label-primary">'.$value['paid_by'].'</label></td> 
                                    <td>'.$status.'</td> 
                                    <td>'.$value['date'].'</td> 
                                    <td>'.$btn.'</td>                     
                                  </tr>';
                                  $i++;
                        }
                        
                      ?>
                   </table>
              </div>
             </div>
            </div>
          </div>
        </main>
    <?php include 'jsplugin.php';?>

        </body>
        </html>


    