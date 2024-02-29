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
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Record Reports</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Reports</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <section class="content">
      <div class="container-fluid">
        <div class="row">
		
        <div class="col-md-2">
		<div class="callout callout-info">
		<h5>Total Post/Year</h5>
			<?php
				$sql = "SELECT COUNT(*) AS total,date_format(PUBLISHED_YEAR,'%Y') AS YEAR FROM tbl_storage GROUP BY date_format(PUBLISHED_YEAR,'%Y') LIMIT 7";
					$query = $conn->query($sql);
					while($row = $query->fetch_assoc()){
				?> 
				<h5><?=$row['YEAR'];?>-<span class="badge badge-danger"><?=$row['total'];?></span></h5>
			<?php } ?>
              <a href="summary.php" class="btn btn-primary btn-block btn-sm text-white">View All</a>                  
         </div>
        </div>
        <div class="col-md-10">
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">SEARCH BY COURSE AND PENDING,APPROVED AND PENDING</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div> 
		    <form role="form" method="GET" action="report_course_search.php" enctype="multipart/form-data">
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
			
              <div class="col-md-12">
                <div class="form-group">
                <label>SEARCH COURSE AND STATUS</label>
                    <select class="form-control select2" name="COURSE" class="form-control" required>
                        <option value="" selected>-SELECT-</option>
                          <?php
                            $sql ="SELECT DISTINCT COURSE FROM tbl_storage WHERE COURSE !='' ORDER BY COURSE ASC";
                            $query = $conn->query($sql);
                            while($row =$query->fetch_assoc()){
                          ?>
                        	<option value="<?=$row['COURSE'];?>"><?=$row['COURSE'];?></option>
                        <?php } ?>
                      </select>
                </div>   
              </div>
              <!-- /.col -->
              <div class="col-md-12">
                <div class="form-group">
                <label class="control-label">STATUS</label>
				            <select name="IS_ACTIVE" class="form-control select2" required>
                        <option selected value="">-SELECT-</option>
                        <option value="0">PENDING</option>
                        <option value="1">APPROVED</option>
                        <option value="2">REJECTED</option>
                    </select>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm">SUBMIT</button>                  
          </div>
        </div>
        </form>
        <!-- /.card -->
      </div>



      <div class="col-md-6">
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">SEARCH BY COURSE</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div> 
		    <form role="form" method="GET" action="report_course.php" enctype="multipart/form-data">
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
			
              <div class="col-md-12">
                <div class="form-group">
                <label>COURSE</label>
                    <select class="form-control select2" name="COURSE" class="form-control" required>
                        <option value="" selected>-SELECT-</option>
                        <option value="ALL">ALL</option>
                          <?php
                            $sql ="SELECT DISTINCT COURSE FROM tbl_storage WHERE COURSE !='' ORDER BY COURSE ASC";
                            $query = $conn->query($sql);
                            while($row =$query->fetch_assoc()){
                          ?>
                        	<option value="<?=$row['COURSE'];?>"><?=$row['COURSE'];?></option>
                        <?php } ?>
                      </select>
                </div>   
              </div>
              <!-- /.col -->
             
            </div>
            <!-- /.row -->
          </div>
          <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm">SUBMIT</button>                  
          </div>
        </div>
        </form>
        <!-- /.card -->
      </div>

      <div class="col-md-6">
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">SEARCH BY TRACK</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div> 
		    <form role="form" method="GET" action="report_track.php" enctype="multipart/form-data">
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
			
              <div class="col-md-12">
                <div class="form-group">
                <label>TRACK</label>
                    <select class="form-control select2" name="search" class="form-control" required>
                        <option value="" selected>-SELECT-</option>
                        <option value="All">All</option>
                          <?php
                            $sql ="SELECT DISTINCT TRACK FROM tbl_storage WHERE TRACK !='' ORDER BY TRACK ASC";
                            $query = $conn->query($sql);
                            while($row =$query->fetch_assoc()){
                          ?>
                        	<option value="<?=$row['TRACK'];?>"><?=$row['TRACK'];?></option>
                        <?php } ?>
                      </select>
                </div>   
              </div>
              <!-- /.col -->
             
            </div>
            <!-- /.row -->
          </div>
          <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm">SUBMIT</button>                  
          </div>
        </div>
        </form>
        <!-- /.card -->
      </div>



          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include "includes/report_modal.php"; include "includes/footer.php";?>
</body>
</html>
