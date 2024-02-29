<?php
	include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'repository_management.php';
	}

	if(isset($_POST['submit'])){			

			$DESCRIPTION=mysqli_real_escape_string($conn, $_POST['DESCRIPTION']);
			$stud_no = $user['STUDENT_NO'];
			if(!empty($_FILES["FILE"]["name"])) { 
				// Get file info 
				$fileName = basename($_FILES["FILE"]["name"]); 
				$fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
				 
				// Allow certain file formats 
				$allowTypes = array('pdf','PDF','PPTX','DOCX','DOC','PPT','XLSX','XLS','pptx','docx','doc','ppt','xlsx','xls');
				//$allowTypes = array('pdf');  
				if(in_array($fileType, $allowTypes)){ 
					$FILE_NAME = $_FILES['FILE']['name']; 
					$FILE_TEMP = $_FILES['FILE']['tmp_name']; 
					$RENAME_FILE = preg_replace('/\s+/', '-', $FILE_NAME);
					$LOCATION = "../uploads/".$stud_no."/".$RENAME_FILE;
					$FILE_SIZE = $_FILES['FILE']['size'];
					$FILE_TYPE = $_FILES['FILE']['type'];
					if(!file_exists("../uploads/".$stud_no)){
						mkdir("../uploads/".$stud_no);
					}
					$DATE = date("Y-m-d H:i:s");
					if(move_uploaded_file($FILE_TEMP, $LOCATION)){
						$insert = $conn->query("INSERT INTO tbl_repository(STUDENT_NO,FILENAME,FILESIZE,FILETYPE,DATETIME, DESCRIPTION)VALUES('$stud_no','$RENAME_FILE','$FILE_SIZE','$FILE_TYPE','$DATE','$DESCRIPTION')");
						if($insert){ 
							$_SESSION['success'] = "File uploaded successfully."; 
						}else{ 
							$_SESSION['error'] = "File upload failed, please try again."; 
						} 
					}

					 
				}else{ 
					$_SESSION['error'] = 'Sorry, files are not allowed to upload.'; 
				} 
			}else{ 
				$_SESSION['error'] = 'Please select an image file to upload.'; 
			} 

	}	else{
		$_SESSION['error'] = 'Fill up add form first';
		
	}
	header('location:'.$return);
?>