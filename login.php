<?php
	///session_start();
	include 'conn.php';

	if(isset($_POST['login'])){
		$EMAIL = $_POST['EMAIL'];
		$PASSWORD = $_POST['PASSWORD'];
		 $sql="SELECT * FROM (SELECT te.ID AS UID, te.EMAIL, te.PASSWORD, te.ACC_STATUS, te.ROLE FROM tbl_member te 
		 UNION SELECT tu.ID AS UID, tu.EMAIL, tu.PASSWORD, tu.ACC_STATUS, tu.ROLE FROM tbl_admin tu) t WHERE EMAIL = '$EMAIL' AND ACC_STATUS=1";
		$query = $conn->query($sql);
	
		if($query->num_rows > 0){
			$user = $query->fetch_assoc();
			if($PASSWORD==$user['PASSWORD']){
				$_SESSION['admin'] = $user['UID'];	
			
				if($user['ROLE']=="ADMIN"){
					header('location:app/home.php');
				}elseif($user['ROLE']=="FACULTY"){
					header('location:member/home.php');
				}elseif($user['ROLE']=="STUDENT"){
					header('location:member/home.php');
				}else{
					$_SESSION['error'] = 'Incorrect username or password';
					header('location: signin.php');
				}
			}else{
				$_SESSION['error'] = 'Incorrect username or password';
				header('location: signin.php');
			}
		}else{
			$_SESSION['error'] = 'Your Account is currently in INACTIVE Mode!. Please contact the Administrator.';
				header('location: signin.php');
		}
		
	}
	else{
		$_SESSION['error'] = 'Input admin credentials first';
		header('location: signin.php');
	}
?>