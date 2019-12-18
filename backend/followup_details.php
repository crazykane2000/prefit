<?php
   session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';

	$id = base64_decode($_REQUEST['8d1d4357e1e1c6b3e4ea6df4ff01fede']);
    $lata = get_data_id_data("enquiry", "id", $id);
 
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
             <div class="row">
                <div class="col-12">
                    <h1>All Followups <a href="view_new_enquiry.php" class="badge badge-danger badge-sm" style="font-size: 10px;">Back</a></h1>                   
                    <div class="separator mb-5"></div>
                </div>
            </div>

    	<div class="row">
           <div class="col-md-4">
            <div class="card">
             <div class="card-body">
               <div class="modal-body">
                <div class="table-responsive" style="">  
                <table class="table table-striped">

                <tr>  
                     <td width="30%"><label><b>Name</b></label></td>  
                     <td width="70%"><?php echo $lata["name"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="30%"><label><b>Phone</b></label></td>  
                     <td width="70%"><?php echo $lata["phone"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="30%"><label><b>Address</b></label></td>  
                     <td width="70%"><?php echo $lata["address"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="30%"><label><b>Dob</b></label></td>  
                     <td width="70%"><?php echo $lata["dob"]; ?></td>  
                </tr>  
                <tr>  
                     <td width="30%"><label><b>Gender</b></label></td>  
                     <td width="70%"><?php echo $lata["gender"]; ?></td>  
                </tr>
                <tr>  
                     <td width="50%"><label><b>Followed By</b></label></td>  
                     <td width="50%"><label class="badge badge-info"><?php echo $lata["following_by"]; ?></td>  </label>
                </tr>  
                <tr>  
                     <td width="30%"><label><b>Date</b></label></td>  
                     <td width="70%"><?php echo $lata["date"]; ?></td>  
                </tr>
                  
                 </table>
               </div>
              </div>
             </div>
            </div>
          </div>

         <div class="col-md-8">
          <div class="card">
           <div class="card-body">
                <h3>All Followups </h3><hr/>
                    <table class="table table-striped">
                      <tr>
                        <th>S.No.</th>
                        <th>Followup Date</th>
                        <th>Remark</th>
                        <th>Status</th>
                      </tr>
                      <?php 
                        $i=1;
                        $value = get_data_col("enquiry_follow_up", "enquiry_id",  $lata['id']);
                        
                        foreach ($value as $key => $value) {
                          $status = '<label class="label label-success">Paid</label>';
                          
                                    echo '<tr>
                                    <td>'.$i.'</td>
                                    <td>'.$value['date'].'</td>  
                                    <td>'.$value['remark'].'</td> 
                                    <td>'.$value['status'].'</td> 
                                  </tr>';
                                  $i++;
                                }
                            ?>
                   </table>
                  </div>
                 </div>
                </div>
              </div>
          </div>
      </main>

    <?php include 'jsplugin.php';?>
  
    <script type="text/javascript">

        $(document).ready(function() {
        var register_date = "<?php echo $date ?>";
        $('#date').datepicker({
        format: "dd/mm/yyyy",
        startDate: register_date,
        autoclose: true
          });
        $('#date').datepicker('setDate', register_date);
        });

    </script>

</body>
</html>