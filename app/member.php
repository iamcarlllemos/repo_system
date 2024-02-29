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
            <h1>List of Account</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Account Record</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
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
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
             <h3 class="card-title"> 
              <div class="btn-group">
                <button type="button" data-toggle="modal" data-target="#addmember" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-plus"></i> REGISTER</button>
              </div>
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
                <table id="example1" class="table table-bordered table-striped table-hover">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>DATE JOIN</th>
                    <th>STATUS</th>
                    <th>NAME</th>
                    <th>VALID ID</th>
                    <th>COURSE</th>
                    <th>TRACK</th>
                    <th>ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody>
					      <?php
 
                    $sql = "SELECT * FROM tbl_member ORDER BY LASTNAME ASC";
                    $query = $conn->query($sql);
				          $cnt=1;
                    while($row = $query->fetch_assoc()){
                      $date = new DateTime($row['DATE_CREATED']);
											$word_date = $date->format("F j, g:i A");
                      ?>
                        <tr>
                          <td><?=$cnt; ?></td>
                          <td><?=$word_date?></td>
                          <td>
                          <?php 
                            if ($row['ACC_STATUS'] ==0){
                              echo '<a href="member_active.php?confirmed='.$row['ID'].'">
                            <i class="fa fa-times-circle text-danger" aria-hidden="true"></i> DISABLED</a>
                              ';
                            }elseif($row['ACC_STATUS']==1){
                                echo '<a href="member_diactive.php?confpending='.$row['ID'].'"><i class="fa fa-check-circle text-success"></i> ENABLED</a>';
                            }
                            ?>
                          </td>
                          <td><?=htmlentities($row['LASTNAME'].',  '.$row['FIRSTNAME'].' '.$row['MI']); ?></td>
                          <td>
                          <?php 
                          if($row['ATTACHED_ID']==""){
                          ?>
                            <i class="fa fa-paperclip" aria-hidden="true"></i> <label class="text-danger">NO VALID ID</label>
                          <?php }else{ ?>
                          <a href="<?='member_info.php?q='.urlencode(base64_encode($row['ID']));?>" allowfullscreen="true">
                            <i class="fa fa-paperclip" aria-hidden="true"></i> 
                            VIEW VALID ID
                            </a>

                            <?php }?>
                          </td>
                          <td><?=htmlentities($row['COURSE']); ?></td>
                          <td><?=htmlentities($row['TRACK']); ?></td>
                          <td align="right">
							            <div class="btn-group">
                            <!-- <a href="<?='member_update.php?q='.urlencode(base64_encode($row['ID']));?>" class="btn bg-gradient-teal btn-sm"><i class="fa-solid fa fa-edit"></i> </a> -->
                            <a href="<?='member_info.php?q='.urlencode(base64_encode($row['ID']));?>" class="btn bg-gradient-primary btn-sm "><i class="fa-solid fa fa-info-circle"></i> </a>
                            <button data-id="<?=$row['ID'];?>" onclick="confirmDelete(this);" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> </button>    
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
 <?php @include "includes/member_modal.php";?>
 <?php @include "includes/footer.php";?>
 <!-- <script>
    function userCheckEmailAvailability() {
    jQuery.ajax({
    url: "member_check_availability.php",
    data:'email='+$("#CheckEmail").val(),
    type: "POST",
    success:function(data){
    $("#user-availability").html(data);
    },
    error:function (){}
    });
    }
</script> -->
<script>
    function userAvailability() {
    $("<span class='fa fa-star'></span>").show();
    jQuery.ajax({
    url: "member_check_availability.php",
    data:'email='+$("#email").val(),
    type: "POST",
    success:function(data){
    $("#user-availability-status1").html(data);
    $("#loaderIcon").hide();
    },
    error:function (){}
    });
    }
</script>
<script>
    $(document).ready(function(){
        $("#ConfirmPassword").keyup(function(){
             if ($("#Password").val() != $("#ConfirmPassword").val()) {
                 $("#msg").html("Password do not match").css("color","red");
                 $('#submit').prop('disabled',true);
             }else{
                 $("#msg").html("Password matched").css("color","green");
                 $('#submit').prop('disabled',false);
            }
      });
});
</script> 
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

  })
</script>
<script>
 function confirmDelete(self) {
    var id = self.getAttribute("data-id");
    document.getElementById("form-delete-user").id.value = id;
    $("#myModal").modal("show");
}
</script>
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
      function previeww() {
        frameBaptised.src = URL.createObjectURL(event.target.files[0]);
      }
      function clearImagee() {
          document.getElementById('formFileBaptised').value = null;
          frameBaptised.src = "";
      }
  </script>
</body>
</html>

