	<div class="col-md-4 mt-0">
		<div class="card card-default">
		  <div class="card-header">
			<h3 class="card-title">
			<i class="fa fa-solid fa-folder-arrow-down"></i>
			  Most Downloads
			</h3>
		  </div>
		  
		  <!-- /.card-header -->
		  <div class="card-body">
			<?php
				$recentnews ="SELECT * FROM tbl_repository WHERE FILESTATUS=1 ORDER BY DOWNLOAD DESC LIMIT 10";
				$recentnews_run =$conn->query($recentnews);
				$cnt =1;
				if($recentnews_run->num_rows>0){
					foreach($recentnews_run as $key=> $most_views){
				$timego=$most_views['DATETIME'];
				$FILE_NAME =$most_views['FILENAME'];
				$RENAME_FILE =preg_replace("/[^a-zA-Z0-9]+/", " ", $FILE_NAME);			
			?>

			<div class="list-group">
				<ol>
                  <li value="<?=$cnt++;?>"><?=$RENAME_FILE;?></li>
            	</ol>
			</div>
			<?php } ?>
			<?php }else{?>
				<div class="callout callout-info">
				  <p>No Files</p>
				</div>
			<?php } ?>
		  </div>
		  <!-- /.card-body -->
		</div>
		<!-- /.card -->
		
	  </div>
	  
	  