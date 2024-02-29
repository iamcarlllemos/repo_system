<?php 
session_start();
$conn = new mysqli('localhost', 'root', '', 'rprs_db');
	if(isset($_POST['submit'])){
		$STUDENT_NO = $_POST['STUDENT_NO']; 
		$FIRSTNAME = $_POST['FIRSTNAME']; 
		$LASTNAME = $_POST['LASTNAME'];  
		$sql="SELECT STUDENT_NO, FIRSTNAME, LASTNAME FROM tbl_member WHERE FIRSTNAME='$FIRSTNAME' AND LASTNAME = '$LASTNAME'";
		$query = $conn->query($sql);
	
		if($query->num_rows > 0){                                                                                                        
			while($user = $query->fetch_assoc()){
			if($STUDENT_NO==$user['STUDENT_NO']){
				$_SESSION['userid'] = $user['ID'];	
				$_SESSION['logged']="true";
				$session = "1"; 
				header('location: recover-password.php');
			}else{
				$_SESSION['error'] = 'Incorrect username or password';
				header('location: forgot-password.php');
			}
			}
		}else{
			$_SESSION['error'] = 'Your Account is currently in INACTIVE Mode!. Please contact the Administrator.';
				header('location: forgot-password.php');
		}
		
	}
	else{
		$_SESSION['error'] = 'Input admin credentials first';
		header('location: forgot-password.php');
	}
	
  ?>