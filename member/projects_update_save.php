<?php
	include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'projects.php';
	}

	if(isset($_POST['submit'])){			
    	$SEARCH =$_POST['search'];
		$POST_TITLE			=mysqli_real_escape_string($conn, $_POST['POST_TITLE']);
		$POST_SLUG 			=mysqli_real_escape_string($conn, $_POST['POST_TITLE']);
		$POST_TITLE_SLUG 	=strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $POST_SLUG)));
		$POST_DETAILS		=mysqli_real_escape_string($conn, $_POST['POST_DETAILS']);
		$PUBLISHED_YEAR		=$_POST['PUBLISHED_YEAR'];
		$POSTED_BY =$user['LASTNAME'].', '.$user['FIRSTNAME'];
		$COURSE		=$user['COURSE'];

		if(!empty($_FILES["PDF_FILE"]["name"])) { 
				$fileName = basename($_FILES["PDF_FILE"]["name"]); 
				$fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
				$allowTypes = array('pdf','PDF');
				if(in_array($fileType, $allowTypes)){ 

					$FILE_NAME = $_FILES['PDF_FILE']['name']; 
					$FILE_TEMP = $_FILES['PDF_FILE']['tmp_name']; 
					$RENAME_FILE = preg_replace('/\s+/', '-', $FILE_NAME);
					$LOCATION = "../uploads/".$STUDENT_NO."/".$RENAME_FILE;
					$FILE_SIZE = $_FILES['PDF_FILE']['size'];
					$FILE_TYPE = $_FILES['PDF_FILE']['type'];
					if(!file_exists("../uploads/".$STUDENT_NO)){
						mkdir("../uploads/".$STUDENT_NO);
					}

          $query ="SELECT * FROM tbl_storage WHERE ID = '$SEARCH'";
          $query_run =$conn->query($query);
          $query_row = $query_run->fetch_assoc();
  
          $stud_no =  $query_row['STUDENT_NO'];
          $file_name =  $query_row['PDF_FILE'];
  
          if(unlink("../uploads/".$stud_no."/".$file_name)){
          }

		if(move_uploaded_file($FILE_TEMP, $LOCATION)){
          $sql="UPDATE tbl_storage
            SET POST_TITLE='$POST_TITLE', POST_TITLE_SLUG='$POST_TITLE_SLUG', POST_DETAILS='$POST_DETAILS', PDF_FILE='$RENAME_FILE',FILE_SIZE ='$FILE_SIZE', PUBLISHED_YEAR='$PUBLISHED_YEAR',POSTED_BY='$POSTED_BY', COURSE='$COURSE' WHERE ID = '$SEARCH'";
            if($conn->query($sql)){
              $_SESSION['success'] = 'Updated successfully.'; 

            }else{
              $_SESSION['error'] = $conn->error;
            }
        }

			}else{ 
				$_SESSION['error'] = 'Sorry, only PDF files are allowed to upload.'; 
			} 
		}else{ 
			//$_SESSION['error'] = 'Please select an PDF file to upload.'; 

          $sql="UPDATE tbl_storage
            SET POST_TITLE='$POST_TITLE', POST_TITLE_SLUG='$POST_TITLE_SLUG', POST_DETAILS='$POST_DETAILS', PUBLISHED_YEAR='$PUBLISHED_YEAR',POSTED_BY='$POSTED_BY',COURSE='$COURSE' WHERE ID = '$SEARCH'";
            if($conn->query($sql)){
              $_SESSION['success'] = 'Updated successfully.'; 
            }else{
              $_SESSION['error'] = $conn->error;
            }
		} 
	

	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
		
	}
	//header('location: clientAccount.php?q='.$_POST['id']);
	header('location:'.$return);
?>