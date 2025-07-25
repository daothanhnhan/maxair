

<?php 

    $message = "";



    function dangky () {

        global $conn_vn;

        global $message;

        $action_email = new action_email();

        if (isset($_POST['register'])) {

            $ok = 'true';

            $name = ($_POST['name']==NULL) ? '' : trim($_POST['name']);

            // $first_name = ($_POST['first_name']==NULL) ? '' : trim($_POST['first_name']);

            // $last_name = ($_POST['last_name']==NULL) ? '' : trim($_POST['last_name']);

            // $alias = ($_POST['alias']==NULL) ? '' : trim($_POST['alias']);

            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];

            $pass1 = ($_POST['pass1']==NULL) ? '' : $_POST['pass1'];

            $pass2 = ($_POST['pass2']==NULL) ? '' : $_POST['pass2'];

            $time = date('Y-m-d H:i:s');

            $ask = password_hash(trim($_POST['ask']), PASSWORD_DEFAULT);



            // $sql_nick = "SELECT * FROM user Where name = '$name'";

            // $result_nick = mysqli_query($conn_vn, $sql_nick);

            // $row_nick = mysqli_num_rows($result_nick);

            // if ($row_nick > 0) {

            //     $ok = "false";

            //     $message .= "Tên đăng nhập đã tồn tại. ";

            // }



            // kiem tra email ton tai.

            $sql_email = "SELECT * FROM user Where user_email = '$email'";

            $result_email = mysqli_query($conn_vn, $sql_email);

            $row_email = mysqli_num_rows($result_email);

            if ($row_email > 0) {

                $ok = "false";

                $message .= "Email đã tồn tại. ";

            }



            if ($pass1 != $pass2) {

                $ok = "false";

                $message .= "Mật khẩu không khớp.";

            }



            if ($ok == "true") {

                $pass = password_hash($pass1, PASSWORD_DEFAULT);

                $sql = "INSERT INTO user (user_name,  user_phone, user_email, user_password, time, ask) VALUES ('$name', '$phone', '$email', '$pass', '$time', '$ask')";

                // echo $sql;die;

                $result = mysqli_query($conn_vn, $sql) or die('error :');

                $sql_user = "SELECT * FROM user Where user_email = '$email'";
                // $sql_user = "SELECT * FROM user Where user_phone = '$phone'";

                $result_user = mysqli_query($conn_vn, $sql_user);

                $row_user = mysqli_fetch_assoc($result_user);

                // $_SESSION['user_id_gbvn'] = $row_user['user_id'];

                // $_SESSION['user_email_gbvn'] = $row_user['user_email'];
                // $_SESSION['user_phone_gbvn'] = $row_user['user_phone'];

                // $_SESSION['user_name_gbvn'] = $row_user['user_name'];

                $link = '<a href="http://'.$_SERVER["SERVER_NAME"].'/kich-hoat-tai-khoan/'.$row_user['user_id'].'">Link kích hoạt: '.$_SERVER["SERVER_NAME"].'/kich-hoat-tai-khoan/'.$row_user['user_id'].'</a>';//echo $link;die;
                $action_email->email_send($email, 'Kích hoat tài khoản CF', $link);

                echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thành công. Xin vui lòng vào mail, thư mục spam để kích hoạt tài khoản.\'); window.location.href = "/login";</script>';

            }

        }

    }



    dangky();
// $link = '<a href="http://'.$_SERVER["SERVER_NAME"].'/kich-hoat-tai-khoan/'.$row_user['user_id'].'">Kích hoạt</a>';echo $link;
?>

<div class="gb-register">

    <div class="container">

        <div class="row">

            <div class="col-md-8 col-md-offset-2">

                <div class="gb-register-body">

                    <h1>Đăng ký tài khoản </h1>

                    <p>Tạo tài khoản để hưởng trọn ưu đãi: tích điểm nhận quà, chương trình tri ân dành cho

                        thành viên, theo dõi đơn đặt hàng dễ dàng, thanh toán thuận tiện và rất nhiều tiện ích khác.

                    </p>



                    <div class="row">

                        <div class="col-md-8  col-md-offset-2">
                            <p style="color: red;"><?= $message ?></p>
                            <form action="" method="post">

                                <div class="form-group">

                                    <label>Họ và tên *:</label>

                                    <input type="text" class="form-control" name="name" placeholder="Họ và tên" required>

                                </div>

                                <div class="form-group">

                                        <label>Email *:</label>

                                    <input type="email" class="form-control" name="email" placeholder="Nhập địa chỉ Email." required>

                                </div>
                                <div class="form-group">

                                        <label>Số điện thoại *:</label>

                                    <input type="text" class="form-control" name="phone" placeholder="Nhập số điện thoại" required>

                                </div>

                                <div class="form-group">

                                    <label>Mật khẩu *: </br>
                                    <i class="notepass">(Dài ít nhất 8 kí tự)</i>
                                    </label>

                                    <input type="password" id="passwordInput" class="form-control" name="pass1" placeholder="Nhập mật khẩu" required>
                                </div>

                                <div class="form-group">

                                    <label>Nhập lại mật khẩu *:</label>

                                    <input type="password"id="confirmPasswordInput" class="form-control" name="pass2" placeholder="Nhập lại mật khẩu" required>

                                </div>

                                <!-- <div class="form-group">

                                    <label>Bạn thích con gì:</label>

                                    <input type="text" class="form-control" name="ask" placeholder="Dùng cho quên mật khẩu" required>

                                </div> -->

                                <button type="submit" name="register" class="btn">Đăng ký</button>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
<script>
$(document).ready(function() {
 
 $('#passwordInput, #confirmPasswordInput').on('keyup', function(e) {

     if($('#passwordInput').val() == '' && $('#confirmPasswordInput').val() == '')
     {
         $('#passwordStrength').removeClass().html('');

         return false;
     }

  if($('#passwordInput').val() != '' && $('#confirmPasswordInput').val() != '' && $('#passwordInput').val() != $('#confirmPasswordInput').val())
     {
         $('#passwordStrength').removeClass().addClass('alert alert-error').html('Passwords do not match!');
         return false;
     }

    //  // Must have capital letter, numbers and lowercase letters
    //  var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");

    //  // Must have either capitals and lowercase letters or lowercase and numbers
    //  var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");

     // Must be at least 6 characters long
     var okRegex = new RegExp("(?=.{8,}).*", "g");

     if (okRegex.test($(this).val()) === false) {
         // If ok regex doesn't match the password
         $('#passwordStrength').removeClass().addClass('alert alert-error').html('Password must be 6 characters long.');

     } else if (strongRegex.test($(this).val())) {
         // If reg ex matches strong password
         $('#passwordStrength').removeClass().addClass('alert alert-success').html('Good Password!');
     } else if (mediumRegex.test($(this).val())) {
         // If medium password matches the reg ex
         $('#passwordStrength').removeClass().addClass('alert alert-info').html('Make your password stronger with more capital letters, more numbers and special characters!');
     } else {
         // If password is ok
         $('#passwordStrength').removeClass().addClass('alert alert-error').html('Weak Password, try using numbers and capital letters.');
     }

     return true;
 });
});
</script>