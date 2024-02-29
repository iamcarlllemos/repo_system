<?php @include "includes/header.php";?>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- .navbar -->
  <?php @include "includes/navbar.php";?>
  <!-- /.navbar -->
  <?php @include "includes/sidebar.php";?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>My Reports</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Report</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
		  
            <?php
              if(isset($_SESSION['error'])){
                echo "
                <div id='alert' class='alert alert-danger' id='alert'>
                  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                  <h4><i class='icon fa fa-warning'></i> ERROR!</h4>
                  ".$_SESSION['error']."
                </div>
                ";
                unset($_SESSION['error']);
              }
              if(isset($_SESSION['success'])){
                echo "
                <div id='alert' class='alert alert-success' id='alert'>
                  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                  <h4><i class='icon fa fa-check'></i> SUCCESS!</h4>
                  ".$_SESSION['success']."
                </div>
                ";
                unset($_SESSION['success']);
              }
              ?>
		  
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"> 
              <a href="#newincident" data-toggle="modal" class="btn btn-sm bg-olive"><i class="fa fa-plus"></i> NEW REPORT</a>
              </h3>
			      	<div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped text-nowrap">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>REPORTED BY</th>
                    <th>INCIDENT PHOTO</th>
                    <th>REPORT DATETIME</th>
                    <th>INCIDENT TYPE</th>
                    <th>REQUEST RESPONDENT</th>
                    <th>LOCATION</th>
                    <th>COMMENT</th>
                    <th>STATUS</th>
                    <th>VERIFIED BY</th>
                    <th>VERIFIED DATE</th>
                    <th>VERIFIED REMARKS</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                    
                    $sql = "SELECT * FROM tbl_report_list trl INNER JOIN tbl_incident_list til ON trl.INCIDENT_ID=til.INID WHERE trl.REPORT_USER_ID!='".$user['ID']."' ORDER BY trl.REPORT_DATETIME DESC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
                        $reportby_query = "SELECT * FROM tbl_member WHERE ID='".$row['REPORT_USER_ID']."'";
                        $reportby_query_run=$conn->query($reportby_query);

                        $report_list_query = "SELECT * FROM tbl_respondent_type_list WHERE RES_ID='".$row['RESPONDENT_ID']."'";
                        $report_list_query_run=$conn->query($report_list_query);
                      ?>
                        <tr>
                          <td><?=$cnt; ?></td>
                          <td><?php foreach($reportby_query_run as $key=> $reportbyrow){ echo $reportbyrow['FIRSTNAME'].' '.$reportbyrow['MI'].' '.$reportbyrow['LASTNAME'];}?></td>
                          <td>
                          <?php 
                          if($row['REPORT_IMAGE']==""){
                          ?>
                            <i class="fa fa-paperclip" aria-hidden="true"></i> <label class="text-danger">NO INCIDENT PHOTO</label>
                          <?php }else{ ?>
                            <a href="data:image/jpg;charset=utf8;base64,<?=base64_encode($row['REPORT_IMAGE']); ?>" data-toggle="lightbox" data-title="<i class='fa fa-paperclip'></i> INCIDENT PHOTO" data-gallery="gallery" allowfullscreen="true">
                            <i class="fa fa-paperclip" aria-hidden="true"></i> 
                            VIEW
                            </a>

                            <?php }?>
                          </td>
                          <td><?=$row['REPORT_DATETIME']; ?></td>
                          <td><?=$row['INC_NAME']; ?></td>
                          <td><?php foreach($report_list_query_run as $key=> $listbyrow){ echo $listbyrow['RES_NAME'];}?></td>
                          <td>
                          <?php 
                          if($row['LOCATION']==""){
                          ?>
                            <i class="text-danger fa fa-regular fa-location-dot fa-beat-fade" aria-hidden="true"></i> <label class="text-danger">NO LOCATION</label>
                          <?php }else{ ?>
                            <a href="https://maps.google.com/maps?q=<?php echo $row["LOCATION"];?>&t=&z=13&ie=UTF8&iwloc=&output=embed" data-toggle="lightbox" data-title="<i class='fa fa-regular fa-location-dot fa-beat-fade' aria-hidden='true'></i> LOCATION OF INCIDENT" data-gallery="gallery" allowfullscreen="true">
                            <i class="text-danger fa fa-regular fa-location-dot fa-beat-fade" aria-hidden="true"></i>
                            <?=$row["LOCATION"];?>
                            </a>
                            <?php }?> 

                          </td>
                          <td><?=$row['COMMENT'];?></td>
                          <td>
                              <?php 
                              if($row['VERIFIED_STATUS']==0){
                                echo "<label class='text-primary'>FOR VERIFICATION</label>";
                              }elseif($row['VERIFIED_STATUS']==1){
                                echo "<label class='text-green'>VERIFIED</label>";
                              }elseif($row['VERIFIED_STATUS']==2){
                                echo "<label class='text-danger'>DONE</label>";
                              }elseif($row['VERIFIED_STATUS']==3){
                                echo "<label class='text-danger'>FAKE REPORT</label>";
                              }
                              ?>
						              </td>
                          <td><?=$row['VERIFIED_BY']; ?></td>
                          <td><?=$row['VERIFIED_DATE']; ?></td>
                          <td><?=$row['VERIFIED_REMARKS']; ?></td>
                            <td align="right">
                            <?php 
                              if($row['VERIFIED_STATUS']==0){
                              ?>
                              <button data-id="<?=$row['RID'];?>" onclick="confirmEdit(this);" class="btn bg-success btn-sm"><i class="fa-solid fa fa-edit"></i> </button>
                              <button data-id="<?=$row['RID'];?>" onclick="confirmDelete(this);" class="btn bg-maroon btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> </button>    
                            <?php }else{ ?>
                              <button data-id="<?=$row['RID'];?>" onclick="confirmEdit(this);" class="btn bg-success btn-sm" disabled><i class="fa-solid fa fa-edit"></i> </button>
                              <button data-id="<?=$row['RID'];?>" onclick="confirmDelete(this);" class="btn bg-maroon btn-sm" disabled><i class="fa fa-solid fa-trash-can-xmark"></i> </button>   
                              <?php } ?>
                          </td>
                        </tr>
                      <?php
					        $cnt++;
                    }
                  ?>
                  </tbody>
                 
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php 
 include "includes/incidentreport_modal.php";
 include "includes/footer.php";
 
 ?>

  <script>
  $(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  })
</script>
<script>
 function confirmDelete(self) {
    var id = self.getAttribute("data-id");
    document.getElementById("form-delete-user").id.value = id;
    $("#myModal").modal("show");
}

function confirmEdit(self) {
    var id = self.getAttribute("data-id");
    document.getElementById("form-edit-incident").id.value = id;
    $("#myModalEdit").modal("show");
}
</script>
</body>
</html>

