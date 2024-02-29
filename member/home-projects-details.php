<?php include "includes/header.php";
$dates = array('1950-02-01', date('Y-m-d'));

if (empty($_SESSION['token'])) {
 $_SESSION['token'] = bin2hex(random_bytes(32));
}

if(isset($_POST['submit'])){
  //Verifying CSRF Token
	if (!empty($_POST['csrftoken'])) {
		if (hash_equals($_SESSION['token'], $_POST['csrftoken'])) {
		$name=$_POST['NAME'];
		$email=$_POST['EMAIL'];
		$comment=$_POST['COMMENT'];
		$newsid =base64_decode(urldecode($_GET['news']));
		$st1='0';
		$query=mysqli_query($conn,"INSERT into tbl_comments(NEWS_ID,NAME,EMAIL,COMMENT,STATUS) values('$newsid','$name','$email','$comment','$st1')");
		if($query):
		 $_SESSION['success']="comment successfully submit. Comment will be display after admin review";
		  unset($_SESSION['token']);
		else :
		 $_SESSION['error']="Something went wrong. Please try again.";  

		endif;

	}
  }
}


$news_id =base64_decode(urldecode($_GET['news']));
$sql = "SELECT VIEW_COUNTER FROM tbl_storage WHERE ID = '$news_id'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$visits = $row["VIEW_COUNTER"];
		$sql = "UPDATE tbl_storage SET VIEW_COUNTER = $visits+1 WHERE ID ='$news_id'";
		$conn->query($sql);
	}
}else{
	echo "no results";
}
?>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- .navbar -->
  <?php include "includes/navbar.php";?>
  <!-- /.navbar -->
  <?php include "includes/sidebar.php";?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

    <section class="content">
      <div class="container-fluid">
  
        <div class="row">
			
			<section class="content">
			<div class="container-fluid" data-aos="zoom-out" data-aos-delay="100">
				<div class="row">
                <div class="col-md-8 mt-3">
				<div class="list-group">
				<?php
				
					$currenturl="http://".$_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
					$newsquery = "SELECT * FROM tbl_storage WHERE ID='$news_id'"; 
					$news_run=$conn->query($newsquery);
					if($news_run -> num_rows >0){
					foreach($news_run as $value){
						
					$time_details=$value['POSTING_DATE'];
				?>
                    <div class="list-group-item">
					<div class="row">
						<div class="col-12">
							<h3><span class="fa fa-solid fa-folder text-primary"></span> <a style="color:#34495e;" href="<?='projects-details.php?news='.urlencode(base64_encode($value['ID']));?>"><?=$value['POST_TITLE'];?></a>
							
						</h3>
							
						</div>
					</div>
				</div>
      
                        <div class="list-group-item">
                            <div class="row">
                                <div class="col-auto" style="margin:auto;width:400psx">
									<?php 
								  if($value['POST_IMAGE']==""){
								  ?>
								   <img src="../images/no-image-icon.png" class="img-fluid img-thumbnaill elevation-1" alt="User Image" width="600" height="600">
								  <?php }else{ ?>
									<img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($value['POST_IMAGE']); ?>" width="600" height="600" class="img-fluid img-thumbnaill elevation-1">
								  <?php }?>
                                </div>
								
									
                                <div class="col-12">
								<span class="badge bg-maroon float-lefts"> <i class="fa fa-solid fa-eye"></i> 
									<?php
										$VIEW_COUNTER=0;
										$VIEW_COUNTER =  htmlentities($value['VIEW_COUNTER']);
										if ($VIEW_COUNTER> 999999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' M';
										}elseif ($VIEW_COUNTER > 999) {
										$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' K';
										}
										print $VIEW_COUNTER;
										?>
									Views </span>
                                    <div>
                                        <div class="float-rightS">
										 <!--<h3><?=$value['POST_TITLE'];?></h3>--->
                                        <p class="text-muted"><span class='fa fa-user text-muted text-lowercase'></span> 
										<?php
											$date = new DateTime($value['POSTING_DATE']);
	 										$word_date = $date->format("F j, g:i A");
										?>
										<b>Posted by:</b> <?=$value['POSTED_BY'];?> on <?=htmlentities($wo)?> 
										
										 <?php if($value['LAST_UPDATE_BY']!=''):?>
											  | <b>Last Updated by </b> <?php echo htmlentities($value['LAST_UPDATE_BY']);?> on </b><?php echo htmlentities($value['UPDATION_DATE']);?>
											<?php endif;?>
										</p>
										<p class="text-muted">
										<?php
											
											$seconds_ago_details = (time() - strtotime($time_details));
											if ($seconds_ago_details >= 31536000) {
												echo "Posted <span class='fa fa-calendar'></span> " . intval($seconds_ago_details / 31536000) . " years ago";
											} elseif ($seconds_ago_details >= 2419200) {
												echo "Posted <span class='fa fa-calendar-week'></span> " . intval($seconds_ago_details / 2419200) . " months ago";
											} elseif ($seconds_ago_details >= 86400) {
												echo "Posted <span class='fa fa-calendar-days'></span> " . intval($seconds_ago_details / 86400) . " days ago";
											} elseif ($seconds_ago_details >= 3600) {
												echo "Posted <span class='fa fa-clock'></span> " . intval($seconds_ago_details / 3600) . " hours ago";
											} elseif ($seconds_ago_details >= 60) {
												echo "Posted <span class='fa fa-clock'></span> " . intval($seconds_ago_details / 60) . " minutes ago";
											} else {
												echo "Posted <span class='fa fa-clock'></span> less than a minute ago";
											}
										
										?>
										</p>
										</div>
                                        <p class="mb-0 text-justify"><?=$value['POST_DETAILS'];?></p>
                                    </div>
									 
                                </div>
                            </div>
							<?php if($value['PDF_FILE']==""){?>
								<h3 class="text-maroon" >No PDF File</h3>
							<?php }else{ ?>
							<div class="col-md-12s mt-3">
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" height="300" src="<?='../uploads/'.$value['STUDENT_NO'].'/'.$value['PDF_FILE']?>" allowfullscreen></iframe>
								</div>
							</div> 
							<?php } ?>
                          </div>
					<?php } ?>
					
					<?php }else{ ?>
						<div class="list-group-item">
							<div class="row">
								<div class="col px-4">
									<div>
										<h3><span class="fa fa-calendar-lines-pen"></span> No Events </h3>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
							<!-- left column -->
							<?php
					  if(isset($_SESSION['error'])){
						echo "
						<div id='alert' class='alert alert-danger'>
						  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						  <h4><i class='icon fa fa-warning'></i> ERROR!</h4>
						  ".$_SESSION['error']."
						</div>
						";
						unset($_SESSION['error']);
					  }
					  if(isset($_SESSION['success'])){
						echo "
						<div class='alert bg-teal' id='alert'>
						  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						  <h4><i class='icon fa fa-check'></i> SUCCESS!</h4>
						  ".$_SESSION['success']."
						</div>
						";
						unset($_SESSION['success']);
					  }
					  ?>
					</div>
					
            <!-- general form elements -->
				<!------commmnet section---->
		
				
			
			
			
           
     
			
			<!----end of comment--->
                </div>
				<?php include "projects/projects_recent.php";?>
            </div>
			
			</div>
		  </section>
			
        </div><!----end of row--->
        
      </div>
    </section>
  </div>
  <!-- /.content-wrapper -->
   <?php include "projects/contact_us.php";?>
  <?php include "includes/footer.php";?>
       <script>
	  $(function () {
		$('#summernote').summernote()
	  })
	</script>
</body>
</html>


 
