

<div class="modal fade" id="SEARCH_COURSE">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title"><span class="fa fa-edit"></span> UPDATE PICTURE</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="projects_edit_photo.php" method="POST" id="form-course" enctype="multipart/form-data">
                 <input type="text" class="id" name="COURSE">
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
                <button type="submit" form="form-course" class="btn bg-gradient-maroon btn-sm"><i class="fa fa-sharp fa-regular fa-floppy-disk-circle-arrow-right"></i>   SUBMIT</button>
            </div>
</div>
        </div>
    </div>
</div>