<?php
    include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'events.php';
	}

    if(isset($_POST['submit'])){
        $ID=$_POST['ID'];
        $sql="DELETE FROM tbl_event WHERE id='$ID'";
        if($conn ->query($sql)){
            $_SESSION['success'] ="Record has been successfully deleted";
        }else{
            $_SESSION['error'] ="No record deleted!";
        }
    }else{
        $_SESSION['error'] ="Please select first the record to delete";
    }
    header('location:'.$return);
?>