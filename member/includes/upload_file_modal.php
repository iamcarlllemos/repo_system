
<!-- Add -->
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
            	<form class="form-horizontal" method="POST" action="repository_management_add.php" onSubmit="return valid();" enctype="multipart/form-data">
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
            	<button type="button" class="btn bg-teal btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
            	<button type="submit" class="btn bg-navy btn-sm" name="submit"><i class="fa fa-save"></i> SUBMIT</button>
                </div>	
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
                <form method="POST" action="repository_management_delete.php" id="form-delete-user">
                    <input type="hidden" name="FILEID">
                </form>
            </div>
 
            <div class="modal-footer">
                <div class="btn-group">
                <button type="button" class="btn bg-teal btn-sm" data-dismiss="modal"> <span class="fa fa-times"></span> CANCEL</button>
                <button type="submit" form="form-delete-user" name="form-delete-user" class="btn bg-navy btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> CONFIRM</button>
                </div>
            </div>
        </div>
    </div>
</div>







