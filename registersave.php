<?php
	include 'conn.php';
	if(isset($_POST['register'])){	
		$STUDENT_NO    		=mysqli_real_escape_string($conn, $_POST['STUDENT_NO']);		
		$FIRSTNAME    		=mysqli_real_escape_string($conn, $_POST['FIRSTNAME']);
		$MI     			=mysqli_real_escape_string($conn, $_POST['MI']);
		$LASTNAME     		=mysqli_real_escape_string($conn, $_POST['LASTNAME']);
		$GENDER   			=mysqli_real_escape_string($conn, $_POST['GENDER']);
		$CONTACT    		=mysqli_real_escape_string($conn, $_POST['CONTACT']);
		$EMAIL    			=mysqli_real_escape_string($conn, $_POST['EMAIL']);
        $ADDRESS  			=mysqli_real_escape_string($conn, $_POST['ADDRESS']);
        $PASSWORD    		=mysqli_real_escape_string($conn, $_POST['PASSWORD']);
        $ROLE    			=mysqli_real_escape_string($conn, $_POST['ROLE']);
        $COURSE    			=mysqli_real_escape_string($conn, $_POST['COURSE']) ?? '';
        $TRACK    			=mysqli_real_escape_string($conn, $_POST['TRACK']) ?? '';
		$YEAR_LEVEL    		=mysqli_real_escape_string($conn, $_POST['YEAR_LEVEL']) ?? '';
		
		$sql = "SELECT * FROM tbl_member WHERE EMAIL = '$EMAIL' OR STUDENT_NO='$STUDENT_NO'";
		$query = $conn->query($sql);
		if($query->num_rows > 0){
			$_SESSION['error'] = 'Username or  ID Number already exists.';
		}else{
			
			if(!empty($_FILES["image"]["name"])) { 
				// Get file info 
				$fileName = basename($_FILES["image"]["name"]); 
				$fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
				 
				// Allow certain file formats 
				$allowTypes = array('jpg','JPG','png','PNG','jpeg','JPEG','gif','GIF'); 
				if(in_array($fileType, $allowTypes)){ 
					$image = $_FILES['image']['tmp_name']; 
					$imgContent = addslashes(file_get_contents($image)); 
				 
					$sql= "INSERT INTO tbl_member(FIRSTNAME,MI,LASTNAME, GENDER,CONTACT, EMAIL, ADDRESS, PASSWORD, ROLE,COURSE,ATTACHED_ID,DATE_CREATED, STUDENT_NO, TRACK, YEAR_LEVEL)
					VALUES ('$FIRSTNAME','$MI','$LASTNAME','$GENDER','$CONTACT','$EMAIL','$ADDRESS','$PASSWORD','$ROLE','$COURSE','$imgContent','".date('Y-m-d')."','$STUDENT_NO','$TRACK', '$YEAR_LEVEL')";
					if($conn->query($sql)){
						$_SESSION['success'] = 'Your account is waiting for oure administrator approval. Please check back later.';
					}
					else{
						$_SESSION['error'] = $conn->error;
					}
					  
				}else{ 
					$_SESSION['error'] = 'Sorry, only JPG, JPEG, PNG, & GIF files are allowed to upload.'; 
				} 
			}else{ 
				$_SESSION['error'] = 'Please select an image file to upload.'; 
			} 
			
		}

	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
		
	}
	header('location:register.php');
?>