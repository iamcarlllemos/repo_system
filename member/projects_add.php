<?php
	include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'projects.php';
	}

	if(isset($_POST['submit'])){			
		$POST_TITLE			=mysqli_real_escape_string($conn, $_POST['POST_TITLE']);
		$POST_SLUG 			=mysqli_real_escape_string($conn, $_POST['POST_TITLE']);
		$POST_TITLE_SLUG 	=strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $POST_SLUG)));
		$POST_DETAILS		=mysqli_real_escape_string($conn, $_POST['POST_DETAILS']);
		$PUBLISHED_YEAR		=$_POST['PUBLISHED_YEAR'];
		$STUDENT_NO = $user['STUDENT_NO'];
		$POSTED_BY =$user['LASTNAME'].', '.$user['FIRSTNAME'];
		$POST_BY_ID =$user['ID'];
		$COURSE		=$user['COURSE'];
		$TRACK		=$user['TRACK'];
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

				if(move_uploaded_file($FILE_TEMP, $LOCATION)){
					$insert = $conn->query("INSERT INTO tbl_storage(POST_BY_ID,POST_TITLE,POST_TITLE_SLUG,POST_DETAILS,POSTED_BY,PDF_FILE,STUDENT_NO,FILE_SIZE,PUBLISHED_YEAR,COURSE,TRACK)
					VALUES('$POST_BY_ID','$POST_TITLE','$POST_TITLE_SLUG','$POST_DETAILS','$POSTED_BY','$RENAME_FILE','$STUDENT_NO','$FILE_SIZE','$PUBLISHED_YEAR','$COURSE','$TRACK')");
					if($insert){ 
						$_SESSION['success'] = "File uploaded successfully."; 
					}else{ 
						$_SESSION['error'] = "File upload failed, please try again."; 
					} 
				}


			}else{ 
				$_SESSION['error'] = 'Sorry, only PDF files are allowed to upload.'; 
			} 
		}else{ 
			$_SESSION['error'] = 'Please select an PDF file to upload.'; 
		} 
	

	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
		
	}
	//header('location: clientAccount.php?q='.$_POST['id']);
	header('location:'.$return);
?>