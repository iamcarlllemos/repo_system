<?php
session_start();
	$conn = new mysqli('localhost', 'root', '0x3cl@root', 'rprs_db');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>