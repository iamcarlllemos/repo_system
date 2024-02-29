<?php @include "includes/header.php";
if(!empty(intval($_GET['fileid']))){
    $sql ="SELECT * FROM tbl_repository WHERE FILEID='".$_GET['fileid']."'";
    $query =$conn->query($sql);
    $rows = $query->fetch_assoc();

    $FILENAME = $rows['FILENAME'];
    $STUDENT_NO = $rows['STUDENT_NO'];
    $PATH = "../uploads/".$STUDENT_NO."/". $FILENAME;

    //header('Content-type: application/pdf');
    //header('Content-Disposition: inline; filename="' .basename($PATH). '"');
    //header('Content-Transfer-Encoding: binary');
    //header('Content-Length: ' .filesize('uploads/'.$STUDENT_NO.'/'.$FILENAME));
    //header('Accept-Ranges: bytes');
    //readfile("uploads/".$STUDENT_NO."/".$FILENAME);
    //echo "<iframe src='uploads/".$STUDENT_NO."/".$FILENAME."' class='embed-responsive-item' frameborder='0' allowfullscreen></iframe>";
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
            <h1>My Files</h1>
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
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"> 
              <a href="repository_management.php" class="btn btn-sm bg-olive"><i class="fa fa-sharp fa-solid fa-arrow-left"></i> </i>BACK</a>
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
              <div class="row">
                    <div class="col-md-12">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="<?=$PATH;?>" allowfullscreen></iframe>
                        </div>
                    </div>
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
 <?php include "includes/footer.php";?>
</body>
</html>

