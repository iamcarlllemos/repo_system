<?php @include "includes/header.php";
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
            <h4> Search Results <a href="report.php" class="btn bg-maroon btn-xs"><i class="fa fa-sharp fa-solid fa-left"></i> Back</a></h4> 
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item">Home</li>
              <li class="breadcrumb-item active"> Details</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
		<div class="row">
		<div class="col-md-12">
             <div class="embed-responsive embed-responsive-16by9">
                  <iframe class="embed-responsive-item" src="report_course_search_results.php?COURSE=<?=$_GET['COURSE'];?>&IS_ACTIVE=<?=$_GET['IS_ACTIVE'];?>" allowfullscreen></iframe>
                </div>

          </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php @include "includes/footer.php";?>

<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
</body>
</html>

