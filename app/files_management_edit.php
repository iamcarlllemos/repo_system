<?php
	include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'files_approved.php';
	}

	if(isset($_POST['form-edit-incident'])){
		$ID 		= $_POST['id'];
		$FILESTATUS= mysqli_real_escape_string($conn, $_POST['FILESTATUS']);
		$REMARKS= mysqli_real_escape_string($conn,$_POST['REMARKS']);
	
		$sql="UPDATE tbl_repository 
		SET FILESTATUS='$FILESTATUS',
		REMARKS='$REMARKS'
		WHERE FILEID = '$ID'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Successfully updated';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Select recird to edit first';
	}

	header('location:'.$return);
?>