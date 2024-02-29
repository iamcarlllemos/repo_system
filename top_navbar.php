		<style>
			.dropdown-item:hover{
				background:#2c3e50;
			}
		</style>
			<nav class="navbar navbar-expand-lg navbar-dark" style="background:#2f3640">
			<div class="container">
			  <a class="navbar-brand" href="#"><?php 
			if($SYS_LOGO==""){
			?>
				<img src="images/no-image-icon.png" width="30" height="30" class="img-circle elevation-0"/>
			<?php }else{ ?>
				<img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($SYS_LOGO); ?>" alt="" width="50" height="50" class="brand-image elevation-0"> </a>
			<?php }?>
			<span class="text-white navbar-brand-text text-bold"><?=strtoupper(strtolower($SYS_NAME));?></span>
			</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				 <i class="fa fa-sharp fa-light fa-bars text-white"></i>
			  </button>

			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
				<form class="form-inline my-2 my-lg-0 ml-auto text-center">
				<div class="btn-group w-100">
				 <a href="register.php" class="button btn bg-gradient-maroons text-white"> <span class="fa fa-registered"></span> REGISTER</a>
				  <a href="signin.php" class="button btn bg-gradient-warnings text-white"> <span class="fa fa-unlock"></span> LOGIN</a>
				  </div>
				</form>
			  </div>
			</div>
			</nav>
			<nav class="navbar navbar-expand-lg bottom-navbar justify-content-center align-items-center w-100">
			<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
				<ul class="navbar-nav list-unstyled mb-0 align-items-center d-flex justify-content-center">
					<li class="nav-item mx-4 active">
					<a class="nav-link text-white" href="index.php"><i class="fa fa-solid fa-home"></i> Home</a>
					</li>
					<li class="nav-item mx-4">
						<a class="nav-link text-white" href="index.php#about"> <span class="fa fa-info"></span> About us</a>
					</li>
					<li class="nav-item mx-4">
						<a class="nav-link text-white" href="contact.php"><i class="fa fa-sharp fa-solid fa-phone"></i> Contact Us</a>
					</li>
				</ul>
			</div>
		</nav>
			