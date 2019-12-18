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
     <title><?php echo $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">

    <?php include('configs/head_section.php');?>
    
</head>
`
<body id="app-container" class="menu-default show-spinner">
    <?php include 'configs/navigation.php'; ?>    
    <main>
        <div class="container-fluid">
             <div class="row">
                <div class="col-12">
                    <h1>View Videos <a href="add_video.php" class="badge badge-success badge-sm" style="font-size: 10px;">Add New</a></h1>                   
                    <div class="separator mb-5"></div>
                </div>
            </div>


            <div class="row mb-4">
                <div class="col-12 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <?php see_status2($_REQUEST); ?>
                            <table id="example" class="table table-striped">
                              <thead>
                                 <tr  style="border-bottom: solid 1px #eee;background-color: #ebfdff">
                               <th>S.No</th>
                               <th>Video Title</th>
                               <th>Video Link</th>
                               <th>Date </th>
                               <th>Action</th>                              
                              </tr>
                                </thead>
                                <tbody>
                          <?php 
                          try { $stmt = $pdo->prepare('SELECT * FROM `video` ORDER BY date DESC');
                            } catch(PDOException $ex) {
                                echo "An Error occured!";  print_r($ex->getMessage());
                            }
                            $stmt->execute();
                            $user = $stmt->fetchAll();   
                            $i=1; 
                            foreach($user as $key=>$value){                                 
                              echo '<tr>
                                    <td>'.$i.'</td>
                                    <td>'.$value['title'].'</td>
                                    <td><a href="https://youtube.com/watch/?v='.$value['link'].'" target="_blank"  class="btn btn-success btn-sm">View Video</a></td>
                                    <td>'.$value['date'].'</td>      
                                    <th>
                                      <a href="delete_video.php?id='.$value['id'].'" onclick="return confirm(\' Are You Sure You need to Delete this? \');">
                                        <button class="btn btn-danger btn-sm">Delete</button>
                                      </a>  
                                    </th>                        
                                </tr>';  $i++;
                            }           
                          ?>                    
                        </tbody>
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
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
</script>

</body>

</html>