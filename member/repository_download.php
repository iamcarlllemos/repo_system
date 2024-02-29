<?php 

require_once("includes/conn.php");

if (isset($_REQUEST['FILEID'])) {
    $FILEID = mysqli_real_escape_string($conn,$_REQUEST['FILEID']);

    // fetch file to download from database
    $sql = "SELECT * FROM  tbl_repository WHERE FILEID='".$FILEID."'";
    $result = mysqli_query($conn, $sql);
    $file = mysqli_fetch_assoc($result);
    $FILENAME = $file['FILENAME'];
    $stud_no = $file['STUDENT_NO'];
    $filepath = "../uploads/".$stud_no."/". $FILENAME;
    $newCount = $file['DOWNLOAD'] + 1;
    

    if (file_exists($filepath)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' .basename($filepath));
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' .filesize('../uploads/'.$stud_no.'/'.$FILENAME));
        readfile("../uploads/".$stud_no."/".$FILENAME);

        // Now update downloads count
       
        $updateQuery = "UPDATE tbl_repository SET DOWNLOAD='$newCount' WHERE FILEID='".$FILEID."'";
        mysqli_query($conn, $updateQuery);
		header('Location: repository_management.php');
        exit;
    }

}
?>