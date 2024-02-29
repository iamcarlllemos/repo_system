
<div class="preloader flex-column justify-content-center align-items-center bg-transparenta" style="background:rgba(30, 39, 46,0.40)">
  <div class="spinner-border text-danger" role="status">
  <span class="visually-hidden"></span>
</div>
  </div>
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-light navbar-default sticky-top elevation-0">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link"><?=$SYS_NAME;?></a>
      </li>
      <!---<li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>---->
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
	  <div class="btn-group">
	<button type="button" class="btn bg-default text-black">
      <span class="hidden-xs"><?php echo $user['LASTNAME'].' '.$user['FIRSTNAME']; ?></span>
	</button>
	<button type="button" class="btn bg-default dropdown-toggle dropdown-icon text-black" data-toggle="dropdown">
	  <span class="sr-only">Toggle Dropdown</span>
	</button>
	<div class="dropdown-menu" role="menu">
	  <a class="dropdown-item" data-toggle="modal" href="#editProfile"> <i class="fa fa-info-circle"></i> EDIT DETAILS</a>
	  <a class="dropdown-item" data-toggle="modal" href="#profile"> <i class="fa fa-edit"></i> CHANGE PHOTO</a>
	  <a class="dropdown-item" data-toggle="modal" href="#" data-target="#logout"><i class="fa fa-power-off"></i> LOGOUT</a>
	</div>
  </div>
     <!---- <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>----->
    </ul>
  </nav>