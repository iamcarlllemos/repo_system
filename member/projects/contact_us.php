

      <div class="modal fade" id="search_title">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          	<div class="modal-header">
			  <h4 class="modal-title"><i class="fa fa-solid fa-search"></i> SEARCH</h4>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="GET" action="home-search-result.php" enctype="multipart/form-data">
          		<div class="row">
				        <div class="col-sm-12">
          		      <div class="form-group">
                  	<label class="control-label">KEYWORDS</label>
                    	<input type="text" class="form-control" name="KEYWORDS" placeholder="search a keyword, title or author">
                  	</div>
                </div>
                <div class="col-sm-12">
          		      <div class="form-group">
                  	  <label class="control-label">TRACK</label>
                      <select name="TRACK" id="TRACK" class="form-control">
                        <option value="">Choose</option>
                        <option value="networking">Networking</option>
                        <option value="web development">Web Development</option>
                        <option value="graphics">Graphics</option>
                        <option value="animation">Animation</option>
                        <option value="interactive technology">Interactive Technology</option>
                        <option value="information management">Information Management</option>
                        <option value="information system">Information System</option>
                      </select>
                  	</div>
                </div>
				        <div class="col-md-12">
                <div class="form-group">
                    <label for="photo" class="control-label">PUBLISHED YEAR FROM</label>
                    <input class="form-control" value="<?=min($dates);?>" name="PUB_YEAR_FROM" type="date">
                </div>
                </div>

                <div class="col-md-12">
                <div class="form-group">
                    <label for="photo" class="control-label">PUBLISHED YEAR TO</label>
                    <input class="form-control" value="<?=max($dates);?>" name="PUB_YEAR_TO" type="date">
                </div>
                </div>

                </div><!----row-->
          	</div>
          	<div class="modal-footer">
              <div class="btn-group">
            	<button type="button" class="btn bg-gradient-warning text-white btn-sm pull-left" data-dismiss="modal"><i class="fa fa-times"></i> CANCEL</button>
            	<button type="submit" class="btn bg-gradient-maroon btn-sm" name="submit"><i class="fa fa-search"></i> SEARCH</button>
                </div>	
            </form>
          	</div>
        </div>
    </div>
</div>