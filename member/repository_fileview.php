
<?php 
include "includes/session.php";
if(!empty(intval($_GET['FILEID']))){
    $sql ="SELECT * FROM tbl_repository WHERE FILEID='".$_GET['FILEID']."'";
    $query =$conn->query($sql);
    $rows = $query->fetch_assoc();

    $FILENAME = $rows['FILENAME'];
    $STUDENT_NO = $rows['STUDENT_NO'];
    $PATH = "../uploads/".$STUDENT_NO."/". $FILENAME;

    header('Content-type: application/pdf');
    header('Content-Disposition: inline; filename="' .basename($PATH). '"');
    header('Content-Transfer-Encoding: binary');
    header('Content-Length: ' .filesize('../uploads/'.$STUDENT_NO.'/'.$FILENAME));
    header('Accept-Ranges: bytes');
    //readfile("uploads/".$STUDENT_NO."/".$FILENAME);
    echo "<iframe src='../uploads/".$STUDENT_NO."/".$FILENAME."' class='embed-responsive-item' frameborder='0' allowfullscreen></iframe>";
}

?> 