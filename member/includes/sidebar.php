<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary bg-navy elevation-0">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
    <?php 
          if($SYS_LOGO==""){
          ?>
            <img src="../images/no-image-icon.png" class="brand-image img-circle elevation-0"/>
          <?php }else{ ?>
            <img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($SYS_LOGO); ?>" class="brand-image img-circle elevation-0">
          <?php }?>
          <span class="brand-text font-weight-light"><b> CCS</b> CPRS</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex" >
        <div class="image">
          <?php 
          if($user['PROFILE']==""){
          ?>
           <img src="../images/profile.jpg" class="img-circle elevation-2" alt="User Image">
          <?php }else{ ?>
            <img src="data:image/jpg;charset=utf8;base64,<?php echo base64_encode($user['PROFILE']); ?>" width="60" height="60" class="img-circle elevation-2"> </a>
          <?php }?>

        </div>
        <div class="info">
          <a href="#" class="d-block text-capitalize"><?=$user['LASTNAME'].' '.$user['FIRSTNAME'].' '.$user['MI']; ?> <i class="fa fa-circle text-success right"></i></a>
          <small class="text-muted"><?=$user['ROLE'];?></small>
        </div>
      </div>
    
      <!-- Sidebar Menu -->

          <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-header">DASHBOARD</li>
		     <li class="nav-item">
            <a href="home.php" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>HOME</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="profile.php" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>PROFILE</p>
            </a>
          </li>
		   <li class="nav-item">
            <a data-toggle="modal" href="#editProfile"class="nav-link">
              <i class="nav-icon fa fa-lock"></i>
              <p>PASSWORD</p>
            </a>
          </li>
	
          <?php 
            if($user['ROLE'] === 'STUDENT' &&  $user['YEAR_LEVEL'] == 4) {
              echo '
              <li class="nav-header">MAINTENANCE</li> 
                <li class="nav-item">
                  <a href="projects.php" class="nav-link">
                      <i class="nav-icon fas fa-solid fa-newspaper"></i>
                      <p>PROJECTS</p>
                  </a>
              </li>
              ';
            }
          ?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
 
  </aside>
  
