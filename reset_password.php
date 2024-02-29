<?php 

error_reporting(E_ALL);
ini_set('display_errors', '1');
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\SMTP;

	require 'vendor/autoload.php';

	session_start();
    ob_start();

    unset($_SESSION);

	include "header.php";
    if(isset($_POST['submit'])){ 
        $code = $_POST['CODE'];
        $id = $_POST['STUDENT_NO'];
        $password = $_POST['PASSWORD'];

        $sql = mysqli_query($conn, "SELECT * FROM tbl_member WHERE STUDENT_NO = '$id'");
	    $result = mysqli_num_rows($sql);

        if($result > 0) {
            while($row = mysqli_fetch_array($sql)){
                if($row['IS_RECOVER'] == 1 && !empty($row['CODE'])) {
                    $db_code = $row['CODE'];
                    if($code == $db_code) {
                        $query = "UPDATE tbl_member SET PASSWORD = '$password', IS_RECOVER = 0, CODE = '' WHERE STUDENT_NO = '$id'";
                        mysqli_query($conn, $query);
                        $_SESSION['success']="account successfully recovered";
                        header('location: success_recover.php');
                    } else {
                        $_SESSION['error']='invalid code';
                    }
                } else {
                    $_SESSION['error']='invalid or broken link';
                }
            }
        } else {
            $_SESSION['error']='invalid or broken link';
        }
        
    }

  ?>
<body class="hold-transition sidebar-mini">
<?php include "top_navbar.php";?>
<br>
   <br>
      <br> 
<section class="content">
	<div class="container-fluid container">
	<div class="row">
	<div class="col-md-8 mt-3">
		 
		  <div class="card card-outline card-teals offset-md-5" style="color:#000">
			<div class="card-header text-center">
			  <a href="#" class="h3">FORGOT PASSWORD</a>
			</div>
			<div class="card-body">
			  <p class="login-box-msg">You forgot your password? Here you can easily retrieve a new password. Please your details.
			  </p>
			  <?php
			  if(isset($_SESSION['error'])){
				echo "
				  <div id='alert' class='callout callout-danger text-center mt20 offset'>
					<p class='text-danger text-bold'>".strtoupper($_SESSION['error'])."</p> 
				  </div>
				";
				unset($_SESSION['error']);
			  } else if(isset($_SESSION['success'])) {
				echo "
				  <div id='alert' class='callout callout-success text-center mt20 offset'>
					<p class='text-success text-bold'>".strtoupper($_SESSION['success'])."</p> 
				  </div>
				";
				unset($_SESSION['error']);
			  }
			?>
                <?php

                        $code = $_GET['code'];
                        $id = $_GET['id'];

                        if (empty($code) || empty($id)) {
                            header('location: forgot-password.php');
                            exit;
                        }

                ?>
			  <form action="#" method="POST" autocomplete="off" enctype="multipart/form-data">
                <div class="input-group mb-3">
				  <input type="text" name="CODE" class="form-control" placeholder="Code" value="<?php echo $code ?>" required>
				</div>
			    <div class="input-group mb-3">
				  <input type="text" name="STUDENT_NO" class="form-control" placeholder="ID NUMBER" value="<?php echo $id; ?>" required>
				  <div class="input-group-append">
					<div class="input-group-text">
					  <span class="fas fa-hashtag"></span>
					</div>
				  </div>
				</div>
                <div class="input-group mb-3">
				  <input type="text" name="PASSWORD" class="form-control" placeholder="New Password" required>
                </div>
				

				<div class="row">
				  <div class="col-6">
					<button type="submit" name="submit" class="btn bg-maroon btn-block">SUBMIT</button>
				  </div>
				</div>

			  </form>
			</div>
			</div>
			 
		</div>
	  </div>
	</div>
	</section>
<br>
    <br>
       <br>
<?php include "footer.php";?>
	<script type="text/javascript">
	$(document).ready(function () {
	window.setTimeout(function() {
		$("#alert").fadeTo(1000, 0).slideUp(1000, function(){
			$(this).remove(); 
		});
	}, 5000);

	});
</script>

</body>
</html>
