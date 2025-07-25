<?php 
// link huong dan: https://www.sitepoint.com/sending-emails-php-phpmailer/
	
/**
* 
*/
class action_email 
{
        function email_send ($email_to, $title = "", $content = "") {
                $nFrom = "CF";    //mail duoc gui tu dau, thuong de ten cong ty ban
                $mFrom = 'maxair.vn@gmail.com';  //dia chi email cua ban 
                $mPass = '12345Ab@';       //mat khau email cua ban
                $nTo = 'You'; //Ten nguoi nhan
                //$mTo = $_POST['email_dichvu'];   //dia chi nhan mail
                $mTo = $email_to;
                $mail             = new PHPMailer();
                //$body             = "<p>Kế toán thuế trọn gói: $ktttg</p><p>Kê khai thuế online: $kktol</p><p>Rà soát sổ sách: $rsss</p><p>Hoàn thiện sổ sách: $htss</p><p>Quyết toán thuế: $qtt</p>";   // Noi dung email
                //$title = 'Nguyên Anh Tax kính gửi';   //Tieu de gui mail
                $mail->IsSMTP();             
                $mail->CharSet  = "utf-8";
                $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
                $mail->SMTPAuth   = true;    // enable SMTP authentication
                $mail->SMTPSecure = "tls";   // sets the prefix to the servier
                $mail->Host       = "smtp.gmail.com";    // sever gui mail.
                $mail->Port       = 587;         // cong gui mail de nguyen
                // xong phan cau hinh bat dau phan gui mail
                $mail->Username   = $mFrom;  // khai bao dia chi email
                $mail->Password   = $mPass;              // khai bao mat khau
                $mail->SetFrom($mFrom, $nFrom);
                $mail->AddReplyTo('maxair.vn@gmail.com', 'me'); //khi nguoi dung phan hoi se duoc gui den email nay
                $mail->Subject    = $title;// tieu de email 
                $mail->MsgHTML($content);// noi dung chinh cua mail se nam o day.
                $mail->AddAddress($mTo, $nTo);
                // $mail->AddAddress('truongquangtuan3110@zoho.com');

                $mail->Send();
        }
        
        function gui_email () {
            global $conn_vn;
                if (isset($_POST['send_email'])) {
                    $email = $_POST['email'];
                    $date = date('Y-m-d H:i:s');
                    $sql = "INSERT INTO regMember (regMember_mail, regMember_createdDate, state) VALUES ('$email','$date', 0)";
                    $result = mysqli_query($conn_vn, $sql);
                    // $gui = $this->email_send($_POST['email'], 'test', 'noi dung test');
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng kí nhận thông tin khuyến mãi thành công. Xin cảm ơn!.\');</script>';
                }
        }

        function lien_he () {
            global $conn_vn;
                if (isset($_POST['lien_he'])) {
                        $name = $_POST['name'];
                        $phone = $_POST['phone'];
                        $email = $_POST['email'];
                        $address = $_POST['address'];
                        $message = $_POST['message'];
                        $sql = "INSERT INTO lien_he (name, email, phone, address, comment) VALUES ('$name','$email','$phone','$address','$message')";
                        $result = mysqli_query($conn_vn, $sql);
                        $str = $this->form($name, $phone, $email, $note);
                        // $this->email_send($email, "Thông Tin Khách Hàng Từ HẠT GIỐNG HOA ĐẸP - ĐỘC - LẠ", $str);
                        // sleep(10);


                        if (true) {
                            echo '<script type="text/javascript">alert(\'Bạn đã đăng ký liên hệ thành công.\');</script>';
                            echo '<script type="text/javascript">alert(\'Bạn đã đăng ký liên hệ thành công.\');</script>';
                        }
                        // sleep(1);
                }
        }

        // function email_cart () {
        //     global $conn_vn;
        //         if (isset($_POST['complete-cart'])) {
        //                 $name = $_POST['name'];
        //                 $phone = $_POST['phone'];
        //                 $email = $_POST['email'];
        //                 $address = $_POST['address'];
        //                 $note = $_POST['note'];
        //                 $str = $this->form($name, $phone, $email, $note);
        //                 //echo $str;die;
        //                 $this->email_send($email, $name, $str);
        //                 echo '<script type="text/javascript">alert(\'Bạn đã gửi đơn hàng thành công.\');</script>';
        //         }
        // }

        function form ($name, $phone, $email, $note) {
                $str = "
                        <ul>
                                <li>Tên: $name</li>
                                <li>Số điện thoại: $phone</li>
                                <li>Thư điện tử: $email</li>
                                <li>Nội dung: $note</li>
                        </ul>
                ";
                return $str;

        }

        function tuan () {
            echo 'hello tuan';
        }

        public function danh_gia () {
            global $conn_vn;
            if (isset($_POST['danh_gia'])) {
                $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
                $email = mysqli_real_escape_string($conn_vn, $_POST['email']);
                $title = mysqli_real_escape_string($conn_vn, $_POST['title']);
                $note = mysqli_real_escape_string($conn_vn, $_POST['note']);
                $rate = $_POST['rate'];

                $sql = "INSERT INTO danh_gia (name, email, title, note, rate) VALUES ('$name', '$email', '$title', '$note', $rate)";
                $result = mysqli_query($conn_vn, $sql);
                if ($result) {
                    echo '<script type="text/javascript">alert(\'Bạn đã đánh giá sản phẩm thành công.\');</script>';
                } else {
                    echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\');</script>';
                }
            }
        }
}
?>