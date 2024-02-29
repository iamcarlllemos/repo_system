<?php include "header.php";
$dates = array('1950-02-01', date('Y-m-d'));
?>
    <body class="hold-transition sidebar-mini">
      <?php include "top_navbar.php";?>
		 <section class="content">
			<div class="container-fluid container" data-aos="zoom-out" data-aos-delay="100">
				<div class="row">
                <div class="col-md-12 mt-3">
				<div class="list-group card-primary card-outline">
				<div class="list-group-item">
					<div class="row">
						<div class="col px-12">
							<h5 class="text-uppercase"><span class="fa fa-solid fa-folder-open text-primary"></span>ALL LISTS OF BSIS PROJECTS
							<a class="float-right nav-links btn btn-primary btn-sm" data-widget="navbar-searchs" href="#search_title" role="button" data-toggle="modal">
							<i class="fas fa-search"></i> SEARCH 
							</a>
						</h5>
						</div>
					</div>
				</div>
				<?php
				$currenturl="http://".$_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
				 if (isset($_GET['page_no']) && $_GET['page_no']!="") {
					$page_no = $_GET['page_no'];
					} else {
						$page_no = 1;
						}

					$total_records_per_page = 10;
					$offset = ($page_no-1) * $total_records_per_page;
					$previous_page = $page_no - 1;
					$next_page = $page_no + 1;
					$adjacents = "2"; 

					$result_count = mysqli_query($conn,"SELECT COUNT(*) As total_records FROM `tbl_storage` WHERE IS_ACTIVE='1' AND COURSE='BSIS'");
					$total_records = mysqli_fetch_array($result_count);
					$total_records = $total_records['total_records'];
					$total_no_of_pages = ceil($total_records / $total_records_per_page);
					$second_last = $total_no_of_pages - 1; // total page minus 1
		
					$news = "SELECT * FROM tbl_storage WHERE IS_ACTIVE='1' AND COURSE='BSIS' AND IS_ARCHIVED = 0 ORDER BY POSTING_DATE DESC LIMIT $offset, $total_records_per_page"; 
					$news_run=$conn->query($news);
					if($news_run -> num_rows >0){
					foreach($news_run as $value){
						
					$time=$value['POSTING_DATE'];
					$PUBLISHED_YEAR =date('Y',strtotime($value['PUBLISHED_YEAR']));
				?>
                    
      
                        <div class="list-group-item" id="results">
                            <div class="row">
                                <div class="col-auto">
									<?php 
								  if($value['POST_IMAGE']==""){
								  ?>
								   <img src="images/no-image-icon.png" class="img-fluid img-thumbnaill elevation-1" alt="User Image" width="160" height="160">
								  <?php }else{ ?>
									<a href="data:image/jpg;charset=utf8;base64,<?=base64_encode($value['POST_IMAGE']); ?>" data-toggle="lightbox" data-title="<i class='fa fa-newspaper'></i> <?=$value['POST_TITLE'];?>" data-gallery="gallery" allowfullscreen="true">
									<img src="data:image/jpg;charset=utf8;base64,<?=base64_encode($value['POST_IMAGE']); ?>" width="160" height="160" class="img-fluid img-thumbnaill elevation-1">
								  </a>
								  <?php }?>
                                </div>
                                <div class="col px-4">
                                    <div>
                                        <div class="float-rightS">
										 <h3><a style="color:#34495e;" href="<?='projects-details.php?news='.urlencode(base64_encode($value['ID']));?>"><?=$value['POST_TITLE'];?></a></h3>
                                        <p class="text-muted"><span class='fa fa-user text-muted text-lowercase'></span> 
										<?php 
											$date = new DateTime($value['POSTING_DATE']);
											$word_date = $date->format("F j, g:i A");
										?>
										<b>Posted by:</b> <?=$value['POSTED_BY'];?> on <?=htmlentities($word_date)?> | Year Published: 
											<?php if($value['PUBLISHED_YEAR']==''){
												print "No Published Year";
											}else{
												print $PUBLISHED_YEAR;
											}
											?>
											| Course: <?=$value['COURSE'];?>
										 	<?php if($value['LAST_UPDATE_BY']!=''):?>
											  | <b>Last Updated by </b> 
											  <?php echo htmlentities($value['LAST_UPDATE_BY']);?> on </b><?php echo htmlentities($value['UPDATION_DATE']);?>
											<?php endif;?>
										</p>
										<p class="text-muted">
										
										<?php
											
											$seconds_ago = (time() - strtotime($time));
											if ($seconds_ago >= 31536000) {
												echo "Posted <span class='fa fa-calendar'></span> " . intval($seconds_ago / 31536000) . " years ago";
											} elseif ($seconds_ago >= 2419200) {
												echo "Posted <span class='fa fa-calendar-week'></span> " . intval($seconds_ago / 2419200) . " months ago";
											} elseif ($seconds_ago >= 86400) {
												echo "Posted <span class='fa fa-calendar-days'></span> " . intval($seconds_ago / 86400) . " days ago";
											} elseif ($seconds_ago >= 3600) {
												echo "Posted <span class='fa fa-clock'></span> " . intval($seconds_ago / 3600) . " hours ago";
											} elseif ($seconds_ago >= 60) {
												echo "Posted <span class='fa fa-clock'></span> " . intval($seconds_ago / 60) . " minutes ago";
											} else {
												echo "Posted <span class='fa fa-clock'></span> less than a minute ago";
											}
										
										?>
										</p>
										</div>
                                        <p class="mb-0 text-justify"><?=substr($value['POST_DETAILS'], 0, 350);?>
										<a class="read_more" href="<?='projects-details.php?news='.urlencode(base64_encode($value['ID']));?>"> Read More</a>
										</p>
										
                                    </div>
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
								
                                </div>
                            </div>
                        </div>
                      
					<?php } ?>
					
					<?php }else{ ?>
						<div class="list-group-item">
							<div class="row">
								<div class="col px-4">
									<div>
										<h3><span class="fa fa-calendar-lines-pen"></span> No Post</h3>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
					
					</div>
					
					
					<br>
					<nav aria-label="Page navigation example">
					<ul class="pagination">
					
						<!---<li class='page-item'><a href='?page_no=1' class='page-link'>First</a></li>--->
						<li <?php if($page_no <= 1){ echo "class='disabled page-item'"; } ?>>
						<a class='page-link' <?php if($page_no > 1){ echo "href='?page_no=$previous_page'"; } ?>>Previous</a>
						</li>
					<?php 
					if ($total_no_of_pages <= 10){  	 
						for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
							if ($counter == $page_no) {
						   echo "<li class='active page-item'><a class='page-link'>$counter</a></li>";	
								}else{
						   echo "<li class='page-item'><a class='page-link' href='?page_no=$counter'>$counter</a></li>";
								}
						}
					}
					elseif($total_no_of_pages > 10){
						
					if($page_no <= 4) {			
					 for ($counter = 1; $counter < 8; $counter++){		 
							if ($counter == $page_no) {
						   echo "<li class='active page-item'><a class='page-link'>$counter</a></li>";	
								}else{
						   echo "<li class='page-item'><a class='page-link' href='?page_no=$counter'>$counter</a></li>";
								}
						}
						echo "<li class='page-item'><a class='page-link'>...</a></li>";
						echo "<li class='page-item'><a class='page-link' href='?page_no=$second_last'>$second_last</a></li>";
						echo "<li class='page-item'><a class='page-link' href='?page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";
						}

					 elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {		 
						echo "<li class='page-item'><a class='page-link' href='?page_no=1'>1</a></li>";
						echo "<li class='page-item'><a class='page-link' href='?page_no=2'>2</a></li>";
						echo "<li class='page-item'><a class='page-link'>...</a></li>";
						for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {			
						   if ($counter == $page_no) {
						   echo "<li class='active page-item'><a class='page-link'>$counter</a></li>";	
								}else{
						   echo "<li class='page-item'><a class='page-link' href='?page_no=$counter'>$counter</a></li>";
								}                  
					   }
					   echo "<li class='page-item'><a class='page-link'>...</a></li>";
					   echo "<li class='page-item'><a class='page-link' href='?page_no=$second_last'>$second_last</a></li>";
					   echo "<li class='page-item'><a class='page-link' href='?page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";      
							}
						
						else {
						echo "<li class='page-item'><a class='page-link' href='?page_no=1'>1</a></li>";
						echo "<li class='page-item'><a class='page-link' href='?page_no=2'>2</a></li>";
						echo "<li class='page-item'><a class='page-link'>...</a></li>";

						for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
						  if ($counter == $page_no) {
						   echo "<li class='active page-item'><a class='page-link'>$counter</a></li>";	
								}else{
						   echo "<li class='page-item'><a href='?page_no=$counter' class='page-link'>$counter</a></li>";
								}                   
								}
							}
					}
				?>
					
					<li <?php if($page_no >= $total_no_of_pages){ echo "class='disabled page-item'"; } ?>>
					<a class='page-link' <?php if($page_no < $total_no_of_pages) { echo "href='?page_no=$next_page'"; } ?>>Next</a>
					</li>
					<?php if($page_no < $total_no_of_pages){
						echo "<li class='page-item'><a href='?page_no=$total_no_of_pages' class='page-link'>Last</a></li>";
						} ?>
					
				</ul>
				</nav>
                </div>
            </div>
			</div>
		  </section>
		  
		  <!----recents-->
	 
	   <?php include "contact_us.php";?>
	   <?php include "footer.php";?>
      <script>
		$('.read_more a').click(function(e) {
			e.preventDefault();
		})
	  </script>
	 <script type="text/javascript">
    window.onload=function(){      
    $("#filter").keyup(function() {

      var filter = $(this).val(),
        count = 0;

      $('#results .row').each(function() {

        if ($(this).text().search(new RegExp(filter, "i")) < 0) {
          $(this).hide();

        } else {
          $(this).show();
          count++;
        }
      });
    });
    }
    </script>

    </body>
</html>