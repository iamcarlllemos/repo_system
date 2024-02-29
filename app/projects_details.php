<?php @include "includes/header.php";

if(isset($_GET['search'])){
    $intal = intval($_GET['search']);
    $sql ="SELECT * FROM tbl_storage WHERE ID='$intal'";
    $query_row = $conn->query($sql);
    if($query_row->num_rows >0){
          $rs = $query_row->fetch_assoc();
          $POST_TITLE =$rs['POST_TITLE'];
          $SEARCH =intval($rs['ID']);
          $POST_DETAILS =$rs['POST_DETAILS'];
          $PDF_FILE =$rs['PDF_FILE'];
          $STUDENT_NO =$rs['STUDENT_NO'];
          $FILE_SIZE =$rs['FILE_SIZE'];
          $VIEW_COUNTER=$rs['VIEW_COUNTER'];
          $POST_IMAGE =$rs['POST_IMAGE'];
          $POSTED_BY =$rs['POSTED_BY'];
          $PUBLISHED_YEAR =$rs['PUBLISHED_YEAR'];
    }else{
          $POST_TITLE ="";
          $POST_DETAILS ="";
          $SEARCH ="";
          $PDF_FILE ="";
          $STUDENT_NO ="";
          $FILE_SIZE ="";
          $VIEW_COUNTER="";
          $POST_IMAGE ="";
          $POSTED_BY="";
          $PUBLISHED_YEAR="";
    }

}else{

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
            <h1>Projects Details</h1>
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
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"> 
              <a href="projects.php" class="btn bg-maroon btn-sm"><i class="fa fa-sharp fa-solid fa-arrow-left"></i> BACK</a>
              <span class="btn bg-purple btn-sm">Posted By: <?=$POSTED_BY;?></span>
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
              <form class="form-horizontal" method="POST" action="projects_update_save.php" enctype="multipart/form-data">
              <div class="card-body">
          		  <div class="row">
                  <input type="hidden" name="search" value="<?=$SEARCH;?>" required>
                  
                    <div class="col-sm-6">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PROJECT TITLE</label>
                            <input type="text" class="form-control" maxlength="100" name="POST_TITLE" value="<?=$POST_TITLE;?>" placeholder ="POST TITLE" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PUBLISHED YEAR</label>
                            <input type="date" class="form-control" name="PUBLISHED_YEAR" value ="<?=$PUBLISHED_YEAR;?>" required>
                        </div>
                    </div>
                    <div class="col-sm-12">
                <div class="form-group">
                  	<label for="address" class="control-label">ABSTRACT, GLOSARRY, CONCLUSIONS AND RECOMMENDATION</label>
                      <textarea rows="8" class="form-control summernote" name="POST_DETAILS"><?=$POST_DETAILS;?></textarea>
                  	</div>
                </div>

                <div class="col-md-12">
                
                <div class="form-group">
                    <label for="photo" class="control-label">PDF FILE</label>
                    <span class="badge bg-maroon">
                    <?php
                    //$FILESIZE=htmlentities($row['FILESIZE']);
                    if ($FILE_SIZE >= 1073741824)
                    {
                      echo $FILE_SIZE = number_format($FILE_SIZE / 1073741824, 2) . ' GB';
                    }
                    elseif ($FILE_SIZE >= 1048576)
                    {
                      echo $FILE_SIZE = number_format($FILE_SIZE / 1048576, 2) . ' MB';
                    }
                    elseif ($FILE_SIZE >= 1024)
                    {
                      echo $FILE_SIZE = number_format($FILE_SIZE / 1024, 2) . ' KB';
                    }
                    elseif ($FILE_SIZE > 1)
                    {
                      echo $FILE_SIZE = $FILE_SIZE . ' bytes';
                    }
                    elseif ($FILE_SIZE == 1)
                    {
                      echo $FILE_SIZE = $FILE_SIZE . ' byte';
                    }
                    else
                    {
                      echo $FILE_SIZE = '0 bytes';
                    }
                  ?>
                  </span>
                  <?php if($PDF_FILE==""){?>
								<h3 class="text-maroon" >No PDF File</h3>
							<?php }else{ ?>
								<div class="embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item" src="<?='../uploads/'.$STUDENT_NO.'/'.$PDF_FILE;?>" allowfullscreen></iframe>
								</div>
							<?php } ?>
                </div>
                </div>

                </div><!----row-->
              </div>
                <div class="card-footer">
            	<!-- <button type="submit" class="btn btn-primary btn-sm" name="submit"><i class="fa fa-save"></i> SUBMIT</button> -->
                </div>
              </form>
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

</body>
</html>

