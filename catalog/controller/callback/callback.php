<?php

// User settings
$to = "mymail@mail.com";
$subject = "Warning!: CALL-BACK!";

include "../../language/russian/common/callback.php";
//include "../../language/ukrainian/common/callback.php"; // не работает

// Include extra form fields and/or submitter data?
// false = do not include
$extra = array(
        "form_subject"      => true,
        "form_cc"           => true,
        "ip"                => true,
        "user_agent"        => true
);

// Process
$action = isset($_POST["action"]) ? $_POST["action"] : "";
if (empty($action)) {
        // Send back the contact form HTML
        $output = "<div style='display:none'>
        <div class='contact-top'></div>
        <div class='contact-content'>
                <h1 class='contact-title'>".$sendthis."</h1>
                <div class='contact-loading' style='display:none'></div>
                <div class='contact-message' style='display:none'></div>
                <form action='#' style='display:none'>
                        <label for='contact-name'>* ".$namew."</label>
                        <input type='text' id='contact-name' class='contact-input' name='name' tabindex='1001' />
                        <label for='contact-phone'>* ".$phonew."</label>
                        <input type='text' id='contact-phone' class='contact-input' name='phone' tabindex='1002' />";

        if ($extra["form_subject"]) {
                $output .= "
                        <label for='contact-subject'>".$theme."</label>
                       	<SELECT id='contact-subject' class='contact-input' name='subject'> tabindex='1003
						<OPTION value='Передзвонити з xx:xx до xx:xx'>с xx:xx до xx:xx</OPTION>
						<OPTION value='Передзвонити з 09:00 до 10:00'>с 09:00 до 10:00</OPTION>
						<OPTION value='Передзвонити з 10:00 до 11:00'>с 10:00 до 11:00</OPTION>
						<OPTION value='Передзвонити з 11:00 до 12:00'>с 11:00 до 12:00</OPTION>
						<OPTION value='Передзвонити з 12:00 до 13:00'>с 12:00 до 13:00</OPTION>
						<OPTION value='Передзвонити з 13:00 до 14:00'>с 13:00 до 14:00</OPTION>
						<OPTION value='Передзвонити з 14:00 до 15:00'>с 14:00 до 15:00</OPTION>
						<OPTION value='Передзвонити з 15:00 до 16:00'>с 15:00 до 16:00</OPTION>
						<OPTION value='Передзвонити з 16:00 до 17:00'>с 16:00 до 17:00</OPTION>
						<OPTION value='Передзвонити з 17:00 до 18:00'>с 17:00 до 18:00</OPTION>
						<OPTION value='Передзвонити з 18:00 до 19:00'>с 18:00 до 19:00</OPTION>
</SELECT>
<br/>";
        }

        $output .= "
                        <label for='contact-message'>* ".$messagew."</label>
                        <textarea id='contact-message' class='contact-input' name='message' cols='20' rows='4' tabindex='1004'></textarea>
                        <br/>";
                        
        $output .= "
                        <label>&nbsp;</label>
                        <button type='submit' class='contact-send contact-button' tabindex='1006'>".$sendw."</button>
                        <button type='submit' class='contact-cancel contact-button simplemodal-close' tabindex='1007'>".$cancel."</button>
                        <br/>
                        <input type='hidden' name='token' value='" . smcf_token($to) . "'/>
                </form>
        </div>
        <div class='contact-bottom'>".$time."</div>
</div>";

        echo $output;
}
else if ($action == "send") {
        // Send the phone
        $name = isset($_POST["name"]) ? $_POST["name"] : "";
        $phone = isset($_POST["phone"]) ? $_POST["phone"] : "";
        $subject = isset($_POST["subject"]) ? $_POST["subject"] : $subject;
        $message = isset($_POST["message"]) ? $_POST["message"] : "";
        $cc = isset($_POST["cc"]) ? $_POST["cc"] : "";
        $token = isset($_POST["token"]) ? $_POST["token"] : "";

        // make sure the token matches
        if ($token === smcf_token($to)) {
                smcf_send($name, $phone, $subject, $message, $cc);
                echo $ok;
        }
        else {
                echo $erno;
        }
}

function smcf_token($s) {
        return md5("smcf-" . $s . date("WY"));
}

function smcf_filter($value) {
        $pattern = array("/\n/","/\r/","/content-type:/i","/to:/i", "/from:/i", "/cc:/i");
        $value = preg_replace($pattern, "", $value);
        return $value;
}

function smcf_send($name, $phone, $subject, $message, $cc) {
        global $to, $extra;

        // Filter and validate fields
        $name = smcf_filter($name);
        $subject = smcf_filter($subject);
        $phone = smcf_filter($phone);
        if (!smcf_validate_phone($phone)) {
                $subject .= " - Warning!: CALL-BACK!";
                $message .= "\n\nНомер телефона: ".$phone;
                $phone = $to;
                $cc = 0; // do not CC "sender"
        }

        // Add additional info to the message
      
		if ($extra["ip"]) {
                $message .= "\n\nIP: " . $_SERVER["REMOTE_ADDR"];
        }
        if ($extra["user_agent"]) {
                $message .= "\n\nUSER AGENT: " . $_SERVER["HTTP_USER_AGENT"];
        }

        // Set and wordwrap message body
        $body = "Від: $name\n\n";
        $body .= "Повідомлення: $message";
        $body = wordwrap($body, 70);

        // Build header
        $headers = "From: $phone\n";
        if ($cc == 1) {
                $headers .= "Cc: $phone\n";
        }

        // UTF-8
      //  if (function_exists('mb_encode_mimeheader')) {
       //         $subject = mb_encode_mimeheader($subject, "UTF-8", "B", "\n");
       // }
        else {
                // you need to enable mb_encode_mimeheader or risk
                // getting phones that are not UTF-8 encoded
        }
        $headers .= "MIME-Version: 1.0\n";
        $headers .= "Content-type: text/plain; charset=utf-8\n";
        $headers .= "Content-Transfer-Encoding: quoted-printable\n";

        // Send phone
        @mail($to, $subject, $body, $headers) or
                die('$die');
}



// Validate phone address format in case client-side validation "fails"
function smcf_validate_phone($phone) {

        // Make sure there aren't multiple periods together
        if (!preg_match("/^[0-9]{5,12}$/", $phone))
                return false;


        }

        return true;


exit;

?>