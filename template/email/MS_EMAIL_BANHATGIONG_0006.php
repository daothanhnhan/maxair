<?php

	$send_mail = new action_email();

	$send_mail->gui_email();

?>

<div class="box_send_email">

    <h3 class="header_send_email">Đăng ký nhận tin khi có chương trình khuyến mãi</h3>

    <div class="cover_send_email">

        <form style="width:100%; position:relative;float:left; border: 1px solid #ccc;" method="post" action="">

            <input type="text" value="" placeholder="Nhập email của bạn" name="email" required="">

            <button type="submit" name="send_email">Đăng ký</button>

        </form>

    </div>

</div>