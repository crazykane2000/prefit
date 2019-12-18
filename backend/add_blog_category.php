<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
?>
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
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
                    <h1>Add Blog Category</h1>                   
                    <div class="separator mb-5"></div>

                </div>
            </div>

        <div class="row">

            <div class="col-lg-6">
              <div class="card mb-4">
                <div class="card-body">
           

            <?php  see_status($_REQUEST); ?>
                    <form action="add_blog_category_handle.php" method="POST" >
                      <div class="card-box items">
                        <div style="padding-bottom: 5px;"></div>
                        <h2 style="font-size: 16px;">Add Blog Category</h2> <hr/>
                        <div style="padding:10px">
                          <label>Enter Blog Category Name</label>
                          <input type="text" name="category_name" placeholder="Category Name" class="form-control" required>
                        </div>
                        <div style="padding:10px;">
                          <div style="padding:10px;">
                          <div style="padding:10px;"><input type="submit" value="Add Category" class="btn btn-primary mb-0" /></div>
                     </div>
                    </form>
                </div>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <?php include'scripts.php'; ?>
    

</body>
</html> 
