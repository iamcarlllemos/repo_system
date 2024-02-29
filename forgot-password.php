<?php 


	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\SMTP;

	require 'vendor/autoload.php';

	session_start();
	include "header.php";
   if(isset($_POST['submit'])){ 
	$STUDENT_NO = $_POST['STUDENT_NO'];     
	$sql = mysqli_query($conn, "SELECT * FROM tbl_member WHERE STUDENT_NO = '$STUDENT_NO'");
	$result = mysqli_num_rows($sql);

	if($result > 0)
	{
		$randomCode = rand(100000, 999999);

		$query = "UPDATE tbl_member SET IS_RECOVER = 1, CODE = $randomCode WHERE STUDENT_NO = '$STUDENT_NO'";
		mysqli_query($conn, $query);

	  while($row = mysqli_fetch_array($sql)){

		
		
		$name = ucwords($row['FIRSTNAME'] . ' ' . $row['LASTNAME']);
		$email = $row['EMAIL'];

	  }    
	  	$smtpHost = 'smtp.gmail.com'; // Set your SMTP server
		$smtpUsername = 'monicamaderaecat@gmail.com'; // Set your SMTP username
		$smtpPassword = 'yyjwrosnrorxjxxe '; // Set your SMTP password
		$smtpPort = 587; // Set your SMTP port

		$resetLink = "http://localhost/ResearchPaperRepositorySystem/reset_password.php?id=$STUDENT_NO&code=$randomCode";
        $mail = new PHPMailer();

        // Set up SMTP
		$mail->SMTPDebug = 0;
        $mail->isSMTP();
        $mail->Host = $smtpHost;
        $mail->SMTPAuth = true;
        $mail->Username = $smtpUsername;
        $mail->Password = $smtpPassword;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port = $smtpPort;

		$mail->setFrom('info@researchpaperrepo.com', 'System');
        $mail->addAddress($email, $name);
        $mail->Subject = 'Password Reset Request';
        $mail->Body = "Click the following link to reset your password: $resetLink";
		$mail->smtpConnect([
			'ssl' => [
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true
			]
		]);
		$mail->SMTPOptions = array(
			'ssl' => array(
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true
			)
		);
		
        // Send the email
        if ($mail->send()) {
			$_SESSION['success']="recovery email sent to $email";
			header('location: recover-password.php');
        } else {
            echo 'Error sending email: ' . $mail->ErrorInfo;
        }

	}else
	{
	$_SESSION['error']='no user found';
	   
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
				unset($_SESSION['success']);
			  }
			?>
			  <form action="#" method="POST" autocomplete="off" enctype="multipart/form-data">
			  <div class="input-group mb-3">
				  <input type="text" name="STUDENT_NO" class="form-control" placeholder="ID NUMBER" required>
				  <div class="input-group-append">
					<div class="input-group-text">
					  <span class="fas fa-hashtag"></span>
					</div>
				  </div>
				</div>
				

				<div class="row">
				  <div class="col-6">
					<button type="submit" name="submit" class="btn bg-maroon btn-block"><i class="fa fa-solid fa-arrows-spin"></i> RESET PASSWORD</button>
				  </div>
				  <div class="col-6">
					<a href="signin.php" class="btn bg-indigo btn-block"><span class="fa fa-unlock"></span> LOGIN</a>
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
