<!---ADMIN DASHBOARD FOR ADD---->
<div class="modal fade" id="add">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><span class="fa fa-plus"></span> POST PROJECT</h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="my-projects_add.php" enctype="multipart/form-data">
          		  <div class="row">
                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PROJECT TITLE</label>
                            <input type="text" class="form-control" maxlength="100" name="POST_TITLE" placeholder ="POST TITLE" required>
                        </div>
                    </div>
                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PUBLISHED YEAR</label>
                            <input type="date" class="form-control" name="PUBLISHED_YEAR" placeholder ="PUBLISHED YEAR" required>
                        </div>
                    </div>
                    <div class="col-sm-12">
                <div class="form-group">
                  	<label for="address" class="control-label">ABSTRACT, GLOSARRY, CONCLUSIONS AND RECOMMENDATION</label>
                      <textarea rows="8" class="form-control summernote" name="POST_DETAILS"></textarea>
                  	</div>
                </div>

                <div class="col-md-12">
                <div class="form-group">
                    <label for="photo" class="control-label">CONVERT [TOC, CHAPTER 1 & 2 AND REFERENCE] INTO PDF FILE</label>
                    <input class="form-control" name="PDF_FILE" type="file" required><br>
                </div>
                </div>

                </div><!----row-->
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> CANCEL</button>
            	<button type="submit" class="btn btn-primary btn-sm" name="submit"><i class="fa fa-save"></i> SUBMIT</button>
            	</form>
          	</div>
        </div>
    </div>
</div>
<!---FOR EDIT---->
<div class="modal fade" id="myModalEdit">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><span class="fa fa-edit"></span> UPDATE PROJECT </h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="projects_edit.php" id="form-edit-news" enctype="multipart/form-data">
          		  <div class="row">
                    <input type="hidden" class="form-control" name="id" required>
                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PROJECT TITLE</label>
                             <input type="text" class="form-control" maxlength="40" name="title" required>
                        </div>
                    </div>
                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PUBLISHED YEAR</label>
                            <input type="date" class="form-control" name="PUBLISHED_YEAR" required>
                        </div>
                    </div>
                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">PROJECT STATUS</label>
                            <select name="active" class="form-control" required>
                                <option id="active" selected></option>
                                <option value="0">PENDING</option>
                                <option value="1">APPROVED</option>
                                <option value="2">REJECTED</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-12">
                       <div class="form-group">
                             <label for="lastname" class="control-label">REASON TO REJECT</label>
                             <input type="text" class="form-control" name="REJECTED_REMARKS">
                        </div>
                    </div>

                </div><!----row-->
                </form>
          	</div>
          	<div class="modal-footer">
                <div class="btn-group">
            	<button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
            	<button type="submit" form="form-edit-news" class="btn bg-gradient-maroon btn-sm" name="form-edit-news"><i class="fa fa-sharp fa-regular fa-floppy-disk-circle-arrow-right"></i> SUBMIT</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!---FOR DELETE---->
<div class="modal fade" id="myModalArchive">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span> Are you sure you want to transfer this record to archive?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_delete.php" method="POST" id="form-archive-x">
                 <input type="hidden" class="id" name="id">
                 <div class="col-md-12">
                    <div class="form-group">
                        <label for="">PROJECT TITLE</label>
                        <input type="text" name="title_delete" class="form-control" readonly>
                    </div>
                 </div>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> NO</button>
                <button type="submit" name="form-archive" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-thrash"></i> <i class="fa fa-sharp fa-solid fa-trash-xmark"></i>  YES</button>
            </div>
            </div>
            </form>
        </div>
    </div>
</div>


<div class="modal fade" id="myModalFullyDelete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span> Are you sure you want to delete this record?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_delete.php" method="POST" id="form-delete-x">
                 <input type="hidden" class="id" name="id">
                 <div class="col-md-12">
                    <div class="form-group">
                        <label for="">PROJECT TITLE</label>
                        <input type="text" name="title_delete" class="form-control mb-3" readonly>
                        <textarea name="remarks" id="remarks" cols="30" rows="5" class="form-control w-100" style="resize: none" placeholder="Remarks..."></textarea>
                    </div>
                 </div>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> NO</button>
                <button type="submit" name="form-delete" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-thrash"></i> <i class="fa fa-sharp fa-solid fa-trash-xmark"></i>  YES</button>
            </div>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="myModalRestoreArchive">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span> Are you sure to restore this record?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_delete.php" method="POST" id="form-unarchive-x">
                 <input type="hidden" class="id" name="id">
                 <div class="col-md-12">
                    <div class="form-group">
                        <label for="">PROJECT TITLE</label>
                        <input type="text" name="title_delete" class="form-control" readonly>
                    </div>
                 </div>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> NO</button>
                <button type="submit" name="form-unarchive" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-thrash"></i> <i class="fa fa-sharp fa-solid fa-trash-xmark"></i>  YES</button>
            </div>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="myModalDeleteComment">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span> CONFIRM</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="projects_comments_delete.php" method="POST" id="form-delete-comments">
                <input type="hidden" class="id" name="id">
                 <p>Are you sure you want to delete this comment?</p>
                 </form>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> NO</button>
                <button type="submit" form="form-delete-comments" name="form-delete-comments" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-sharp fa-solid fa-trash-xmark"></i>  YES</button>
            </div>
</div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModalApprovedComment">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-question-circle"></span> CONFIRM</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_comments_approved_.php" method="POST" id="form-approved-comments">
                 <input type="hidden" class="id" name="id">
                 <span>Are you sure you want to approved this commnent?</span>
                 </form>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> NO</button>
                <button type="submit" form="form-approved-comments" name="form-approved-comments" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-sharp fa-solid fa-trash-xmark"></i>  YES</button>
            </div>
</div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModalEditPhoto">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-edit"></span> UPDATE PICTURE</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_edit_photo.php" method="POST" id="form-edit_photo-news" enctype="multipart/form-data">
                 <input type="hidden" class="id" name="id">
                 <div class="col-md-12">
                <div class="form-group">
                    <label for="photo" class="control-label">SELECT IMAGE</label>
                    <input class="form-control" name="NEWS_IMAGE_EDIT" type="file" id="editNewsformFile" onchange="editNewspreview()" required><br>
                   <img id="editnewsframe" src="" class="img-fluid " style="border-radius:10px">
                </div>
                </div>
                 </form>
            </div>
            <div class="modal-footer">
            <div class="btn-group">
                <button type="button" class="btn bg-gradient-warning btn-sm" data-dismiss="modal"><i class="fa fa-times"></i> CLOSE</button>
                <button type="submit" form="form-edit_photo-news" name="form-edit_photo-news" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-sharp fa-regular fa-floppy-disk-circle-arrow-right"></i>   SUBMIT</button>
            </div>
</div>
        </div>
    </div>
</div>