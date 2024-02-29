<?php @include "includes/header.php";
$ID               	=$user['ID'];
$STUDENT_NO     =htmlentities($user['STUDENT_NO']);
$MNAME         		=$user['LASTNAME'].', '.$user['FIRSTNAME'].' '.$user['MI'];
$GENDER   			=$user['GENDER'];
$ADDRESS    		=$user['ADDRESS'];
$CONTACT  			=$user['CONTACT'];
$PROFILE            =$user['PROFILE'];
$EMAIL    			=$user['EMAIL'];
$ROLE    			=$user['ROLE'];
$ACC_STATUS   		=$user['ACC_STATUS'];
$DATE_CREATED     	=$user['DATE_CREATED'];
$COURSE = $user['COURSE'];
$TRACK = $user['TRACK'];
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
            <h1>Account Information</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Information</li>
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
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                 <?php 
                  if($PROFILE==""){
                  ?>
                    <img width="150" height="150" class="img-circle" src="../images/profile.jpg" alt="User profile picture">
                  <?php }else{ ?>
                    <img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($PROFILE); ?>" width="150" height="150" class="img-circle">
                  <?php }?>
                  
                </div>
                <p class="text-muted text-center"><a href="#baptised" data-toggle="modal" class="editphoto" data-id="<?=$ID;?>"><span class="fa fa-camera"></span></a></p>
                <h3 class="profile-username text-center"><?=$MNAME;?></h3>
                
                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>ID NUMBER</b> <a class="float-right"><?=$STUDENT_NO;?></a>
                  </li>
                  <li class="list-group-item">
                    <b>STATUS </b> <a class="float-right">
                    <?php 
					if ($user['ACC_STATUS'] ==0){
					  echo '
					  <i class="fas fa-solid fa-circle text-danger"></i> DEACTIVE
					  ';
					}elseif($user['ACC_STATUS']==1){
						echo '<i class="fas fa-solid fa-circle text-success"></i> ACTIVE';
					}
					?>
                    </a>
                  </li>
  
                </ul>
  
              </div>
              <!-- /.card-body -->
            </div>
        </div>

          <!-- /.col -->
          <div class="col-md-9">
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"><i class="fa fa-info-circle"></i> Personal Information</h3>
              <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
             
              <table id="customers" class="table table-bordered text-nowrap">
                  <tr>
                    <td width="">NAME</td>
                    <td width=""><?=$MNAME;?></td>
                  </tr>
                  <tr>
                    <td>GENDER</td>
                    <td><?=$GENDER;?></td>
                  </tr>       
                  <tr>
                    <td>CONTACT</td>
                    <td><?=$CONTACT;?></td>
                  </tr>
				        <tr>
                    <td>USERNAME</td>
                    <td><?=$EMAIL;?></td>
                  </tr>
                  <tr>
                    <td> DATE REGISTERED</td>
                    <td><?=$DATE_CREATED;?></td>
                  </tr>
				        <tr>
                    <td> USER TYPE</td>
                    <td><?=$ROLE;?></td>
                  </tr>
                  <tr>
                    <td>COURSE</td>
                    <td>
                      <?php 
                      if($COURSE=="BSIT"){
                          echo "Bachelor of science in information technology";
                      }elseif($COURSE=="BSIS"){
                          echo "Bachelor of science in information system";
                      }else{
                        echo "";
                      }?>
                    </td>
                  </tr>
				   <tr>
                    <td>TRACK</td>
                    <td>
                      <?=$TRACK;?>
                    </td>
                  </tr>
				  <tr>
				  <th colspan="2">ADDRESS</th>
				  </tr>
				  <tr>
					<td colspan="2">
					<div class="embed-responsive embed-responsive-16by9">
					  <iframe class="embed-responsive-item" src="https://maps.google.com/maps?q=<?=$ADDRESS;?>
					&t=&z=13&ie=UTF8&iwloc=&output=embed" allowfullscreen></iframe>
					</div>
					</td>
					
				  </tr>
                </table>
              </div><!-- /.card-body -->
              <div class="card-footer text-muted">
              <div class="float-right">
				  <!-- <a href="member.php" class="btn bg-olive btn-sm"><i class="fa-solid fa fa-arrow-left"></i> Back</a>--->
				</div>
          	</div>
            </div>
            <!-- /.card -->
            
          </div>
		  
		  
		  
		  
		  
		  
		  
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
	
  </div>
  <!-- /.content-wrapper -->
  <div class="modal fade" id="baptised">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
			<h4 class="modal-title"> <span class="fa-solid fa fa-user"></span> Change Photo</h4>
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="profile_update.php" enctype="multipart/form-data">
				    <div class="row">
				      <div class="col-md-12">
                <div class="form-group">
                <input type="hidden" class="form-control" value="<?=$ID;?>" name="ID">
                    <label for="photo" class="control-label">Photo:</label>
                    <input class="form-control" name="image" type="file" id="formFileBaptised" onchange="previeww()"><br>
                   <img id="frameBaptised" src="" class="img-fluid " style="border-radius:10px">
                </div>
                </div>
               </div>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn bg-primary btn-sm" name="upload"><i class="fa fa-check-square-o"></i> Submit</button>
            	</form>
          	</div>
        </div>
    </div>
</div>
 <?php @include "includes/footer.php";?>
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

