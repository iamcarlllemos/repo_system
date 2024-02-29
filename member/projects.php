<?php @include "includes/header.php";?>
<?php 
  if($user['ROLE'] !== 'STUDENT' ||  $user['YEAR_LEVEL'] != 4) {
    echo '
      <script>
        location.href=`home.php`
      </script>
    ';
  }
?>
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
            <h1>Manage Projects</h1>
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
              <a href="#add" data-toggle="modal" class="btn bg-maroon btn-sm"><i class="fa fa-plus"></i> PROJECTS</a>
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
                <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped text-nowrapS">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>STATUS</th>
                    <th class="text-nowrap">POST IMAGE</th>
                    <th class="text-nowrap">POST TITLE</th>
                    <!-- <th class="text-nowrap">POST DETAILS</th> -->
                    <th class="text-nowrap">POST DATE</th>
                    <th class="text-nowrap">POST VIEWS</th>
                    <th class="text-nowrap">PUBLISHED YEAR</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                    $sql = "SELECT *,tn.ID as newsID FROM tbl_storage tn LEFT JOIN tbl_member tm ON tn.POST_BY_ID=tm.ID WHERE tm.ID ='".$user['ID']."' ORDER BY tn.POSTING_DATE ASC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
                       
											$date = new DateTime($row['POSTING_DATE']);
											$word_date = $date->format("F j, Y g:i A");
										
                      ?>
                        <tr>
                          <td><?=$cnt; ?></td>
                          <td>
                            <?php if($row['IS_ACTIVE']==0){ 
                              echo '<span class="badge bg-maroon">FOR APPROVAL</span>';
                              }elseif($row['IS_ACTIVE']==1){
                                echo '<span class="badge bg-teal">APPROVED</span>';
                              }elseif($row['IS_ACTIVE']==2){
                                echo "<span class='badge badge-danger' data-mytooltip='tooltip' data-placement='top' title='".$row['REJECTED_REMARKS']."'>REJECTED</span>";
                              }else{

                              }
                                ?>
                            </td>
                          <td>
                          <?php 
                            if($row['POST_IMAGE']==""){
                            ?>
                            <img src="../images/no-image-icon.png" class="img- elevation-1" width="50" height="50" alt="User Image">
                            <?php }else{ ?>
                              <a href="data:image/jpg;charset=utf8;base64,<?=base64_encode($row['POST_IMAGE']); ?>" data-toggle="lightbox" data-title="<i class='fa fa-newspaper'></i> <?=$row['POST_TITLE'];?>" data-gallery="gallery" allowfullscreen="true">
                              <img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($row['POST_IMAGE']); ?>" width="50" height="50" class="img-fluid img-thumbnaill elevation-1">
                              </a>
                           
                            <?php }?>
                            <a href="#" data-id="<?=$row['newsID'];?>" onclick="confirmEditPhoto(this);" class="float-right"><i class="fa-solid fa fa-edit"></i> </a>
                          </td>
                          <td class="text-wrap"><?=$row['POST_TITLE']; ?></td>
                          <td><?=$word_date ?></td>
                          <td>
                         
                          <?php
                              $VIEW_COUNTER=0;
                             $VIEW_COUNTER =  htmlentities($row['VIEW_COUNTER']);
                            if ($VIEW_COUNTER> 999999) {
                              $VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' M';
                            }elseif ($VIEW_COUNTER > 999) {
                              $VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' K';
                            }
                            echo $VIEW_COUNTER;
                            ?>
                          </td>
                          <td>
                          <?php if($row['PUBLISHED_YEAR']==''){
                            print "No Published Year";
                          }else{
                            print date('Y',strtotime($row['PUBLISHED_YEAR']));
                          }
											?>
                          </td>
                          <td align="right">
                            <div class="btn-group">
                            <!-- <button data-id="<?=$row['newsID'];?>" onclick="confirmEdit(this);" data-title="<?=htmlentities($row['POST_TITLE']); ?>" data-details="<?=htmlentities($row['POST_DETAILS']); ?>" data-active="<?=$row['IS_ACTIVE'];?>" class="btn bg-teal btn-sm edit"><i class="fa-solid fa fa-edit"></i> </button> -->
                            <a href="projects_update.php?search=<?=$row['newsID'];?>" class="btn bg-teal btn-sm edit"><i class="fa-solid fa fa-edit"></i> </a>
                            <?php
                              if($row['IS_ACTIVE']==1){
                                echo '<button class="btn bg-maroon btn-sm delete" disabled><i class="fa-solid fa fa-trash"></i> </button>';
                              }else{
                            ?>
                            <button data-id="<?=$row['newsID'];?>" onclick="confirmDelete(this);" data-title="<?=htmlentities($row['POST_TITLE']); ?>" class="btn bg-maroon btn-sm delete"><i class="fa-solid fa fa-trash"></i> </button>
                            <?php } ?>
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
  <?php include "includes/projects_modal.php";?>
 <?php include "includes/footer.php";?>

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
      function Newspreview() {
          newsframe.src = URL.createObjectURL(event.target.files[0]);
      }
      function NewsclearImage() {
          document.getElementById('NewsformFile').value = null;
          newsframe.src = "";
      }

      function editNewspreview() {
          editnewsframe.src = URL.createObjectURL(event.target.files[0]);
      }

      function editNewsclearImage() {
          document.getElementById('editNewsformFile').value = null;
          editnewsframe.src = "";
      }

      function confirmEditPhoto(self) {
          var id = self.getAttribute("data-id");
          document.getElementById("form-edit_photo-news").id.value = id;
          $("#myModalEditPhoto").modal("show");
      }

      function confirmDelete(self) {
          var id = self.getAttribute("data-id");
          var title_delete = self.getAttribute("data-title");
          document.getElementById("form-delete-news").id.value = id;
          document.getElementById("form-delete-news").title_delete.value = title_delete;
          $("#myModalDelete").modal("show");
      }

      function confirmEdit(self) {
          var id = self.getAttribute("data-id");
          var title = self.getAttribute("data-title");
          var details = self.getAttribute("data-details");
          var active = self.getAttribute("data-active");
          document.getElementById("form-edit-news").id.value = id;
          document.getElementById("form-edit-news").title.value = title;
          document.getElementById("form-edit-news").details.value = details;
          document.getElementById("form-edit-news").active.value = active;
          $("#myModalEdit").modal("show");
      }
  </script>
</body>
</html>

