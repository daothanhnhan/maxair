<?php 

    $message_forget = '';

    function forget_password () {

        global $conn_vn;

        global $message_forget;

        $action_email = new action_email();

        if (isset($_POST['forget'])) {

            $email = $_POST['email'];

            // $ask = $_POST['ask'];

            $sql = "SELECT * FROM user Where user_email = '$email' AND state = 2";

            // echo $sql;die;

            $result = mysqli_query($conn_vn, $sql);

            $num = mysqli_num_rows($result);

            if ($num == 0) {

                $message_forget = "Email không đúng hoặc chưa kích hoạt.";

            } else {

                $row = mysqli_fetch_assoc($result);

                // $ask_hash = $row['ask'];

                // if (password_verify($ask, $ask_hash)) {

                    // $_SESSION['user_id_gbvn'] = $row['user_id'];

                $link = '<a href="http://'.$_SERVER["SERVER_NAME"].'/change-password/'.$row['user_id'].'">Link đổi mật khẩu: '.$_SERVER["SERVER_NAME"].'/change-password/'.$row['user_id'].'</a>';//echo $link;die;

                $action_email->email_send($email, 'Đổi mật khẩu tài khoản CF', $link);



                    echo '<script type="text/javascript">alert(\'Giờ mời bạn vào email để đổi mật khẩu.\'); window.location.href = "/";</script>';

                // } else {

                    // $message_forget = "Email không đúng hoặc chưa kích hoạt.";

                // }

            }

        }       

    }

    forget_password();

?>

<div class="gb-lost-password">

    <div class="container">

        <h1>Bạn quên mật khẩu?</h1>

        <p>Nhập địa chỉ email đã đăng kí và vào email để đổi mật khẩu với tài khoản này.</p>



        <form action="" method="post">

            <label style="color: red;"><?= $message_forget ?></label>

            <div class="form-group">

                <div class="row">

                    <div class="col-md-2">

                        <label>Địa chỉ E-Mail</label>

                    </div>

                    <div class="col-md-10">

                        <input type="email" name="email" class="form-control" placeholder="Nhập địa chỉ Email...." required>

                    </div>

                </div>

            </div>

            <!-- <div class="form-group">

                <div class="row">

                    <div class="col-md-2">

                        <label>Bạn thích con gì nhất</label>

                    </div>

                    <div class="col-md-10">

                        <input type="text" name="ask" class="form-control" placeholder="Nhập con vật ưa thích...." required>

                    </div>

                </div>

            </div> -->

            <div class="row">

                <div class="col-md-6 col-sm-6 col-xs-6">

                    <div class="gb-lost-password-back">

                        <a href="/dangnhap">Quay lại</a>

                    </div>

                </div>

                <div class="col-md-6 col-sm-6 col-xs-6">

                    <div class="gb-lost-password-continue">

                        <button type="submit" name="forget" class="btn">Tiếp tục</button>

                    </div>

                </div>

            </div>

        </form>



    </div>

</div>