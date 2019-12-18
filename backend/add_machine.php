<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <?php include('configs/head_section.php');?>
</head>

<body id="app-container" class="menu-default show-spinner">
     <?php include 'configs/navigation.php'; ?>

    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h1>Add Machine</h1>                   
                    <div class="separator mb-5"></div>

                </div>
            </div>

        <div class="row">

            <div class="col-lg-6">
              <div class="card mb-4">
                <div class="card-body">
                    <?php see_status2($_REQUEST); ?>
                    <h5 class="mb-4">Basic Informations</h5>
                    <form action="add_machine_handle.php" method="POST" onsubmit="return validate_form();">

                      <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="machine_name" style="font-weight: bold;">Machine Name</label>
                                    <input type="text" class="form-control" name="machine_name" id="machine_name" placeholder="Enter Name" >
                                </div>
                            </div>

                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="quantity" style="font-weight: bold;">Quantity</label>
                                    <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Enter Quantity" >
                                </div>
                            </div>

                             <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="machine_amount" style="font-weight: bold;">Amount</label>
                                    <input type="number" class="form-control" name="machine_amount" id="machine_amount" placeholder="Enter Amount" >
                                </div>
                            </div>

                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="date" style="font-weight: bold;">Date</label>
                                    <input type="text" class="form-control datepicker" name="date" id="date" placeholder="Choose Date" >
                                </div></div>


                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-weight: bold;">Remarks</label>
                                    <textarea name="remarks" class="form-control" id="remarks" placeholder="Remark Here" rows="3" cols="2"></textarea>
                                </div></div>
                                
                            <div class="col-lg-4">
                                <button type="submit" class="btn btn-primary mb-0">Add New Machine</button></div>
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <?php include'scripts.php'; ?>
    

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
</script>
 -->

</body>

</html>