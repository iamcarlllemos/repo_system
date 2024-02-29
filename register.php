<?php include "header.php";?>
<body class="hold-transition sidebar-mini">
      <?php include "top_navbar.php";?>
	  <section class="text-center text-white" style="background:rgba(190, 46, 221,1.0)">
        <div class="container">
          <div class="card bg-transparent" style="box-shadow:none">
		  <h1 class="jumbotron-heading"></h1>
          </div>
        </div>
      </section> 
	  <section class="content">
			<div class="container col-md-6">
			<div class="row">
			<div class="mt-3">
			<?php
				if(isset($_SESSION['error'])){
				  echo "
					<div class='alert alert-danger alert-dismissible' id='alert'>
					  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					  <h4><i class='icon fa fa-warning'></i> Error!</h4>
					  ".$_SESSION['error']."
					</div>
				  ";
				  unset($_SESSION['error']);
				}
				if(isset($_SESSION['success'])){
				  echo "
					<div class='alert alert-success alert-dismissible' id='alert'>
					  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					  <h4><i class='icon fa fa-check'></i> Waiting for Approval!</h4>
					  ".$_SESSION['success']."
					</div>
				  ";
				  unset($_SESSION['success']);
				}
			  ?>
			  
			  <div class="card card-outline card-primary">
			  <div class="card-header">CREATE YOUR ACCOUNT</div>
				<div class="card-body">
					<div class="register-logo">
					<?php 
						if($SYS_LOGO==""){
						?>
							<img src="images/no-image-icon.png" width="130" height="130" class="img-circle elevation-0"/>
						<?php }else{ ?>
							<img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($SYS_LOGO); ?>" width="100" height="100" class="img-circle elevation-0"> </a>
						<?php }?>
					<br>
					<a href="#"></a>
					</div> 
				  <form class="form-horizontal" action="registersave.php" method="POST" onSubmit="return valid();" enctype="multipart/form-data">
					   <div class="row">
					   <div class="col-sm-12">
								<div class="form-group">
								<span for="address" class="control-label">STUDENT/FACULTY ID NUMBER</span>
									<input type="text" class="form-control" name="STUDENT_NO" placeholder="Enter your ID Number" required>
								</div>
							</div>
						   <div class="col-sm-5">
							  <div class="form-group">
								<span for="firstname" class="control-label">FIRST NAME</span>
									<input type="text" class="form-control text-capitalize" name="FIRSTNAME" placeholder="Enter your first name" required>
								</div>
							</div>
						
							 <div class="col-sm-2">
							  <div class="form-group">
								<span for="firstname" class="control-label">M.I</span>
									<input type="text" class="form-control text-capitalize" maxlength="1" name="MI" placeholder="M.I">
								</div>
							</div>
							 <div class="col-sm-5">
							  <div class="form-group">
								<span for="firstname" class="control-label">LAST NAME</span>
									<input type="text" class="form-control text-capitalize" name="LASTNAME" placeholder="Enter your last name" required>
								</div>
							</div>
							<div class="col-sm-6">
							  <div class="form-group">
								<span for="firstname" class="control-label">GENDER </span>
								  <select class="form-control" name="GENDER" required>
									<option value="" selected>-SELECT-</option>
									<option>Male</option>
									<option>FeMale</option>
								  </select>
								</div>
							</div>

							
							<div class="col-sm-6">
							<div class="form-group">
								<span for="address" class="control-label">CONTACT</span>
								  <input type="text" class="form-control" name="CONTACT" placeholder="Enter your number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
								</div>
							</div>

						   <div class="col-sm-12">
							<div class="form-group">
								<span for="address" class="control-label">PERMANENT ADDRESS</span>
								  <input type="text" class="form-control text-capitalize" name="ADDRESS" placeholder="Enter your address" required>
								</div>
							</div>
							

							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">EMAIL</span>
							<input type="email" class="form-control" name="EMAIL" id="email" onBlur="userAvailability()"  placeholder="Enter your email" required>
								<span id="user-availability-status1"></span>
								</div>
							</div>
							
							<div class="col-sm-6">
							  <div class="form-group">
								<span for="firstname" class="control-label">USER TYPE </span>
								  <select class="form-control" id="user-type" name="ROLE" required>
									<option value="" selected>-SELECT-</option>
									<option>STUDENT</option>
									<option>FACULTY</option>
								  </select>
								</div>
							</div>
							
							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">PASSWORD</span>
							<input type="password" class="form-control" id="Password" name="PASSWORD" placeholder="Enter your password" required>
								</div>
							</div>
							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">CONFIRM PASSWORD</span>
							<input type="password" class="form-control" id="ConfirmPassword" name="PASSWORD" placeholder="Confirm your password" required>
						  </div>
							</div>

							<div class="col-sm-12">
							 <div class="form-group">
							<span id="msg"></span>  
						  	</div>
							</div>
							
							<div class="col-sm-7 temp-select">
								<div class="form-group">
									<span for="firstname" class="control-label">COURSE</span>
									<select class="form-control text-uppercase" name="COURSE">
										<option value="" selected>-SELECT-</option>
										<option value="BSIT">Bachelor of science in information technology</option>
										<option value="BSIS">Bachelor of science in information system</option>
									</select>
									</div>
								</div>
								<div class="col-sm-5 temp-select">
								<div class="form-group">
									<span for="firstname" class="control-label">TRACK</span>
									<select class="form-control text-uppercase" name="TRACK">
										<option value="" selected>-SELECT-</option>
										<option value="Information System">Information System</option>
										<option value="Networking">Networking</option>
										<option value="Web Development">Web Development</option>
									</select>
									</div>
								</div>
								<div class="col-12 temp-select">
								<div class="form-group">
									<span for="firstname" class="control-label">YEAR LEVEL</span>
									<select class="form-control text-uppercase" name="YEAR_LEVEL">
										<option value="" selected>-SELECT-</option>
										<option value="1">1ST YEAR</option>
										<option value="2">2ND YEAR</option>
										<option value="3">3RD YEAR</option>
										<option value="4">4TH YEAR</option>
									</select>
									</div>
								</div>

							<div class="col-md-12">
							<div class="form-group">
								<span for="photo" class="control-label">TAKE A SELFIE WITH YOUR ID FOR VERIFICATION </span>
								<input class="form-control" name="image" type="file" id="formFileBaptised" onchange="previeww()" required>
							</div>
							</div>
							<div class="col-md-12">
							<div class="form-group">
							   <img id="frameBaptised" src="" class="img-fluid " style="border-radius: 40px" width="500">
							</div>
							</div>
			
					  <!-- /.col -->
					  <div class="col-12">
						<button type="submit" name="register" id="submit" class="btn bg-maroon btn-block"> <i class="fa fa-solid fa-arrows-to-dot"></i> REGISTER</button>
					  </div>
					  <div class="col-12">
						<!-- <a href="index.php" class="btn bg-warning btn-block"> <i class="fa fa-solid fa-arrow-left"></i>  BACK</a> -->
						<p class="m-0 my-3 text-center text-uppercase" style="font-size: 12px; font-weight: bold">Or</p>
					  </div>
					  <div class="col-12">
					  <a href="signin.php" class="text-center btn bg-teal btn-block text-uppercase"><i class="fa fa-solid fa-arrow-right-from-bracket"></i> LOGIN</a>
					  </div>
					  <!-- /.col -->
					</div>
					  
				  </form>
				 
				</div>
				<!-- /.form-box -->
			  </div><!-- /.card -->
			</div>
			</div>
		</div>
</section>

<?php include "footer.php";?>
<script>
    function userAvailability() {
    $("<span class='fa fa-star'></span>").show();
    jQuery.ajax({
    url: "email_availability.php",
    data:'email='+$("#email").val(),
    type: "POST",
    success:function(data){
    $("#user-availability-status1").html(data);
    $("#loaderIcon").hide();
    },
    error:function (){}
    });
    }

	$('#user-type').change(function() {
		const value = $(this).val();
		if(value == 'STUDENT') {
			$('.temp-select').css('display', 'block');
		} else {
			$('.temp-select').css('display', 'none');
		}
	});

</script>
<script>
    $(document).ready(function(){
		$('.temp-select').css('display', 'none');
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