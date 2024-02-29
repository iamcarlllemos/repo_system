<?php
	include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'projects.php';
	}

	if(isset($_POST['form-edit_photo-news'])){			
		$ID	=$_POST['id'];
		if(!empty($_FILES["NEWS_IMAGE_EDIT"]["name"])) { 
			// Get file info 
			$fileName = basename($_FILES["NEWS_IMAGE_EDIT"]["name"]); 
			$fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
			 
			// Allow certain file formats 
			$allowTypes = array('JPG','jpg','png','PNG','jpeg','JPEG','gif','GIF'); 
			if(in_array($fileType, $allowTypes)){ 
				$image = $_FILES['NEWS_IMAGE_EDIT']['tmp_name']; 
				$NEWS_IMAGE_EDIT = addslashes(file_get_contents($image)); 
			 
				$insert = $conn->query("UPDATE tbl_storage SET POST_IMAGE='$NEWS_IMAGE_EDIT' WHERE ID='$ID'");
				if($insert){ 
					$_SESSION['success'] = "File uploaded successfully."; 
				}else{ 
					$_SESSION['error'] = "File upload failed, please try again."; 
				}  
			}else{ 
				$_SESSION['error'] = 'Sorry, only JPG, JPEG, PNG, & GIF files are allowed to upload.'; 
			} 
		}else{ 
			$_SESSION['error'] = 'Please select an image file to upload.'; 
		} 
	

	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
		
	}
	//header('location: clientAccount.php?q='.$_POST['id']);
	header('location:'.$return);
?>