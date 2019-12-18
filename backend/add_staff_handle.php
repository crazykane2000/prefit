<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
    include 'resize_image.php';

    $target_dir = "staff_gallery/";
    $mota =  date("U").basename($_FILES["upload_img"]["name"]);
    $mota2 =  date("U").basename($_FILES["pan_file"]["name"]);
    $mota3 =  date("U").basename($_FILES["aadhar_file"]["name"]);

    $data1 = array($mota, $mota2, $mota3);
    $lenght = count($data1);

    for($x = 0; $x < $lenght; $x++){
        
            $target_file = $target_dir .$data1[$x];
            print_r($target_file);
            echo $target_file;
            $uploadOk = 1;
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
 
            if (file_exists($target_file)) {
                header('Location:add_staff.php?choice=success&value=Sorry File Already Exist');
                exit();
            }
            // Check file size
            if ($_FILES["upload_img"]["size"] > 500000000) {
                header('Location:add_staff.php?choice=success&value=Sorry File too Large ');
                exit();
            }
            // Allow certain file formats
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif"  && $imageFileType != "pdf") {
              header('Location:add_staff.php?choice=success&value=Sorry, only JPG, JPEG, PNG & GIF files are allowed.');       
                exit();
            }
            // Check if $uploadOk is set to 0 by an error
            if ($uploadOk == 0) {
                 header('Location:add_staff.php?choice=success&value=Sorry, your File was Not Uploaded');
                 exit();
             }
             else 
            {
                if($data1[0]){
                    if (move_uploaded_file($_FILES["upload_img"]["tmp_name"], $target_file)) {
                $dir = "staff_gallery/";
                $image_file = date("U").$_FILES['upload_img']['name'];
                $file_src = $dir."/".$image_file;       
                $main_thumb_file = $dir."/opt/".$image_file;
                smart_resize_image($file_src , null, 720, 450, false , $main_thumb_file , false , false ,80 ); 
                $small_thumb_file = $dir."/thumb/".$image_file;
                smart_resize_image($file_src , null, 450, 300, false, $small_thumb_file , false , false ,80 ); 
            }
        }elseif($data1[1]){
                    if (move_uploaded_file($_FILES["pan_file"]["tmp_name"], $target_file)) {
                $dir = "staff_gallery/";
                $image_file2 = date("U").$_FILES['pan_file']['name'];
                $file_src = $dir."/".$image_file2;       
                $main_thumb_file = $dir."/opt/".$image_file2;
                smart_resize_image($file_src , null, 720, 450, false , $main_thumb_file , false , false ,80 ); 
                $small_thumb_file = $dir."/thumb/".$image_file2;
                smart_resize_image($file_src , null, 450, 300, false, $small_thumb_file , false , false ,80 ); 
            }
                }elseif($data1[2]){
                    if (move_uploaded_file($_FILES["aadhar_file"]["tmp_name"], $target_file)) {
                $dir = "staff_gallery/";
                $image_file3 = date("U").$_FILES['aadhar_file']['name'];
                $file_src = $dir."/".$image_file3;       
                $main_thumb_file = $dir."/opt/".$image_file3;
                smart_resize_image($file_src , null, 720, 450, false , $main_thumb_file , false , false ,80 ); 
                $small_thumb_file = $dir."/thumb/".$image_file3;
                smart_resize_image($file_src , null, 450, 300, false, $small_thumb_file , false , false ,80 ); 
            }
                }
              
    }
    
            // $datas = array('type', 'name', 'email', 'password', 'mobile', 'salary', 'address', 'joining_date', 'status');    
            // foreach ($datas as $key => $value) {
            //     if($_REQUEST[$value]==""){
            //         header('location:add_staff.php?choice=error&value='.$value." is Empty.");
            //         exit();
            //     }
            //   }
                    $table = "staff";
                    $last = get_last_id($table);
                    $lastplus = $last + 1;
                        $suf = str_pad($lastplus, 4, '0', STR_PAD_LEFT);

                    if($_REQUEST['type']=="staff"){
                         $prefix = "STAF".$suf;
                    
    $key_list = " `staff_id`, `type`, `name`, `email`, `password`, `dob`, `age`, `mobile`, `salary`, `address`, `aadhar_card`, `pan_card`, `upload_img`, `joining_date`, `status`";    

                    $value_list  = "'".$prefix."',
                                    '".$_REQUEST['type']."', 
                                    '".$_REQUEST['name']."',
                                    '".$_REQUEST['email']."', 
                                    '".$_REQUEST['password']."', 
                                    '".$_REQUEST['dob']."', 
                                    '".$_REQUEST['age']."', 
                                    '".$_REQUEST['mobile']."', 
                                    '".$_REQUEST['salary'].".00', 
                                    '".$_REQUEST['address']."', 
                                    '".$image_file3."', 
                                    '".$image_file2."', 
                                    '".$image_file."',
                                    '".$_REQUEST['joining_date']."', 
                                    '".$_REQUEST['status']."'"; 
                                }
                                else{
        $prefix = "TRAIN".$suf;
        $key_list = " `staff_id`, `type`, `name`, `email`, `password`, `dob`, `age`, `mobile`, `salary`, `address`, `aadhar_card`, `pan_card`, `upload_img`, `joining_date`, `status`";    

                    $value_list  =  "'".$prefix."',
                                    '".$_REQUEST['type']."', 
                                    '".$_REQUEST['name']."',
                                    '".$_REQUEST['email']."', 
                                    '".$_REQUEST['password']."', 
                                    '".$_REQUEST['dob']."', 
                                    '".$_REQUEST['age']."', 
                                    '".$_REQUEST['mobile']."', 
                                    '".$_REQUEST['salary']."', 
                                    '".$_REQUEST['address']."', 
                                    '".$image_file3."', 
                                    '".$image_file2."', 
                                    '".$image_file."',
                                    '".$_REQUEST['joining_date']."', 
                                    '".$_REQUEST['status']."'";
                                }

    $result = $pdo->exec("INSERT INTO `$table` ($key_list) VALUES ($value_list)");
    header('Location:view_staff.php?choice=success&value=New Staff Added Successfully&8d1d4357e1e1c6b3e4ea6df4ff01fede='.base64_encode($last).'&new=New_staff');              
    exit();
 }

?>
