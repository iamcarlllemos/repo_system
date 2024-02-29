<?php
	session_start();
	include 'conn.php';

	if(!isset($_SESSION['admin']) || trim($_SESSION['admin']) == ''){
		header('location: ../signin.php');
	}
	$sql = "SELECT * FROM tbl_member WHERE ID = '".$_SESSION['admin']."'";
	$query = $conn->query($sql);
	$user = $query->fetch_assoc();
	if($user['ACC_STATUS']==0){
		header('location: logout.php');
	}
?>