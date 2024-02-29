<?php 


	include "header.php";


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
			  <a href="#" class="h3">ACCOUNT RECOVERED</a>
			</div>
			<div class="card-body">
			  <p class="login-box-msg">
                Yey, your account was successfully recovers, you can now proceed to sign in
			  </p>
			  <div class="row">
				  <div class="col-12">
					<a href="signin.php" class="btn bg-indigo btn-block"><span class="fa fa-unlock"></span> LOGIN</a>
				  </div>
				</div>
				</div>
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
