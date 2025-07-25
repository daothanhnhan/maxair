<?php
    $send_mail = new action_email();
    $send_mail->lien_he();
?>
<!-- <script type="text/javascript">alert('Bạn đã đăng ký liên hệ thành công.');</script> -->
<div class="gb-form-lienhe">
    <h3>Thông tin liên hệ</h3>
    <form action="" method="post">
        <div class="form-group">
            <label>Họ và tên</label>
            <input type="text" class="form-control" name="name" required="">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="email" required="">
        </div>
        <div class="form-group">
            <label>Điện thoại</label>
            <input type="tel" class="form-control" name="phone" required="">
        </div>
        <div class="form-group">
            <label>Nội dung</label>
            <textarea class="input-xlarge form-control" id="message" name="message" rows="8"></textarea>
        </div>
        <div class="form-group">
            <button class="vk-btn vk-btn-send" type="submit" name="lien_he">gửi liên hệ</button>
        </div>
    </form>
</div>