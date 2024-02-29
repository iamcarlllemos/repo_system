<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-0"> <!---style="background:#2c2e69"---->
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
      <div class="user-panel mt-3 pb-3 mb-3 d-flex"  style="border-bottom:none">
        <div class="image">
          <?php 
          if($user['PROFILE']==""){
          ?>
           <img src="../dist/img/avatar4.png" class="img-circle elevation-0" alt="User Image">
          <?php }else{ ?>
            <img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($user['PROFILE']); ?>" width="60" height="60" class="img-circle elevation-2">
          <?php }?>

        </div>
        <div class="info">
          <a href="#" class="d-block"><?=$user['LASTNAME'].' '.$user['FIRSTNAME']; ?> <i class="fa fa-circle text-success right"></i></a>
        </div>
      </div>
      <!-- Sidebar Menu -->

      <?php
      if($user['ROLE']=="ADMIN"){
      ?>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>DASHBOARD</p>
            </a>
          </li>
		    <li class="nav-item">
            <a href="home.php" class="nav-link">
              <i class="nav-icon fa fa-desktop"></i>
              <p>HOME</p>
            </a>
          </li>
		  
		  <!----
          <li class="nav-item">
            <a href="events.php" class="nav-link">
              <i class="nav-icon fas fa-bell"></i>
              <p>EVENTS</p>
            </a>
          </li>
		  <li class="nav-item">
            <a href="calendar.php" class="nav-link">
              <i class="nav-icon fas fa-calendar-alt"></i>
              <p>CALENDAR</p>
            </a>
          </li>----->
		  <li class="nav-item">
            <a href="my-projects.php" class="nav-link">
              <i class="nav-icon fas fa-th-list"></i>
              <p>MY PROJECT</p>
            </a>
          </li>
          <li class="nav-header">MAINTENANCE</li>
		  <!----
		  <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-sharp fa-solid fa-folder-open"></i>
              <p>ALL FILES
              <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="files_pending.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i>
                  <p>Pending</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="files_rejected.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i>
                  <p>Rejected</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="files_approved.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i>
                  <p>Approved</p>
                </a>
              </li>
            </ul>
          </li>---->
          <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-solid fa-newspaper"></i>
              <p>PROJECTS
              <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="projects.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i>
                  <p>All Projects</p>
                </a>
              </li>
              <!-- <li class="nav-item">
                <a href="projects_comments_pending.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i> 
                  <p>Pending Comments</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="projects_comments_approved.php" class="nav-link">
                  <i class="nav-icon far fa-solid fa-arrow-turn-down-right"></i>
                  <p>Approved Comments</p>
                </a>
              </li> -->
            </ul>
          </li>
          
          <li class="nav-item">
            <a href="member.php" class="nav-link">
              <i class="nav-icon fa-solid fa-users-medical"></i>
              <p>MEMBERS</p>
            </a>
          </li>
          <!-- <li class="nav-item">
            <a href="files_management.php" class="nav-link">
            <i class="nav-icon fa fa-sharp fa-solid fa-folder-open"></i>
              <p>
              REPOSITORY
              </p>
            </a>
          </li> -->

          <li class="nav-header">MANAGE</li>
          <!--  <li class="nav-item">
            <a href="contact.php" class="nav-link">
              <i class="nav-icon fa fa-sharp fa-solid fa-phone-office"></i> 
              <p>CONTACTS</p>
            </a>
          </li>-->
          <li class="nav-item">
            <a href="setting.php" class="nav-link">
              <i class="nav-icon fa fa-sharp fa-solid fa-browser"></i>
              <p>SETTINGS</p> 
            </a>
          </li>
          <li class="nav-item">
            <a href="report.php" class="nav-link">
              <i class="nav-icon fa fa-sharp fa-solid fa-chart-bar"></i> 
              <p>REPORTS</p>
            </a>
          </li>
        
          <li class="nav-header">DATABASE</li>
          <li class="nav-item">
            <a href="backup/backup.php" class="nav-link">
              <i class="nav-icon fas fa-database"></i>
              <p>
                BACKUP
              </p>
            </a>
          </li>
		 
        </ul>
      </nav>
       <?php } ?>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
