<?php 
error_reporting(0);
$timezone = 'Asia/Manila';date_default_timezone_set($timezone);
include "conn.php";

$setting_query ="SELECT * FROM tbl_system_setting WHERE SYS_ISDEFAULT='YES'";
$setting_query_run=$conn->query($setting_query);
if($setting_query_run->num_rows>0){
    foreach ($setting_query_run as $key => $value) {
       $SYS_NAME =$value['SYS_NAME'];
       $SYS_ADDRESS =$value['SYS_ADDRESS'];
       $SYS_LOGO =$value['SYS_LOGO'];
       $SYS_EMAIL =$value['SYS_EMAIL'];
       $SYS_ABOUT =$value['SYS_ABOUT'];
    }
}else{
    $SYS_NAME ="NAME NOT SET";
    $SYS_ADDRESS ="";
    $SYS_LOGO ="";
    $SYS_EMAIL ="";
    $SYS_ABOUT ="";
}

?>
<!DOCTYPE html>
<html class="no-js" lang="en" 
xmlns:og="http://opengraphprotocol.org/schema/"
xmlns:fb="http://www.facebook.com/2008/fbml">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title><?=$SYS_NAME;?></title>
        <?php 
		if($SYS_LOGO==""){
		?>
		<link rel="icon" type="image/x-icon" href="images/no-image-icon.png">
		<?php }else{ ?>
		<link rel="icon" type="image/x-icon" href="data:image/jpg;charset=utf8;base64,<?=base64_encode($SYS_LOGO); ?>">
		<?php }?>

        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="plugins/fontawesome-free/css/all.css">
        <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/all.css">
        <link rel="stylesheet" href="dist/css/adminlte.min.css">
		<link rel="stylesheet"href="https://site-assets.fontawesome.com/releases/v6.4.0/css/sharp-regular.css">
		<link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/sharp-solid.css">
		 <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
         <link rel="stylesheet" href="plugins/dropzone/min/dropzone.min.css">

  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
   <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <link rel="stylesheet" href="plugins/ekko-lightbox/ekko-lightbox.css">
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <style>
	body{
		background:#eee;
		margin: auto;
	}
	.mybg{
		background-image: url("slider/images/bg.png");
		height: 100%;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
	}
    img.index-page {
        width: 100px;
    }
  </style>
    </head>

    