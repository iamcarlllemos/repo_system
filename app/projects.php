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
            <h1>All Projects</h1>
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
               <i class="fa fa-list"></i> LIST OF TITLES
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
                    <th class="text-nowrap">THUMBNAIL</th>
                    <th class="text-nowrap">TITLE</th>
                    <th class="text-nowrap">POST DATE</th>
                    <th class="text-nowrap">VIEWS</th>
                    <th class="text-nowrap">POST BY</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                  $sql = "SELECT *, tn.ID as newsID 
                  FROM tbl_storage tn 
                  LEFT JOIN tbl_member tm ON tn.POST_BY_ID = tm.ID 
                  WHERE tn.IS_ARCHIVED = 0
                  ORDER BY tn.POSTING_DATE DESC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
                      $date = new DateTime($row['POSTING_DATE']);
											$word_date = $date->format("F j, g:i A");
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
                          <label class="text-maroon"><?php
										$VIEW_COUNTER=0;
										$VIEW_COUNTER =  htmlentities($row['VIEW_COUNTER']);
										if ($VIEW_COUNTER> 999999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' M';
										}elseif ($VIEW_COUNTER > 999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' K';
										}
										print $VIEW_COUNTER;
										?></label>
                          </td>
                          <td><?=$row['POSTED_BY']; ?></td>
                          <td align="right">
                            <div class="btn-group">
                            <a href="projects_details.php?search=<?=$row['newsID'];?>" class="btn bg-primary btn-sm edit"><i class="fa fa-solid fa-memo-circle-info"></i> </a>
                            <button data-id="<?=$row['newsID'];?>" onclick="confirmEdit(this);" data-title="<?=$row['POST_TITLE']; ?>"  data-active="<?=$row['IS_ACTIVE'];?>" data-remarks="<?=$row['REJECTED_REMARKS'];?>" data-year="<?=$row['PUBLISHED_YEAR'];?>" class="btn bg-teal btn-sm edit"><i class="fa-solid fa fa-edit"></i> </button>
                            <button data-id="<?=$row['newsID'];?>" onclick="confirmArchiveDelete(this);" data-title="<?=$row['POST_TITLE']; ?>" class="btn bg-maroon btn-sm delete"><i class="fa-solid fa fa-trash"></i> </button>
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
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"> 
               <i class="fa fa-list"></i> LIST OF ARCHIVED TITLES
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
                    <th class="text-nowrap">THUMBNAIL</th>
                    <th class="text-nowrap">TITLE</th>
                    <th class="text-nowrap">POST DATE</th>
                    <th class="text-nowrap">VIEWS</th>
                    <th class="text-nowrap">POST BY</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                  $sql = "SELECT *, tn.ID as newsID 
                  FROM tbl_storage tn 
                  LEFT JOIN tbl_member tm ON tn.POST_BY_ID = tm.ID 
                  WHERE tn.IS_ARCHIVED = 1
                  ORDER BY tn.POSTING_DATE DESC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
        
											$date = new DateTime($row['POSTING_DATE']);
											$word_date = $date->format("F j, g:i A");
										
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
                            <!-- <a href="#" data-id="<?=$row['newsID'];?>" onclick="confirmEditPhoto(this);" class="float-right"><i class="fa-solid fa fa-edit"></i> </a> -->
                          </td>
                          <td class="text-wrap"><?=$row['POST_TITLE']; ?></td>
                          <td><?= $word_date?></td>
                          <td>
                          <label class="text-maroon"><?php
										$VIEW_COUNTER=0;
										$VIEW_COUNTER =  htmlentities($row['VIEW_COUNTER']);
										if ($VIEW_COUNTER> 999999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' M';
										}elseif ($VIEW_COUNTER > 999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' K';
										}
										print $VIEW_COUNTER;
										?></label>
                          </td>
                          <td><?=$row['POSTED_BY']; ?></td>
                          <td align="right">
                            <div class="btn-group">
                            <button data-id="<?=$row['newsID'];?>" onclick="restoreArchive(this);" data-title="<?=$row['POST_TITLE']; ?>"  data-active="<?=$row['IS_ACTIVE'];?>" data-remarks="<?=$row['REJECTED_REMARKS'];?>" data-year="<?=$row['PUBLISHED_YEAR'];?>" class="btn bg-teal btn-sm edit"><i class="fa-solid fa-window-restore"></i> </button>
                            <button data-id="<?=$row['newsID'];?>" onclick="confirmFullyDelete(this);" data-title="<?=$row['POST_TITLE']; ?>" class="btn bg-maroon btn-sm delete"><i class="fa-solid fa fa-trash"></i> </button>
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

      function confirmArchiveDelete(self) {
          var id = self.getAttribute("data-id");
          var title_delete = self.getAttribute("data-title");
          document.getElementById("form-archive-x").id.value = id;
          document.getElementById("form-archive-x").title_delete.value = title_delete;
          $("#myModalArchive").modal("show");
      }

      function confirmFullyDelete(self) {
          var id = self.getAttribute("data-id");
          var title_delete = self.getAttribute("data-title");
          document.getElementById("form-delete-x").id.value = id;
          document.getElementById("form-delete-x").title_delete.value = title_delete;
          $("#myModalFullyDelete").modal("show");
      }

      function restoreArchive(self) {
          var id = self.getAttribute("data-id");
          var title_delete = self.getAttribute("data-title");
          document.getElementById("form-unarchive-x").id.value = id;
          document.getElementById("form-unarchive-x").title_delete.value = title_delete;
          $("#myModalRestoreArchive").modal("show");
      }

      function confirmEdit(self) {
          var id = self.getAttribute("data-id");
          var title = self.getAttribute("data-title");
          var remarks = self.getAttribute("data-remarks");
          var active = self.getAttribute("data-active");
          var year = self.getAttribute("data-year");
          document.getElementById("form-edit-news").id.value = id;
          document.getElementById("form-edit-news").title.value = title;
          document.getElementById("form-edit-news").REJECTED_REMARKS.value = remarks;
          document.getElementById("form-edit-news").active.value = active;
          document.getElementById("form-edit-news").PUBLISHED_YEAR.value = year;
          $("#myModalEdit").modal("show");
      }
  </script>
</body>
</html>

