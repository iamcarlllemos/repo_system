<?php
	include 'includes/session.php';

    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'profile.php';
	}

	if(isset($_POST['submit'])){

		$FIRSTNAME    		=strtoupper($_POST['FIRSTNAME']);
		$MI     			=strtoupper($_POST['MI']);
		$LASTNAME     		=strtoupper($_POST['LASTNAME']);
		$GENDER   			=strtoupper($_POST['GENDER']);
		$CONTACT    		=$_POST['CONTACT'];
		$EMAIL    			=$_POST['EMAIL'];
        $ADDRESS  			=$conn-> real_escape_string(strtoupper($_POST['ADDRESS']));
        $curr_password  	=$_POST['curr_password'];
	
	
		if($curr_password==$user['PASSWORD']){

			if($password == $user['PASSWORD']){
				$password = $user['PASSWORD'];
			}
			else{
				$password = $password;
			}

			$sql="UPDATE tbl_member 
			SET FIRSTNAME='$FIRSTNAME',
			MI='$MI',
			LASTNAME='$LASTNAME',
			GENDER='$GENDER',
			CONTACT='$CONTACT',
			EMAIL='$EMAIL',
			ADDRESS='$ADDRESS'
			WHERE ID = '".$user['ID']."'";
			if($conn->query($sql)){
				$_SESSION['success'] = 'Profile updated successfully';
			}
			else{
				$_SESSION['error'] = $conn->error;
			}
			
		}else{
			$_SESSION['error'] = 'Incorrect password';
		}
	}
	else{
		$_SESSION['error'] = 'Select recird to edit first';
	}

	header('location:'.$return);
?>