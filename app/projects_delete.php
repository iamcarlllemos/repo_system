<?php
	
    use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\SMTP;

    require '../vendor/autoload.php';


    include 'includes/session.php';
    if(isset($_GET['return'])){
		$return = $_GET['return'];
		
	}
	else{
		$return = 'projects.php';
	}

    if(isset($_POST['form-archive'])) {
        $ID=$_POST['id'];
        $sql = "UPDATE tbl_storage 
            SET is_archived = 1 
            WHERE ID = '$ID'";
            if($conn ->query($sql)){
                $_SESSION['success'] ="File tranfer to archived";
            }else{
                $_SESSION['error'] ="No record deleted!";
            }

    }
    
    if(isset($_POST['form-unarchive'])) {
        $ID=$_POST['id'];
        $sql = "UPDATE tbl_storage 
        SET IS_ARCHIVED = 0
        WHERE ID = '$ID'";
        if($conn ->query($sql)){
            $_SESSION['success'] ="File has been restored";
        }else{
            $_SESSION['error'] ="No record deleted!";
        }
    }

    if(isset($_POST['form-delete'])) {

        

        $ID = $_POST['id'];
        $remarks = $_POST['remarks'];

        if(!empty($remarks)) {
            $sql = "SELECT tbl_member.FIRSTNAME, tbl_member.LASTNAME, 
                        tbl_member.EMAIL, tbl_storage.POST_TITLE
                    FROM tbl_storage 
                    JOIN tbl_member 
                    ON tbl_storage.POST_BY_ID = tbl_member.ID 
                    WHERE tbl_storage.ID = '$ID' AND tbl_member.ROLE = 'STUDENT'";
            $query = $conn->query($sql);

            // Check if the query was successful
            if ($query) {
                // Check if there are rows in the result set
                if ($query->num_rows > 0) {
                    // Loop through the rows and print the data
                    while ($row = $query->fetch_assoc()) {
                        $smtpHost = 'smtp.gmail.com'; // Set your SMTP server
                        $smtpUsername = 'monicamaderaecat@gmail.com'; // Set your SMTP username
                        $smtpPassword = 'yyjwrosnrorxjxxe '; // Set your SMTP password
                        $smtpPort = 587; // Set your SMTP port


                        $mail = new PHPMailer();

                        // Set up SMTP
                        $mail->SMTPDebug = 0;
                        $mail->isSMTP();
                        $mail->Host = $smtpHost;
                        $mail->SMTPAuth = true;
                        $mail->Username = $smtpUsername;
                        $mail->Password = $smtpPassword;
                        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                        $mail->Port = $smtpPort;
                        $mail->isHTML = true;

                        $mail->setFrom('info@researchpaperrepo.com', 'System');
                        $mail->addAddress($row['EMAIL'], $row['FIRSTNAME']. $row['LASTNAME']);
                        $mail->Subject = 'Notice Repository Project Deletion';
                        $mail->Body = "Hello {$row['FIRSTNAME']} {$row['LASTNAME']}, We are here to inform you that your project {$row['POST_TITLE']} will be permanently deleted due to {$remarks}.";
                        $mail->smtpConnect([
                            'ssl' => [
                                'verify_peer' => false,
                                'verify_peer_name' => false,
                                'allow_self_signed' => true
                            ]
                        ]);
                        $mail->SMTPOptions = array(
                            'ssl' => array(
                                'verify_peer' => false,
                                'verify_peer_name' => false,
                                'allow_self_signed' => true
                            )
                        );
                        
                        // Send the email
                        if ($mail->send()) {
                            $sql="DELETE FROM tbl_storage WHERE ID='$ID'";
                                if($conn ->query($sql)){
                                    $_SESSION['success']="Project Permanently Deleted";
                                }else{
                                    $_SESSION['error'] ="No record deleted!";
                            }
                        } else {
                            $_SESSION['error'] = 'Error sending email: ' . $mail->ErrorInfo;
                        }
                    }
                } else {
                    $_SESSION['error'] = 'No record deleted';
                }
            } else {
                // Handle the case where the query failed
                $_SESSION['error'] = "Error executing the query: " . $conn->error;
            }

        } else {
            $_SESSION['error'] = "Remarks must be required";
        }


    } 

    header('location:'.$return);
?>