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
     <?php include 'configs/head_section.php'; ?>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

      <style type="text/css">

         body
      {
        background-color:#f5f5f5;
      }
      .imagePreview {
          width: 100%;
          height: 180px;
          background-position: center center;
        background:url(http://cliquecities.com/assets/no-image-e4699ae24f866f6cbdf8ba2444ee5c4e.jpg);
        background-color:#fff;
          background-size: cover;
        background-repeat:no-repeat;
          display: inline-block;
        box-shadow:0px -4px 6px 2px rgba(0,0,0,0.2);
      }
      .btn-primary
      {
        display:block;
        
        box-shadow:0px 4px 6px 2px rgba(0,0,0,0.2);
        margin-top:-5px;
      }
      .imgUp
      {
        margin-bottom:15px;
      }
         
    .search-box{
        width:33%;
        display: inline-block;
        font-size: 14px;
        margin-top: 28px;
    }
    
    .result{
        position: absolute;        
        z-index: 999;
        top: 100%;
        left: 0;
    }
    .search-box input[type="text"], .result{
        width: 100%;
        box-sizing: border-box;
    }
    /* Formatting result items */
    .result p{
        margin:0px 0px 0px 15px;
        padding: 7px 10px;
        border: 1px solid #CCCCCC;
        border-top: none;
        cursor: pointer;
        background-color: #fff;
        width: 320px;
    }
    .result p:hover{
        background: #dcdedc;
    }
</style>

</head>

<body id="app-container" class="menu-default show-spinner">
     <?php include 'configs/navigation.php'; ?>

    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h1>Add New Member</h1>                   
                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-4">
                        <div class="card-body">
                            <?php see_status2($_REQUEST); ?>
                            <h5 class="mb-4">Basic Informations</h5>
                            <form action="add_member_handle.php" method="POST" onsubmit="return validate_input();" enctype="multipart/form-data">

                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="membershiptype" style="font-weight: bold;">Membership Type</label>
                                            <select id="member_pack" class="form-control" name="membership_type">
                                                 <option value="" selected="selected">Select</option>
                                                <?php 
                                                      $fata = fetch_all_popo("membership_type");
                                                    foreach ($fata as $key => $value) {
                                                        echo '<option value="'.$value['id'].'">'."Rs. " .$value['membership_amount']. " /  ".$value['membership_period']. '</option>';
                                                    }
                                                 ?>
                                            </select>
                                        </div>
                                    </div>

                                  <div class="search-box">
                                    <div class="col-sm-12">
                                       <div class="form-group">
                                          <input type="text" class="form-control" name="full_name" id="full_name" aria-describedby="emailHelp" placeholder="Enter Full Name" >
                                          <div class="result"></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <div class="row">
                                  <div class="col-sm-4">
                                    <div class="form-group">
                                      <label for="exampleInputPassword1" style="font-weight: bold;">Phone Number</label>
                                      <input type="text" class="form-control" name="phone_number" id="phone_number" placeholder="Phone Number">
                                    </div>
                                  </div>

                              <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-weight: bold;">Other Phone Number</label>
                                    <input type="text" class="form-control" name="phone_number2" id="phone_number2" placeholder="Optional"  required>
                                </div>
                            </div>
                            </div>


                            <div class="row">
                                    <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="DOB" style="font-weight: bold;">Dob</label>
                                   <input type="text" name="dob" id="dob" class="form-control datepicker" placeholder="Choose Date">
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                  <div class="form-group">
                                      <label for="exampleInputPassword1" style="font-weight: bold;">Age</label>
                                      <input type="text" class="form-control" name="age" id="age" readonly>
                                  </div>
                              </div>
                            
                            </div>

                            <div class="row">
                              <div class="col-sm-4">
                                  <div class="form-group">
                                      <label for="exampleInputPassword1" style="font-weight: bold;">City</label>
                                      <input type="text" class="form-control" name="city" id="city" placeholder="Enter City Name">
                                  </div>
                              </div>
                              <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="State" style="font-weight: bold;">State</label>
                                    <!-- <input type="text" class="form-control" name="State" id="State" placeholder="Enter State Name"> -->
                                    <select  name="prof_state" id="state1" style="border-radius:5px;width:95%;border:solid 1px #ddd;padding:10px;">
                                               <option value="">Select State</option>
                                               <option value="Andaman and Nicobar Islands" stateid="1">Andaman and Nicobar Islands</option>
                                               <option value="Andhra Pradesh" stateid="2">Andhra Pradesh</option>
                                               <option value="Arunachal Pradesh" stateid="3">Arunachal Pradesh</option>
                                               <option value="Assam" stateid="4">Assam</option>
                                               <option value="Bihar" stateid="5">Bihar</option>
                                               <option value="Chandigarh" stateid="6">Chandigarh</option>
                                               <option value="Chhattisgarh" stateid="7">Chhattisgarh</option>
                                               <option value="Dadra and Nagar Haveli" stateid="8">Dadra and Nagar Haveli</option>
                                               <option value="Daman and Diu" stateid="9">Daman and Diu</option>
                                               <option value="Delhi" stateid="10">Delhi</option>
                                               <option value="Goa" stateid="11">Goa</option><option value="Gujarat" stateid="12">Gujarat</option>
                                               <option value="Haryana" stateid="13">Haryana</option>
                                               <option value="Himachal Pradesh" stateid="14">Himachal Pradesh</option>
                                               <option value="Jammu and Kashmir" stateid="15">Jammu and Kashmir</option>
                                               <option value="Jharkhand" stateid="16">Jharkhand</option>
                                               <option value="Karnataka" stateid="17">Karnataka</option>
                                               <option value="Kenmore" stateid="18">Kenmore</option>
                                               <option value="Kerala" stateid="19">Kerala</option>
                                               <option value="Lakshadweep" stateid="20">Lakshadweep</option>
                                               <option value="Madhya Pradesh" stateid="21">Madhya Pradesh</option>
                                               <option value="Maharashtra" stateid="22">Maharashtra</option>
                                               <option value="Manipur" stateid="23">Manipur</option>
                                               <option value="Meghalaya" stateid="24">Meghalaya</option>
                                               <option value="Mizoram" stateid="25">Mizoram</option>
                                               <option value="Nagaland" stateid="26">Nagaland</option>
                                               <option value="Narora" stateid="27">Narora</option>
                                               <option value="Natwar" stateid="28">Natwar</option>
                                               <option value="Odisha" stateid="29">Odisha</option>
                                               <option value="Paschim Medinipur" stateid="30">Paschim Medinipur</option>
                                               <option value="Pondicherry" stateid="31">Pondicherry</option>
                                               <option value="Punjab" stateid="32">Punjab</option>
                                               <option value="Rajasthan" stateid="33">Rajasthan</option>
                                               <option value="Sikkim" stateid="34">Sikkim</option>
                                               <option value="Tamil Nadu" stateid="35">Tamil Nadu</option>
                                               <option value="Telangana" stateid="36">Telangana</option>
                                               <option value="Tripura" stateid="37">Tripura</option>
                                               <option value="Uttar Pradesh" stateid="38">Uttar Pradesh</option>
                                               <option value="Uttarakhand" stateid="39">Uttarakhand</option>
                                               <option value="Vaishali" stateid="40">Vaishali</option>
                                               <option value="West Bengal" stateid="41">West Bengal</option></select>
                                </div>
                            </div>
                              
                            </div>

                          <div class="row">
                            <div class="col-sm-4">
                             <div class="form-group">
                                <label for="exampleInputPassword1" style="font-weight: bold;">Followed By</label><br>
                                <select class="form-control" name="followed_by" id="followed_by"  style="background-color: #dddddd; font-size: 14px;">
                                  <?php
                                         $sata = fetch_all_popo("staff");
                                         foreach ($sata as $key => $value) {
                                             echo '<option value="'.$value['name'].'">'.$value['name'].'</option>';
                                         }
                                  ?>  
                                </select>
                              </div>
                            </div>
                             <div class="col-sm-4">
                                  <div class="form-group">
                                      <label for="exampleInputPassword1" style="font-weight: bold;">Email Id</label>
                                      <input type="email" class="form-control" name="email" id="email">
                                  </div>
                              </div>
                          </div>

                            <div class="row">
                              <div class="col-sm-8">
                                <div class="form-group">
                                  <label for="exampleInputPassword1" style="font-weight: bold;">Address</label>
                                  <textarea name="address" class="form-control" id="address" placeholder="Complete Address"></textarea>
                                </div>
                              </div>
                            </div>

                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1" style="font-weight: bold;">Occupation</label>
                                            <select class="form-control" name="occupation" id="occupation">
                                                <option value="Job">Job</option>
                                                <option value="Self-Employeed">Self-Employeed</option>
                                                <option value="Business">Business</option>
                                                <option value="Student">Student</option>
                                        </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1" style="font-weight: bold;">Marital Status</label>
                                            <select class="form-control" name="marital_status" id="marital_status">
                                                <option value="married">Married</option>
                                                <option value="unmarried">Unmarried</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            <div class="row">
                             <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-weight: bold;">Date</label>
                                    <input type="text" class="form-control datepicker" name="date" id="date" placeholder="Choose Date">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-weight: bold;">Select Gender</label><br/>
                                    <div class="form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="gender" value="Male" checked="">
                                        <label class="form-check-label" for="gender">
                                            Male
                                        </label>
                                    </div>
                                    <div class="form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="gende2" value="Female" checked="">
                                        <label class="form-check-label" for="gende2">
                                            Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                          </div>

                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="paid_amount" style="font-weight: bold;">Membership Validity</label><br/>
                                            <label>From :</label>
                                            <input type="text" class="form-control datepicker" name="validity_from" id="validity_from" placeholder="Choose From Date">
                                        </div>
                                    </div>

                                    <div class="col-sm-4"><br>
                                        <div class="form-group" style="margin-top: 8px;">
                                            <label>To :</label>
                                            <input type="text" class="form-control" name="validity_to" id="validity_to" placeholder="">
                                        </div>
                                    </div>

                                    <div class="col-sm-4"><br>
                                        <div class="form-group" style="margin-top: 8px;">
                                            <label style="font-weight: bold;">Aadhar Card </label>
                                            <input type="file" class="form-control" name="aadhar_file" id="aadhar_file" placeholder="">
                                        </div>
                                    </div>
                                </div>

                                  <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="total_amount" style="font-weight: bold;">Total Amount</label>
                                            <input type="text" class="form-control" name="total_amount" id="total_amount" readonly>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="paid_amount" style="font-weight: bold;">Pay Amount</label>
                                            <input type="text" class="form-control" name="paid_amount" id="paid_amount" placeholder="0.00">
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="pan_card" style="font-weight: bold;">Pan Card</label>
                                            <input type="file" class="form-control" name="pan_file" id="pan_file">
                                        </div>
                                    </div>
                                </div>

                              <div class="row">  
                               <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="font-weight: bold;">Receipt Type</label>
                                    <select class="form-control" name="receipt_type" id="receipt_type" aria-describedby="emailHelp" >
                                        <option value="Manual">Manual</option>
                                        <option value="Printed">Printed</option>
                                        <option value="Email">Email</option>
                                        <option value="Download Pdf">Download Pdf</option>
                                        <option value="SMS">SMS</option>
                                      </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="font-weight: bold;">Payment Mode</label>
                                    <select class="form-control" name="paid_by" id="paid_by" aria-describedby="emailHelp" required>
                                        <option value="Cash">Cash</option>
                                        <option value="Check">Check</option>
                                        <option value="Internet Banking">Internet Banking</option>
                                        <option value="Debit">Debit</option>
                                        <option value="Credit">Credit</option>
                                        <option value="Paytm">Paytm</option>
                                      </select>
                                </div>

                                        <label for="exampleInputPassword1" style="font-weight: bold;">How Did You Here About Us?</label>
                                        <select class="form-control" name="reference_from_media" id="reference_from_media">
                                            <option value="Friend">Friend</option>
                                            <option value="Hoarding">Hoarding</option>
                                            <option value="Flyer">Flyer</option>
                                            <option value="Social Media">Social Media</option>
                                            <option value="Radio">Radio</option>
                                            <option value="News Paper">News Paper</option>
                                            <option value="Coupons">Coupons</option>
                                            <option value="Seminars">Seminars</option>
                                            <option value="Others">Others</option>
                                        </select>
                                    </div>

                                <div class="col-sm-2 imgUp">
                                   <label for="exampleInputEmail1" style="font-weight: bold;">User Photo</label>
                                      <div class="imagePreview"></div>
                                      <label class="btn btn-primary" style="border-radius:0px;">Upload
                                        <input type="file" class="uploadFile img" name="upload_img" id="upload_img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;" ></label>
                                </div>
                              </div>

                              <input type="hidden" name="enquiry_id" id="enquiry_id">

                               <!--  <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="paid_amount" style="font-weight: bold;">First Payment Date</label>
                                            <input type="text" class="form-control datepicker" name="first_payment_date" id="first_payment_date" placeholder="Choose Date">
                                        </div>
                                    </div>
                                    </div>-->
                                    <!-- <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="total_amount" style="font-weight: bold;">Enquiry Date</label>
                                            <input type="text" class="form-control datepicker" name="enquiry_date" id="enquiry_date" placeholder="Choose Date">
                                        </div>
                                    </div>
                                </div> -->

                           <div class="row">
                                <div class="col-sm-8">
                            <div class="form-group">
                              <label for="exampleInputPassword1" style="font-weight: bold;">Remarks</label>
                              <textarea name="remarks" class="form-control" id="remarks" placeholder="Complete Address" required></textarea>
                            </div></div>
                          </div>

                            <button type="submit" class="btn btn-primary mb-0">Add Member</button>
                            </form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php include'scripts.php'; ?>
    
    <script src="js/upload.js"></script>

      <script type="text/javascript">
      $(document).ready(function(){
          $('.search-box input[type="text"]').on("keyup input", function(){
              var inputVal = $(this).val();
              var resultDropdown = $(this).siblings(".result");
              if(inputVal.length){
                  $.get("backend-search.php", {term: inputVal}).done(function(data){
                      resultDropdown.html(data);
                  });
              } 
              else{
                  resultDropdown.empty();
              }
          });

    $(document).on("click", ".result p", function(){
        var id = $(this).data("value");
        $.ajax({
                url: 'search_member_details.php',
                method: "POST",
                data: {id:id},
                success: function(data){
                   var obj = JSON.parse(data);
                    $("#full_name").val(obj.name);
                    $("#phone_number").val(obj.phone);
                    $("#phone_number2").val(obj.phone2);
                    $("#email").val(obj.email);
                    $("#address").val(obj.address);
                    $("#occupation").val(obj.occupation);
                    $("#dob").val(obj.dob);
                    $("#age").val(obj.age);
                    $("#enquiry_id").val(obj.enquiry_id);
                    $("#reference_from_media").val(obj.reference_from_media);
                 }           
                });
        $(this).parent(".result").empty();
    });
  });
  </script>

    <script type="text/javascript">

        $(document).ready(function(){
          var my = '';
        $('#member_pack').change(function(){
            var id = $(this).find(":selected").val();
            alert(id);

            $.ajax({
                url: 'getmember_pack.php',
                method: "POST",
                data: {id:id},
                success: function(data){
                   var obj = JSON.parse(data);
                    $("#total_amount").val(obj.membership_amount);
                    //$("#total_amount").val(obj.membership_amount);
                    period = obj.membership_period;
                    alert(period);
                 }           
                });
            //         $('#validity_from').change(function(){
            //       var validity_from = $('#validity_from').val();
            //       alert(validity_ from);
            //       var period1 = period.split(' ');
            //       var peri = period1[0];
            //       alert(peri);
                  
            //       var inputString = validity_from;
            //       var dString = inputString.split('-');
            //       var dt = new Date(dString[2],dString[1]-1,dString[0]);
            //       dt.setDate(dt.getDate()+20);

            //       var finalDate = dt.GetDate() + "-" + (dt.GetMonth()+1) + "-" + dt.GetYear();
            //       alert(finalDate); 
            //       document.getElementById('validity_to')= finalDate;

            // });
             });
          });
    </script>

    <script type="text/javascript">
      
          $(document).ready(function(){
            $('#dob').datepicker({
            showAnim: 'slideDown',
            format: 'dd-mm-yyyy',
            autoclose: true
          });

            $("#dob").change(function(){
              var dob = $('#dob').val();
              $.ajax({
                   url : 'calculate_age.php',
                   method : "POST",
                   data : "dob=" + dob,
                   success : function(data){
                    alert(data);
                    $('#age').val(data);

                }
              })
          });
      });
  </script>

</body>

</html>