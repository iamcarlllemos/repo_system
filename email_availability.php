<?php 
require_once("app/includes/conn.php");
if(!empty($_POST["email"])) {
	$email= $_POST["email"];
	$result =mysqli_query($conn,"SELECT EMAIL FROM tbl_member WHERE EMAIL='$email'");
	$count=mysqli_num_rows($result);
	if($count>0)
	{
		echo "<span class='text-red'> User already exists .</span>";
	    echo "<script>$('#submit').prop('disabled',true);</script>";
	} else{
		echo "<span class='text-green'> User available for Registration .</span>";
	    echo "<script>$('#submit').prop('disabled',false);</script>";
	}
}
?>
