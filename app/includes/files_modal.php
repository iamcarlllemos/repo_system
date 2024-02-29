<div class="modal fade" id="newincident">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><i class="fa fa-solid fa-arrow-up-from-bracket"></i> UPLOAD FILE</h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="files_management_add.php" onSubmit="return valid();" enctype="multipart/form-data">
          		<div class="row">
				 <div class="col-sm-12">
          		      <div class="form-group">
                  	<label class="control-label">DESCRIPTION</label>
                    	<input type="text" class="form-control text-uppercase" name="DESCRIPTION" placeholder="DESCRIPTION" required>
                  	</div>
                </div>

				<div class="col-md-12">
                <div class="form-group">
                    <label for="photo" class="control-label">BROWSE FILE</label>
                    <input class="form-control" name="FILE" type="file" id="inciformFile"><br>
                </div>
                </div>

                </div><!----row-->
          	</div>
          	<div class="modal-footer">
              <div class="btn-group">
            	<button type="button" class="btn bg-warning btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
            	<button type="submit" class="btn bg-maroon btn-sm" name="submit"><i class="fa fa-save"></i> SUBMIT</button>
                </div>	
            </form>
          	</div>
        </div>
    </div>
</div>




<!-- Add -->
<div class="modal fade" id="request_assistance">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><span class="fa fa-plus"></span> REQUEST FORM</h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="request_assistance_add.php" onSubmit="return valid();" enctype="multipart/form-data">
          		<div class="row">
				  
				<div class="col-sm-6">
          		  <div class="form-group">
                  	<label class="control-label">REQUEST DATETIME</label>
                    	<input type="datetime-local" class="form-control text-uppercase" name="REQUEST_DATETIME" placeholder="ID No." required>
                  	</div>
                </div>

				<div class="col-sm-6">
					<div class="form-group">
					<label class="control-label">RESPONDENT TYPE </label>
						<select class="form-control select2 text-uppercase" name="REQ_RESPONDENT_ID" required>
						<option value="" selected>-select-</option>
						 <?php 
						 	$REST_query ="SELECT RES_ID, UPPER(RES_NAME) AS RES_NAME_LIST FROM tbl_respondent_type_list WHERE RES_STATUS='ACTIVE' ORDER BY RES_NAME ASC";
							$REST_query_run =$conn->query($REST_query);
							if($REST_query_run->num_rows >0){
								foreach ($REST_query_run as $key => $res_query_run_row) {
									echo '<option value="'.$res_query_run_row['RES_ID'].'">'.$res_query_run_row['RES_NAME_LIST'].'</option>';
								}			
						 ?>
						 <?php }else{ ?>
							<option value="">No respondent found</option>
						<?php } ?>
						</select>
					</div>
				</div>

				<div class="col-sm-12">
          		      <div class="form-group">
                  	<label class="control-label">COMMENTS</label>
					  <textarea rows="8" class="form-control summernote text-uppercase" name="REQ_COMMENT" required></textarea>
                  	</div>
                </div>

                </div><!----row-->
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn bg-warning btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
            	<button type="submit" class="btn bg-maroon btn-sm" name="submit"><i class="fa fa-sharp fa-regular fa-floppy-disk-circle-arrow-right"></i> SUBMIT</button>
            	</form>
          	</div>
        </div>
    </div>
</div>

<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
             
			<div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span>PLEASE CONFIRM</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
 
            <div class="modal-body">
                <p> Are you sure you want to delete this record?</p>
                <form method="POST" action="files_management_delete.php" id="form-delete-user">
                    <input type="hidden" name="id">
                </form>
            </div>
 
            <div class="modal-footer">
                <button type="button" class="btn bg-warning btn-sm" data-dismiss="modal"> <span class="fa fa-times"></span> CANCEL</button>
                <button type="submit" form="form-delete-user" name="form-delete-user" class="btn bg-maroon btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> CONFIRM</button>
            </div>
 
        </div>
    </div>
</div>



<div class="modal fade" id="myModalEdit">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-edit"></span> UPDATE RECORD</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="files_management_edit.php" method="POST" id="form-edit-incident" enctype="multipart/form-data">
          		<div class="row">
                 <input type="hidden" name="id">
				 	<div class="col-sm-12">
					  <div class="form-group">
						<label for="firstname" class="control-label">STATUS</label>
						  <select class="form-control select2" name="FILESTATUS" required>
						  <option value="" selected>-select-</option>
						  <option value="0">FOR APPROVAL</option>
						  <option value="1">APPROVED</option>
							<option value="2">REJECTED</option>
						  </select>
						</div>
					</div>
						
					<div class="col-sm-12">
						<div class="form-group">
							<label class="control-label">REMARKS</label>
							<textarea rows="8" class="form-control summernote text-uppercase" name="REMARKS" required></textarea>
						</div>
               		 </div>

					</div>
				 </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn bg-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
                <button type="submit" form="form-edit-incident" name="form-edit-incident" class="btn bg-maroon btn-sm"><i class="fa fa-sharp fa-regular fa-floppy-disk-circle-arrow-right"></i> SUBMIT</button>
            </div>
        </div>
    </div>
</div>

