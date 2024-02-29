<?php
	include 'includes/session.php';

	if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'profile.php';
	}

	if(isset($_POST['SUBMIT'])){
		$curr_password = $_POST['curr_password'];
		$username = $_POST['EMAIL'];
		$password = $_POST['PASSWORD'];

		if($curr_password== $user['PASSWORD']){
			if($password == $user['PASSWORD']){
				$password = $user['PASSWORD'];
			}
			else{
				$password = $password;
			}

			$sql = "UPDATE tbl_member SET EMAIL = '$username', PASSWORD = '$password' WHERE ID = '".$user['ID']."'";
			if($conn->query($sql)){
				$_SESSION['success'] = 'Profile updated successfully';
			}
			else{
				$_SESSION['error'] = $conn->error;
			}
			
		}
		else{
			$_SESSION['error'] = 'Incorrect password';
		}
	}
	else{
		$_SESSION['error'] = 'Fill up required details first';
	}

	header('location:'.$return);

?>