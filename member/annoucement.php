<?php include "includes/header.php";?>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- .navbar -->
  <?php include "includes/navbar.php";?>
  <!-- /.navbar -->
  <?php include "includes/sidebar.php";?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
  
        <div class="row">
		
          <section class="col-lg-12 connectedSortable">
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
			 <!-- Default box -->
			  <div class="card">
				<div class="card-header">
				  <h3 class="card-title">ANNOUNCEMENT AND EVENT</h3>

				  <div class="card-tools">
					<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
					  <i class="fas fa-minus"></i>
					</button>
					<button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
					  <i class="fas fa-times"></i>
					</button>
				  </div>
				</div>
				<div class="card-body">
        <div id="calendar"></div>
        
			<!-- Event Details Modal -->
			
      <div class="modal fade" id="event-details-modal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
							<h5 class="modal-title"><i class="fa fa-solid fa-calendar-days"></i> Schedule Details</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
							   <dl>
								<dt class="text-muted">Title</dt>
								<dd id="title" class="fw-bold fs-4"></dd>
								<dt class="text-muted">Description</dt>
								<dd id="description" class=""></dd>
								<dt class="text-muted">Start</dt>
								<dd id="start" class=""></dd>
								<dt class="text-muted">End</dt>
								<dd id="end" class=""></dd>
							</dl>
								
							</div>
							<div class="modal-footer">
              <button type="button" class="btn bg-teal btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
							</div>
						</div>
					</div>
				</div>

				<!-- Event Details Modal -->

			<?php 
			$schedules = $conn->query("SELECT * FROM tbl_event");
			$sched_res = [];
			foreach($schedules->fetch_all(MYSQLI_ASSOC) as $user){
				$user['sdate'] = date("F d, Y h:i A",strtotime($user['start_datetime']));
				$user['edate'] = date("F d, Y h:i A",strtotime($user['end_datetime']));
				$sched_res[$user['id']] = $user;
			}
			?>
			<?php 
			if(isset($conn)) $conn->close();
			?>
				  
				  
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
				  
				</div>
				<!-- /.card-footer-->
			  </div>
      <!-- /.card -->
          </section>
		 
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include "includes/footer.php";?>
  <script>
    var scheds = $.parseJSON('<?= json_encode($sched_res) ?>')
	</script>
	<script src="../plugins/fullcalendar/js/script.js"></script>
</body>
</html>


 
