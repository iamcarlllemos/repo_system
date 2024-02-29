<?php @include "includes/header.php";
if(isset($_GET['q'])){
  $q =base64_decode(urldecode($_GET['q']));
  $sql = "SELECT * FROM tbl_member tr WHERE tr.ID= '$q'";
	$query = $conn->query($sql);
	if($query->num_rows > 0){
	$row = $query->fetch_assoc();
    $ID               	=$row['ID'];
	$LNAME				=$row['LASTNAME'];
	$FNAME				=$row['FIRSTNAME'];
	$MI					=$row['MI'];
    $GENDER   			=$row['GENDER'];
    $ADDRESS    		=$row['ADDRESS'];
    $CONTACT  			=$row['CONTACT'];
    $PROFILE            =$row['PROFILE'];
    $EMAIL    			=$row['EMAIL'];
    $ROLE    			=$row['ROLE'];
	$ACC_STATUS   		=$row['ACC_STATUS'];
    $DATE_CREATED     	=$row['DATE_CREATED'];
    $PASSWORD     		=$row['PASSWORD'];
    $ROLE             =$row['ROLE'];
    
	}else{
	  header("location:member.php");
	}
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
            <h1>Edit Information</h1>
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
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
               <h3 class="card-title"> 
              <span class="fa fa-info-circle"></span> Update information
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
              <form class="form-horizontal" method="POST" action="member_edit.php" enctype="multipart/form-data" autocomplete="off">
          		  <div class="row">
                <input type="hidden" class="form-control" value="<?=$ID;?>" name="ID" required>
			
				        <div class="col-sm-5">
          		      <div class="form-group">
                  	<label for="firstname" class="control-label">FIRST NAME</label>
                    	<input type="text" class="form-control" value="<?=$FNAME;?>" name="FIRSTNAME" placeholder="First Name" required>
                  	</div>
                </div>

                <div class="col-sm-2">
          		      <div class="form-group">
                  	<label for="firstname" class="control-label">M.I</label>
                    	<input type="text" class="form-control" value="<?=$MI;?>" maxlength="1" name="MI" placeholder="MI">
                  	</div>
                </div>


                <div class="col-sm-5">
          		      <div class="form-group">
                  	<label for="firstname" class="control-label">LAST NAME</label>
                    	<input type="text" class="form-control"  value="<?=$LNAME;?>" name="LASTNAME" placeholder="Last Name"required>
                  	</div>
                </div>

                <div class="col-sm-6">
          		  <div class="form-group">
                  	<label for="firstname" class="control-label">GENDER </label>
                      <select class="form-control" name="GENDER">
                        <option value="<?=$GENDER;?>" selected><?=$GENDER;?></option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                  	</div>
                </div>

                <div class="col-sm-6">
                <div class="form-group">
                  	<label for="address" class="control-label">CONTACT</label>
                      <input required type="text" class="form-control" value="<?=$CONTACT;?>" name="CONTACT" placeholder="Contact" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
                  	</div>
                </div>

				<div class="col-sm-12">
                <div class="form-group">
                  	<label for="address" class="control-label">PRESENT ADDRESS</label>
                      <textarea rows="8" class="form-control summernote" name="ADDRESS" placeholder="Address" required><?=$ADDRESS;?></textarea>
                  	</div>
                </div>

                <div class="col-sm-6">
				    	<div class="form-group">
                <label for="address" class="control-label">EMAIL ADDRESS</label>
                <input type="email" class="form-control" value="<?=$EMAIL;?>" name="EMAIL" id="email" onBlur="userAvailability()"  placeholder="Email" required>
                    <span id="user-availability-status1"></span>
                  	</div>
                </div>
                <div class="col-sm-6">
							  <div class="form-group">
								<label for="firstname" class="control-label">USER TYPE </label>
								  <select class="form-control select2" name="ROLE" required>
									<option value="<?=$ROLE;?>" selected><?=$ROLE;?></option>
									<option>PERSONNEL</option>
									<option>RESIDENT</option>
									<option>VISITOR</option>
								  </select>
								</div>
							</div>
              <div class="col-sm-6">
				      <div class="form-group">
                <label for="address" class="control-label">PASSWORD</label>
                <input type="password" class="form-control" id="Password" value="<?=$PASSWORD;?>" name="PASSWORD" placeholder="Password" required>
                  	</div>
                </div>

                <div class="col-sm-6">
			        <div class="form-group">
                <label for="address" class="control-label">CONFIRM PASSWORD</label>
                <input type="password" class="form-control" id="ConfirmPassword" value="<?=$PASSWORD;?>" name="PASSWORD" placeholder="Password" required>
              </div>
            </div>

                <div class="col-sm-12">
                  <div class="form-group">
                    <span id="msg"></span>  
                  </div>
                </div>



                </div><!----row-->
          	</div>
          	<div class="card-footer text-muted ">
              <div class="float-right">
            	<button type="submit" class="btn bg-olive btn-sm" id="submit" name="submit"><i class="fa fa-save"></i> SUBMIT</button>
            	
            </div>
          	</div>
            </form>
              </div>
              <!-- /.card-body -->
            </div>
            </div>
            <!-- /.card -->
          </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php @include "includes/footer.php";?>
<script>
  $(function (){
    // Summernote
    $('.summernote').summernote();
  })
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
</body>
</html>

