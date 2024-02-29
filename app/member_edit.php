<?php
	include 'includes/session.php';

    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'member.php';
	}

	if(isset($_POST['submit'])){
		$ID 				= $_POST['ID'];
		$FIRSTNAME      	=strtoupper($_POST['FIRSTNAME']);
		$MI      			=strtoupper($_POST['MI']);
		$LASTNAME      		=strtoupper($_POST['LASTNAME']);
		$GENDER   			=strtoupper($_POST['GENDER']);
		$CONTACT    		=strtoupper($_POST['CONTACT']);
        $ADDRESS   			=$conn->real_escape_string(strtoupper($_POST['ADDRESS']));
		$EMAIL    			=$_POST['EMAIL'];
		$PASSWORD		    =$_POST['PASSWORD'];
		$ROLE		    =$_POST['ROLE'];
      
		$sql="UPDATE tbl_member 
		SET FIRSTNAME='$FIRSTNAME',
		MI='$MI',
		LASTNAME='$LASTNAME',
		GENDER='$GENDER',
		CONTACT='$CONTACT',
		ADDRESS='$ADDRESS',
		EMAIL='$EMAIL',
		PASSWORD='$PASSWORD',
		ROLE	='$ROLE'
		WHERE ID = '$ID'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Updated successfully';

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