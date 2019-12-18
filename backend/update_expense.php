<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
    $id = base64_decode($_REQUEST['8d1d4357e1e1c6b3e4ea6df4ff01fede']);
    $lata = get_data_id_data("expense", "id", $id);
   // print_r($lata);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>

     <?php include 'configs/head_section.php'; ?>
    
</head>

<body id="app-container" class="menu-default show-spinner">
     <?php include 'configs/navigation.php'; ?>

    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <h1>Update Expense</h1>         
                     <button type="submit" class="btn btn-primary mb-0 " form="myform" style="float: right;">Save Changes</button>          
                    <div class="separator mb-5"></div>
                </div>
                <div class="col-sm-3">
                   
                </div>
            </div>

            <div class="row">

                <div class="col-lg-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <?php see_status2($_REQUEST); ?>
                            <h5 class="mb-4">Basic Informations</h5>
                             <form action="update_expense_handle.php" method="POST" onsubmit="return validate_form();" id="myform">

                                <div class="col-lg-8">
                        <div class="form-group">
                            <label for="expense_type" style="font-weight: bold;">Expense Type</label>
                            <select class="form-control" name="expense_type" id="expense_type" >
                                <?php echo '<option>'.$lata['expense_type'].'</option>'; ?>
                                <option value="Salary Expense">Salary Expense</option>
                                <option value="Telephone Bill Expense ">Telephone Bill Expense </option>
                                <option value="Marketing Expense ">Marketing Expense </option>
                                <option value="Stationery Expense ">Stationery Expense </option>
                                <option value="New Item Purchase">New Item Purchase</option>
                                <option value="Machine Maintenance ">Machine Maintenance </option>
                                <option value="Gym Equipment Purchase">Gym Equipment Parches</option>
                                <option value="Citi Bank EMI">Citi Bank EMI</option>
                                 </select>
                                </div></div>

                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="expense_amount" style="font-weight: bold;">Amount</label>
                                    <input type="number" class="form-control" name="expense_amount" id="expense_amount" placeholder="Enter Amount" value="<?php echo $lata['expense_amount'];?>">
                                </div></div>

                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="font-weight: bold;">Paid By</label>
                                    <select class="form-control" name="paid_by" id="paid_by" aria-describedby="emailHelp" >
                                        <?php echo '<option>'.$lata['paid_by'].'</option>';?>
                                        <option value="Cash">Cash</option>
                                        <option value="Check">Check</option>
                                        <option value="Internet Banking">Internet Banking</option>
                                        <option value="Debit">Debit</option>
                                        <option value="Credit">Credit</option>
                                        <option value="Paytm">Paytm</option>
                                      </select>
                                </div></div>

                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="date" style="font-weight: bold;">Date</label>
                                    <input type="text" class="form-control datepicker" name="date" id="date" placeholder="Choose Date" value="<?php echo $lata['date'];?>">
                                </div></div>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-weight: bold;">Remarks</label>
                                    <textarea name="remarks" class="form-control" id="remarks" placeholder="Remark Here" rows="3" cols="2"><?php echo $lata['remarks'];?></textarea>
                                </div></div>

                                 <input type="hidden" name="8d1d4357e1e1c6b3e4ea6df4ff01fede" value="<?php echo $_REQUEST['8d1d4357e1e1c6b3e4ea6df4ff01fede']; ?>">
                                
                            </form>

                        </div>
                    </div>
               </div>
            </div>
        </div>
    </main>

    <script src="js/vendor/jquery-3.3.1.min.js"></script>
    <script src="js/vendor/bootstrap.bundle.min.js"></script>
    <script src="js/vendor/moment.min.js"></script>
    <script src="js/vendor/fullcalendar.min.js"></script>
    <script src="js/vendor/perfect-scrollbar.min.js"></script>
    <script src="js/vendor/bootstrap-notify.min.js"></script>
    <script src="js/vendor/select2.full.js"></script>
    <script src="js/vendor/bootstrap-datepicker.js"></script>
    <script src="js/vendor/dropzone.min.js"></script>
    <script src="js/vendor/bootstrap-tagsinput.min.js"></script>
    <script src="js/vendor/nouislider.min.js"></script>
    <script src="js/vendor/jquery.barrating.min.js"></script>
    <script src="js/vendor/cropper.min.js"></script>
    <script src="js/vendor/typeahead.bundle.js"></script>
    <script src="js/vendor/mousetrap.min.js"></script>
    <script src="js/dore.script.js"></script>
    <script src="js/scripts.js"></script>

<!-- <script>
    function validate_form(){
  var membership_name = document.getElementById('membership_name').value;
  var membership_period = document.getElementById('membership_period').value;
  var membership_amount = document.getElementById('membership_amount').value;
  var register_fee = document.getElementById('register_fee').value;
 
if(membership_name == ""){
  alert('Please enter a valid name');
    return false;
}

if(isNaN(membership_period)){
alert('Only number required.');
return false;
}

if(isNaN(membership_amount)){
alert('Amount must be in number.');
return false;
}

if(isNaN(register_fee)){
alert('Fee must be in number.');
return false;
}

  return true;
}
</script> -->

</body>

</html>