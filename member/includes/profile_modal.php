<!-- Add -->
<div class="modal fade" id="profile">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
			      <h4 class="modal-title"> <span class="fa fa-user"></span> CHANGE PHOTO</h4>
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="profile_update.php?return=<?=basename($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
				      <div class="row">
				        <div class="col-md-12">
                <div class="form-group">
                <input type="hidden" class="form-control" name="ID" value="<?=$user['ID']; ?>">
                    <label for="photo" class="control-label">Photo:</label>
                    <input class="form-control" name="image" type="file" id="ProfileformFile" onchange="Profileincipreview()"><br>
                   <img id="Profileframe" src="" class="img-fluid " style="border-radius:10px">
                </div>
                </div>
               
               </div>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn bg-teal btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> CLOSE</button>
            	<button type="submit" class="btn bg-navy btn-sm" name="upload"><i class="fa fa-check-square-o"></i> SUBMIT</button>
            	</form>
          	</div>
        </div>
    </div>
</div>

<div class="modal fade" id="logout">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
      <h4 class="modal-title">Logout</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <p>Are you sure you want to logout now?</p>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><i class="fas fa-close"></i> Close</button>
      <a href="logout.php" class="btn bg-teal btn-sm"><i class="fa fa-check-square-o"></i> Logout</a>
    </div>

    </div>
    <!-- /.modal-content -->
  </div>
<!-- /.modal-dialog -->
</div>

	<div class="modal fade" id="editProfile">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title"><span class="fa fa-edit"></span>CHANGE PASSWORD</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="change_password.php?return=<?php echo basename($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
          		  <div class="row">   
             

                <div class="col-sm-12">
                    <div class="form-group">
                  	<label for="firstname" class="control-label">NAME </label>
                    	<input type="text" class="form-control" value="<?=$user['LASTNAME'].', '.$user['FIRSTNAME'].' '.$user['MI']; ?>" readonly>
                  	</div>
                </div>


                <div class="col-sm-12">
                    <div class="form-group">
                  	<label for="username" class="control-label">EMAIL</label>
                    	<input type="text" class="form-control" name="EMAIL" value="<?=$user['EMAIL']; ?>">
                  	</div>
                </div>
                
                <div class="col-sm-12"> 
                    <div class="form-group">
                    <label for="password" class="control-label">PASSWORD</label>
                      <input type="password" class="form-control" name="PASSWORD" value="<?=$user['PASSWORD']; ?>">
                    </div>
                </div>
                    <div class="col-sm-12">
                    <div class="form-group">
                    <label for="curr_password" class="control-label">CURRENT PASSWORD <i> input current password to save changes</i></label>
                      <input type="password" class="form-control" name="curr_password" placeholder="input current password to save changes" required>
                    </div>
                </div>
                </div><!----row--->
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> CLOSE</button>
              <button type="submit" class="btn btn-primary btn-sm" name="SUBMIT"><i class="fa fa-check-square-o"></i> SUBMIT</button>
            </div>
			  </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->  
	  
	  
	  <div class="modal fade" id="updateprofile">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title"><span class="fa fa-edit"></span>UPDATE PROFILE</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="profile_edit.php?return=<?php echo basename($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
          		  <div class="row">   
				   <div class="col-sm-5">
					  <div class="form-group">
						<label for="firstname" class="control-label">FIRST NAME</label>
							<input type="text" class="form-control text-uppercase" value="<?=$user['FIRSTNAME'];?>" name="FIRSTNAME" placeholder="FIRST NAME" required>
						</div>
					</div>
				
					 <div class="col-sm-2">
					  <div class="form-group">
						<label for="firstname" class="control-label">M.I</label>
							<input type="text" class="form-control text-uppercase" value="<?=$user['MI'];?>" maxlength="1" name="MI" placeholder="M.I">
						</div>
					</div>
					 <div class="col-sm-5">
					  <div class="form-group">
						<label for="firstname" class="control-label">LAST NAME</label>
							<input type="text" class="form-control text-uppercase" value="<?=$user['LASTNAME'];?>" name="LASTNAME" placeholder="LAST NAME" required>
						</div>
					</div>
					<div class="col-sm-6">
					  <div class="form-group">
						<label for="firstname" class="control-label">GENDER </label>
						  <select class="form-control select2" name="GENDER" required>
							<option value="<?=$user['GENDER'];?>" selected><?=$user['GENDER'];?></option>
							<option>MALE</option>
							<option>FEMALE</option>
						  </select>
						</div>
					</div>

					
					<div class="col-sm-6">
					<div class="form-group">
						<label for="address" class="control-label">CONTACT</label>
						  <input type="text" class="form-control" name="CONTACT" placeholder="CONTACT" value="<?=$user['CONTACT'];?>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
					</div>

						  <div class="col-sm-12">
					<div class="form-group">
						<label for="address" class="control-label">PRESENT ADDRESS</label>
						  <input type="text" class="form-control text-uppercase" value="<?=$user['ADDRESS'];?>" name="ADDRESS" placeholder="ADDRESS" required>
						  
						</div>
					</div>
					

					<div class="col-sm-12">
							<div class="form-group">
					<label for="address" class="control-label">EMAIL</label>
					<input type="text" class="form-control" name="EMAIL" value="<?=$user['EMAIL'];?>"  placeholder="EMAIL" required>
						<span id="user-availability-status1"></span>
						</div>
					</div>

                    <div class="col-sm-12">
                    <div class="form-group">
                    <label for="curr_password" class="control-label">CURRENT PASSWORD <i> input current password to save changes</i></label>
                      <input type="password" class="form-control" name="curr_password" placeholder="input current password to save changes" required>
                    </div>
                </div>
                </div><!----row--->
            </div>
            <div class="modal-footer">
              <button type="button" class="btn bg-navy btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> CLOSE</button>
              <button type="submit" class="btn bg-teal btn-sm" name="submit"><i class="fa fa-check-square-o"></i> SUBMIT</button>
            </div>
			  </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->  

      <div class="modal fade" id="delete_account">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
      <h4 class="modal-title"><span class="fa fa-trash"></span> Are you sure you want to delete your account now?</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <p>What happens if I permanently delete my MDRRMO account?</p>
      
      <ul>
        <li>You won't be able to reactivate your account</li>
        <li>Your profile, photos, posts, videos, and everything else you've added will be permanently deleted. You won't be able to retrieve anything you've added.</li>
        <li>You'll no longer be able to use MDRRMO site.</li>
        <li>You won't be able to use MDRRMO Login for other apps you may have signed up for with your MDRRMO account. You may need to contact the MDRRMO to recover those accounts.</li>
        <li>Some information, like report incident,request assistance you sent to MDRRMO. Copies of request you have sent are stored in our database, inboxes.</li>
        <li>If you use your MDRRMO account to log into Meta Quest, deleting your MDRRMO account will also delete your Meta Quest information. This includes your request, and your achievements. You will no longer be able to return  and will lose any existing accounts.</li>
      </ul>
      <form action="account_disabled.php" method="POST" id="form-reason">
          <div class="row">
          <div class="col-sm-12">
					<div class="form-group">
						<label for="address" class="control-label">REASON</label>
						  <textarea class="form-control text-uppercase summernote" name="DELETE_REASON" placeholder="Reason of deletion" required></textarea>
						</div>
					</div>
          </div>
      </form>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn bg-teal btn-sm" data-dismiss="modal"><i class="fas fa-close"></i> CLOSE</button>
      <button type="submit" form="form-reason" name="form-reason" class="btn bg-navy btn-sm"><i class="fa fa-sharp fa-regular fa-square-check"></i> CONFIRM</button>
    </div>

    </div>
    <!-- /.modal-content -->
  </div>
<!-- /.modal-dialog -->
</div>