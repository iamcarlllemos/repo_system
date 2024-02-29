<?php
	
	include 'includes/session.php';

	if(isset($_POST['form-reason'])){
		$DELETE_REASON =$_POST['DELETE_REASON'];
		$sql = "UPDATE tbl_member SET DELETE_REASON='$DELETE_REASON',DELETE_REQUEST=1 WHERE ID='".$user['ID']."'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Your request has been successfully submited!';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Opps!! somthing went wrong!!';
	}
header('location: profile.php');
?>