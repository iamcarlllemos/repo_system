<?php
    include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'repository_management.php';
	}

    if(isset($_POST['form-delete-user'])){
        $FILEID =$_POST['FILEID'];

        $query ="SELECT * FROM tbl_repository WHERE FILEID='$FILEID'";
        $query_run =$conn->query($query);
        $query_row = $query_run->fetch_assoc();

        $stud_no =  $query_row['STUDENT_NO'];
        $file_name =  $query_row['FILENAME'];

        if(unlink("../uploads/".$stud_no."/".$file_name)){
            $sql="DELETE FROM tbl_repository WHERE FILEID='$FILEID'";
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