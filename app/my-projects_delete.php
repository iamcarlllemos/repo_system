<?php
    include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'my-projects.php';
	}

    if(isset($_POST['form-delete-news'])){
        $ID=$_POST['id'];

        $query ="SELECT * FROM tbl_storage WHERE ID='$ID'";
        $query_run =$conn->query($query);
        $query_row = $query_run->fetch_assoc();

        $stud_no =  $query_row['STUDENT_NO'];
        $file_name =  $query_row['PDF_FILE'];

        if(unlink("../uploads/".$stud_no."/".$file_name)){
            $sql="DELETE FROM tbl_storage WHERE ID='$ID'";
            if($conn ->query($sql)){
                $_SESSION['success'] ="Successfully deleted";
                }else{
                $_SESSION['error'] ="No record deleted!";
                }
		}
        
    }else{
        $_SESSION['error'] ="Please select first the record to delete";
    }
    header('location:'.$return);
?>