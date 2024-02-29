
<div class="modal fade " id="addmember">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><span class="fa fa-plus"></span> REGISTRATION FORM</h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="member_add.php" onSubmit="return valid();" enctype="multipart/form-data">
          		<div class="row">
				  <div class="col-sm-12">
								<div class="form-group">
								<span for="address" class="control-label">STUDENT/FACULTY ID NUMBER</span>
									<input type="text" class="form-control" name="STUDENT_NO" placeholder="ID NUMBER" required>
								</div>
							</div>
						   <div class="col-sm-5">
							  <div class="form-group">
								<span for="firstname" class="control-label">FIRST NAME</span>
									<input type="text" class="form-control text-capitalize" name="FIRSTNAME" placeholder="FIRST NAME" required>
								</div>
							</div>
						
							 <div class="col-sm-2">
							  <div class="form-group">
								<span for="firstname" class="control-label">M.I</span>
									<input type="text" class="form-control text-capitalize" maxlength="1" name="MI" placeholder="M.I">
								</div>
							</div>
							 <div class="col-sm-5">
							  <div class="form-group">
								<span for="firstname" class="control-label">LAST NAME</span>
									<input type="text" class="form-control text-capitalize" name="LASTNAME" placeholder="LAST NAME" required>
								</div>
							</div>
							<div class="col-sm-6">
							  <div class="form-group">
								<span for="firstname" class="control-label">GENDER </span>
								  <select class="form-control select2" name="GENDER" required>
									<option value="" selected>-SELECT-</option>
									<option>Male</option>
									<option>FeMale</option>
								  </select>
								</div>
							</div>

							
							<div class="col-sm-6">
							<div class="form-group">
								<span for="address" class="control-label">CONTACT</span>
								  <input type="text" class="form-control" name="CONTACT" placeholder="CONTACT" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
								</div>
							</div>

						   <div class="col-sm-12">
							<div class="form-group">
								<span for="address" class="control-label">PRESENT ADDRESS</span>
								  <input type="text" class="form-control text-capitalize" name="ADDRESS" placeholder="ADDRESS" required>
								</div>
							</div>
							

							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">EMAIL</span>
							<input type="email" class="form-control" name="EMAIL" id="email" onBlur="userAvailability()"  placeholder="EMAIL" required>
								<span id="user-availability-status1"></span>
								</div>
							</div>
							
							<div class="col-sm-6">
							  <div class="form-group">
								<span for="firstname" class="control-label">USER TYPE </span>
								  <select class="form-control select2" name="ROLE" required>
									<option value="" selected>-SELECT-</option>
									<option>STUDENT</option>
									<option>FACULTY</option>
								  </select>
								</div>
							</div>
							
							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">PASSWORD</span>
							<input type="password" class="form-control" id="Password" name="PASSWORD" placeholder="PASSWORD" required>
								</div>
							</div>
							<div class="col-sm-6">
							<div class="form-group">
							<span for="address" class="control-label">CONFIRM PASSWORD</span>
							<input type="password" class="form-control" id="ConfirmPassword" name="PASSWORD" placeholder="PASSWORD" required>
						  </div>
							</div>

							<div class="col-sm-12">
							 <div class="form-group">
							<span id="msg"></span>  
						  	</div>
							</div>
							
							 <div class="col-sm-7">
							  <div class="form-group">
								<span for="firstname" class="control-label">COURSE</span>
								  <select class="form-control select2 text-uppercase" name="COURSE" required>
									<option value="" selected>-SELECT-</option>
									<option value="BSIT">Bachelor of science in information technology</option>
									<option value="BSIS">Bachelor of science in information system</option>
								  </select>
								</div>
							</div>
							<div class="col-sm-5">
							  <div class="form-group">
								<span for="firstname" class="control-label">TRACK</span>
								  <select class="form-control select2 text-uppercase" name="TRACK" required>
									<option value="" selected>-SELECT-</option>
									<option value="Information System">Information System</option>
									<option value="Networking/Web Development">Networking/Web Development</option>
									
								  </select>
								</div>
							</div>

							<div class="col-md-12">
							<div class="form-group">
								<span for="photo" class="control-label">TAKE A SELFIE WITH YOUR ID FOR VERIFICATION </span>
								<input class="form-control" name="image" type="file" id="formFileBaptised" onchange="previeww()" required>
							</div>
							</div>
							<div class="col-md-12">
							<div class="form-group">
							   <img id="frameBaptised" src="" class="img-fluid " style="border-radius:10px" width="500">
							</div>
							</div>
			


				
                </div>
          	</div>
          	<div class="modal-footer">
			  <div class="btn-group">
            	<button type="button" class="btn bg-warning btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
            	<button type="submit" id="submit" class="btn bg-maroon btn-sm " name="submit"><i class="fa fa-solid fa-trash-can-xmark"></i> SUBMIT</button>
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
            <h5 class="modal-title"><span class="fa fa-question-circle"></span>Please Confirm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
 
            <div class="modal-body">
                <p> Are you sure you want to delete this record?</p>
                <form method="POST" action="member_delete.php" id="form-delete-user">
                    <input type="hidden" name="id">
                </form>
            </div>
 
            <div class="modal-footer">
			<div class="btn-group">
                <button type="button" class="btn bg-warning btn-sm" data-dismiss="modal"> <span class="fa fa-times"></span> CANCEL</button>
                <button type="submit" form="form-delete-user" name="form-delete-user" class="btn bg-maroon btn-sm"><i class="fa fa-solid fa-trash-can-xmark"></i> CONFIRM</button>
</div>
			</div>
 
        </div>
    </div>
</div>