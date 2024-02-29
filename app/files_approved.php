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
            <h1>Approved Projects</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Project</li>
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
              <i class="fa fa-solid fa-list"></i> PROJECT LISTS
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
                    <th>STATUS</th>
                    <th>UPLOADED BY</th>
                    <th>PROJECT NAME</th>
                    <th>DATE UPLOAD</th>
                    <th>DOWNLOADS</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                    
                    $sql = "SELECT * FROM tbl_repository tr INNER JOIN tbl_member tm ON tr.STUDENT_NO=tm.STUDENT_NO WHERE tr.FILESTATUS='1' ORDER BY DATETIME DESC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
  
                      ?>
                        <tr>
                          <td><?=$cnt; ?></td>
                          <td>
                          <?php 
                              if(htmlentities($row['FILESTATUS']==0)){
                                echo "<span class='text-primary'>FOR APPROVAL</span>";
                              }elseif(htmlentities($row['FILESTATUS']==1)){
                                echo "<span class='text-green'>APPROVED</span>";
                              }elseif(htmlentities($row['FILESTATUS']==2)){
                                echo "<span class='text-danger'>REJECTED</span>";
                              }
                              ?>
                          </td>
                          <td><a href="member_information.php?search=<?=intval($row['ID']);?>" class="text-primary"><?=htmlentities($row['LASTNAME'].', '.$row['FIRSTNAME'].' '.$row['MI']); ?></a></td>
                          <td data-mytooltip="tooltip" data-placement="top" title="<?=$row['DESCRIPTION']?>"><?php $path = htmlentities($row['FILENAME']);echo $extension = pathinfo($path, PATHINFO_FILENAME);?></td>
                          <td>
                          <?php
                            $path =  htmlentities($row['FILENAME']);
                            $extension = pathinfo($path, PATHINFO_EXTENSION);
                            
                            if($extension =="pdf"){
                              echo("<span class='fa fa-file-pdf text-danger fa-xl'></span>");
                            }
                            
                            else if($extension =="pptx"){
                              echo("<span class='fa fa-file-powerpoint text-warning fa-xl'></span>");
                            }
                            else if($extension =="docx"){
                              echo("<span class='fa fa-file-word text-primary fa-xl'></span>");
                            }
                            else if($extension =="doc"){
                              echo("<span class='fa fa-file-word text-info fa-xl'></span>");
                            }
                            else if($extension =="ppt"){
                              echo("<span class='fa fa-file-powerpoint text-warning fa-xl'></span>");
                            }
                            else if($extension =="xlsx"){
                              echo("<span class='fa fa-file-excel text-success fa-xl'></span>");
                            }
                            else if($extension =="xls"){
                              echo("<span class='fa fa-file-excel text-success fa-xl'></span>");
                            }
                            else if($extension =="png"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="jpeg"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="jpg"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="gif"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else{
                              echo("<span class='fa fa-file-minus fa-xl'></span>");
                            }
                            ?> 
                          </td>
                          <td><?=$row['DATETIME'];?></td>
                          <td>
                            <?php
                            $DOWNLOAD=0;
                             $DOWNLOAD =  htmlentities($row['DOWNLOAD']);
                            if ($DOWNLOAD> 999999) {
                              $DOWNLOAD = number_format(($DOWNLOAD / 1000),1) . ' M';
                            }
                            elseif ($DOWNLOAD > 999) {
                              $DOWNLOAD = number_format(($DOWNLOAD / 1000),1) . ' K';
                            }
                            ?>
                            <span class="text-primary"><?=$DOWNLOAD;?></span>
                          </td>
                            <td align="right">
                              <div class="btn-group">
                              <a href="files_download.php?FILEID=<?=intval($row['FILEID']);?>" class="btn btn bg-gradient-teal btn-sm btn-sm"><i class="fa fa-solid fa-download"></i> </a> 
                              <button data-id="<?=$row['FILEID'];?>" onclick="confirmEdit(this);" class="btn bg-gradient-success btn-sm"><i class="fa-solid fa fa-edit"></i> </button>
                              <button data-id="<?=$row['FILEID'];?>" onclick="confirmDelete(this);" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> </button>    
                            </div>
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
 include "includes/files_modal.php";
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
