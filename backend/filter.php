<?php session_start();
    include 'configs/connection.php';
    include 'configs/site_confirgurations.php'; 
    include 'configs/pdo_class_data.php';    
    $pdo_auth = authenticate_admin();
    $pdo = new PDO($dsn, $user, $pass, $opt);
    include 'configs/function.php';
?>

<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">

<?php
    
    $from_date = $_REQUEST['from_date'];
    $from = date("Y-m-d", strtotime($from_date));
    $to_date = $_REQUEST['to_date'];
    $to = date("Y-m-d", strtotime($to_date));


?>
              <h2><b>Filtered Data</b></h2>
              <table class="table" id="example">
                      <thead>
                          <tr style="border-bottom: solid 1px #eee;background-color: #ebfdff">
                              <th style="padding:5px;">Member Id</th>
                              <th style="padding:5px;">Name</th>
                              <th style="padding:5px;">Mobile</th>
                              <th style="padding:5px;">Date</th>
                              <th style="padding:5px;">Package</th>
                              <th style="padding:5px;">Amount</th>
                          </tr>
                      </thead>
                      <tbody>
                    <?php 
                          $table ="member";
                          try{
                              $stmt = $pdo->prepare("SELECT * FROM member WHERE date BETWEEN '".$from."' AND '".$to."'");
                          } catch(PDOException $ex){
                              echo "An Error occured!"; 
                              print_r($ex->getMessage());
                          }     
                          $stmt->execute();
                          $user = $stmt->fetchAll();

                          foreach ($user as $key => $value) {
                               $ex = $value['membership_type'];
                              // $exp = explode("/", $ex);
                              // $package = $exp[0] ."/".$exp[1];
                             //print_r ($exp);
                              echo '<tr>
                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$value['member_id'].'</td>

                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$value['member_name'].'</td>

                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$value['phone_number'].'</td>

                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$value['date'].'</td>

                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$ex.'</td>

                                      <td data-whatever='.$value['id'].' data-toggle="modal" data-target="#dataModal">'.$value['total_amount'].'.00</td>
                                   </tr>';
                              }
                           ?>                                    
                      </tbody>
                  </table>

    <div id="dataModal" class="modal fade">  
      <div class="modal-dialog" style="margin-left: 85px;">  
           <div class="modal-content" style="width:1200px; ">  
                <div class="modal-header" style="background-color: #2bd1e0; color: #fff;">  
                     <center><h4>Member Details</h4></center>  
                  <button type="button" class="close" data-dismiss="modal"  >&times;</button>
                </div>  
                <div class="modal-body" id="member_detail">  
                </div>  
           </div>  
      </div> 
    </div> 

    <?php include 'jsplugin.php';?>

    <script type="text/javascript">
         $(document).ready(function() {
        $('#example').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        });
    });
    </script>                

    <script>
        $('#dataModal').on('show.bs.modal', function (event) {
              var button = $(event.relatedTarget) // Button that triggered the modal
              var recipient = button.data('whatever') // Extract info from data-* attributes
              var modal = $(this);
              var dataString = 'id=' + recipient;
     
                $.ajax({
                    type: "GET",
                    url: "member_data.php",
                    data: dataString,
                    cache: false,
                    success: function (data) {
                        modal.find('#member_detail').html(data);
                    },
                    error: function(err) {
                        console.log(err);
                    }
                });  
            })
      </script>

