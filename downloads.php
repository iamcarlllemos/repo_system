<?php include "header.php";?>
  <body>
  <?php include "top_navbar.php";?>
  <section class="text-center text-white" style="background:rgba(190, 46, 221,0.40)">
        <div class="containerS">
        <div class="card" style="box-shadow:none;background:rgba(190, 46, 221,0.40)">
          <h1 class="jumbotron-heading">DOWNLOADABLE FILES</h1>
          </div>
        </div>
      </section>
    <main role="main">
	<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12 mt-0">
            <div class="card">
              <div class="card-header">
              <h3 class="card-title"> 
              <a href="#"><i class="fa fa-solid fa-folder-arrow-down"></i> FILES</a>
              </h3>
			      	<div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
			          <table id="example1" class="table table-bordered table-striped text-nowrap">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>UPLOADED BY</th>
                    <th>FILE NAME</th>
                    <th>FILE SIZE</th>
                    <th>DATE UPLOAD</th>
                    <th>DOWNLOADS</th>
                    <th>DOWNLOAD</th>
                  </tr>
                  </thead>
                  <tbody>
				        	<?php
                    
                    $sql = "SELECT * FROM tbl_repository tr INNER JOIN tbl_member tm ON tr.STUDENT_NO=tm.STUDENT_NO WHERE tr.FILESTATUS='1' ORDER BY DATETIME DESC";
                    $query = $conn->query($sql);
				        	$cnt=1;
                    while($row = $query->fetch_assoc()){
  
                      ?>
                        <tr >
                          <td><?=$cnt; ?></td>
                          <td><a href="#" class="text-primary text-capitalize"><?=htmlentities($row['LASTNAME'].', '.$row['FIRSTNAME'].' '.$row['MI']); ?></a></td>
                          <td data-mytooltip="tooltip" data-placement="top" title="<?=$row['DESCRIPTION']?>"><?php $path = htmlentities(ucwords(strtolower($row['FILENAME'])));echo $extension = pathinfo($path, PATHINFO_FILENAME);?></td>
                          <td>
                          <?php
                            $path =  htmlentities($row['FILENAME']);
                            $extension = pathinfo($path, PATHINFO_EXTENSION);
                            
                            if($extension =="pdf"){
                              echo("<span class='fa fa-file-pdf text-danger fa-xl'></span>");
                            }
                            
                            else if($extension =="pptx"){
                              echo("<span class='fa fa-file-powerpoint text-warning fa-xl'></span>");
                            }
                            else if($extension =="docx"){
                              echo("<span class='fa fa-file-word text-primary fa-xl'></span>");
                            }
                            else if($extension =="doc"){
                              echo("<span class='fa fa-file-word text-info fa-xl'></span>");
                            }
                            else if($extension =="ppt"){
                              echo("<span class='fa fa-file-powerpoint text-warning fa-xl'></span>");
                            }
                            else if($extension =="xlsx"){
                              echo("<span class='fa fa-file-excel text-success fa-xl'></span>");
                            }
                            else if($extension =="xls"){
                              echo("<span class='fa fa-file-excel text-success fa-xl'></span>");
                            }
                            else if($extension =="png"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="jpeg"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="jpg"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else if($extension =="gif"){
                              echo("<span class='fa fa-file-image text-maroon fa-xl'></span>");
                            }
                            else{
                              echo("<span class='fa fa-file-minus fa-xl'></span>");
                            }
                            ?> 
                            <?php
                            $FILESIZE=htmlentities($row['FILESIZE']);
                            if ($FILESIZE >= 1073741824)
                            {
                              echo $FILESIZE = number_format($FILESIZE / 1073741824, 2) . ' GB';
                            }
                            elseif ($FILESIZE >= 1048576)
                            {
                              echo $FILESIZE = number_format($FILESIZE / 1048576, 2) . ' MB';
                            }
                            elseif ($FILESIZE >= 1024)
                            {
                              echo $FILESIZE = number_format($FILESIZE / 1024, 2) . ' KB';
                            }
                            elseif ($FILESIZE > 1)
                            {
                              echo $FILESIZE = $FILESIZE . ' bytes';
                            }
                            elseif ($FILESIZE == 1)
                            {
                              echo $FILESIZE = $FILESIZE . ' byte';
                            }
                            else
                            {
                              echo $FILESIZE = '0 bytes';
                            }
                          ?>
                         
                          </td>
                          <td><?=$row['DATETIME'];?></td>
                          <td>
                            <?php
                            $DOWNLOAD=0;
                             $DOWNLOAD =  htmlentities($row['DOWNLOAD']);
                            if ($DOWNLOAD> 999999) {
                              $DOWNLOAD = number_format(($DOWNLOAD / 1000),1) . ' M';
                            }
                            elseif ($DOWNLOAD > 999) {
                              $DOWNLOAD = number_format(($DOWNLOAD / 1000),1) . ' K';
                            }
                            ?>
                            <span class="text-primary"><?=$DOWNLOAD;?></span>
                          </td>
                            <td align="right">
                            <a data-target='#RegistrmyModal' data-toggle='modal' class="btn bg-gradient-teal btn-sm"><i class="fa fa-solid fa-download"></i> </a>  
                          </td>
                        </tr>
                      <?php
					        $cnt++;
                    }
                  ?>
                  </tbody>
                 
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
          </div>
          <?php //include "download_most.php";?>
          <!-- /.col -->
        </div>
        
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
	<div id="RegistrmyModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
             
			<div class="modal-header">
            <h5 class="modal-title"><i class="fa fa-regular fa-face-sunglasses"></i> HORRAY!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
 
            <div class="modal-body">
                <p> PLEASE CREATE ACCOUNT AND LOGIN TO DOWNLOAD</p>
            </div>
 
            <div class="modal-footer">
				<div class="btn-group">
                <!---<button type="button" class="btn bg-teal btn-sm" data-dismiss="modal"> <span class="fa fa-times"></span> CANCEL</button>--->
                <a href="register.php" class="btn bg-navy btn-sm"><i class="fa fa-solid fa-arrow-right-to-bracket"></i> PROCEED</a>
				</div>
            </div>
        </div>
    </div>
</div>
    </main>
    <?php include "contact_us.php";?>
   <?php include "footer.php";?>
    </body>
</html>