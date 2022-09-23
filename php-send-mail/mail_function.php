<?php	
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;



	function sendOrderMail($email,$message) {
		
		require('phpmailer/src/PHPMailer.php');
		require('phpmailer/src/SMTP.php');
		require('phpmailer/src/Exception.php');

	
		$message_body =  $message;
		$mail = new PHPMailer();
		$mail->SetFrom("no-reply@simplysufixprs.net", "SIMPLY SUFI XPRS APP");
		$mail->addAddress($email); // user email address
		$mail->addBCC("orders@simplysufi.com", "Simply Sufi XPRS App Order"); //order email address
		
		$mail->Subject = "SimplySufi XPRS - Your order is received successfully";
		$mail->MsgHTML($message_body);
		$mail->IsHTML(true);		
		try {
			    if($mail->send()){
					return true;
				}else{
					return false;
				}
			    
			} catch (Exception $e) {
			    echo "Mailer Error: " . $mail->ErrorInfo;
			}

}

	function sendCodeEmail($email,$code) {
			
		require('phpmailer/src/PHPMailer.php');
		require('phpmailer/src/SMTP.php');
		require('phpmailer/src/Exception.php');


		$message_body =  '<div id="yiv5493493461"><h4>Hello, </h4>
		<p>Password reset was requested for your SimplySufi XPRS App account. Below is your new account password:</p>'
		. $code .
		'<p>If you didn&apos;t ask to reset your password, you can ignore this email or contact support.</p>
		<h4>Thanks,</h4>
		<b>Simply Sufi XPRS</b></div>';
		$mail = new PHPMailer();
		$mail->SetFrom("no-reply@simplysufixprs.net", "SIMPLY SUFI XPRS App");
		$mail->addAddress($email); // user email address
		//$mail->addBCC(""); // simplysufi email address
		$mail->Subject = "SimplySufi XPRS - Reset Password Request";
		$mail->MsgHTML($message_body);
		$mail->IsHTML(true);		
		try {
			    if($mail->send()){
					return true;
				}else{
					return false;
				}
			    
			} catch (Exception $e) {
			    echo "Mailer Error: " . $mail->ErrorInfo;
			}
	}
?>