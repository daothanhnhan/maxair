<?php

    $products = $cart->getCart();

    $totalPrice = 0;

    if(isset($_SESSION['user_name_gbvn'])){

        global $conn_vn;

        $user = $_SESSION['user_name_gbvn'];

        $sql = "SELECT * FROM user Where user_name = '$user'";

        $result = mysqli_query($conn_vn, $sql);

        $row = mysqli_fetch_assoc($result);

    }

?>

<?php 

if (isset($_POST['send_mail'])){

    $email = $_POST['txtEmail'];

    $name = $_POST['txtName'];

    $phone = $_POST['txtPhone'];

    $address = $_POST['txtAddress'];

    $infor_cart = "";

    if(isset($_SESSION['shopping_cart'])){

        $total = 0;

        foreach($_SESSION["shopping_cart"] as $keys => $values){

            $name_product = $values['product_name'];

            $qty = $values['product_quantity'];

            $product_price = $values['product_price'];

            $total = $total + ($values["product_quantity"] * $values["product_price"]);

            $infor_cart .= "

                <tr>

                    <th>".$name_product."</th>

                    <th>".number_format($product_price)." VNĐ x ".$qty."</th>

                </tr>

            ";

        }

        $infor_cart1 = "

            <tr>

                <th>Tổng tiền</th>

                <th>".number_format($total)." VNĐ</th>

            </tr>

        ";

    }

    $content = "


        <h2>Thông Tin Đơn Hàng</h2>

        <table class='table table-bordered' border='1'>

            <thead>

                <tr>

                    <th>Tên người đặt hàng</th>

                    <th>".$name."</th>

                </tr>

            </thead>

            <tbody>

                <tr>

                    <td>Số điện thoại</td>

                    <td>".$phone."</td>

                </tr>

                <tr>

                    <td>Email</td>

                    <td>".$email."</td>

                </tr>

                <tr>

                    <td>Địa chỉ</td>

                    <td>".$address."</td>

                </tr>

            </tbody>

        </table>

        <h2>Chi tiết Đơn Hàng</h2>

        <table class='table table-bordered' border='1'>

            <thead>

                <tr>

                    <th>Tên sản phẩm</th>

                    <th>Giá</th>

                </tr>

            </thead>

            <tbody>

                ".$infor_cart."

                ".$infor_cart1."

            </tbody>

        </table>

    

    ";

    $cart->payment1();

    $mail = new action_email();

    // $gui_mail = $mail->email_send($email, "Thông Tin Đặt Hàng Từ V-ONION",$content);

?>



<script type="text/javascript">
    alert('Đặt hàng thành công');

    window.location.href = "/";
</script>

<?php } ?>
<?php 
    $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
?>
<div class="uni-checkout-body ">

    <div class="tg-container">

        <div id="primary">

            <div class="entry-thumbnail">

                <div class="entry-content-text-wrapper clearfix">

                    <div class="entry-content-wrapper">

                        <div class="entry-content">

                            <div class="woocommerce">

                                <div class="row">

                                    <form action="" method="POST" role="form" id="formPayment">

                                        <div class="vk-checkout-billing-left">

                                            <div class="col-md-6 col-sm-12 col-xs-12">

                                                <div class="woocommerce-billing-fields">

                                                    <h3>

                                                        THÔNG TIN THANH TOÁN CHUYỂN KHOẢN

                                                    </h3>

                                                    <div class="woocommerce-billing-fields__field-wrapper">

                                                        <p>Vietcombank</p>

                                                        <p>Số tài khoản : xxxxxxxxxxxxxxx</p>

                                                        <p>Chủ tài khoản : Nguyễn Văn A</p>

                                                        <p>Chi nhánh : Hà Nội</p>

                                                    </div>

                                                </div>

                                            </div>



                                            <div class="col-md-6 col-sm-12 col-xs-12 col-sm-12 col-xs-12">

                                                <div class="vk-checkout-order-paypal">
                                                    <h3>Chọn phương thức thanh toán</h3>
                                                    <div class="row">
                                                        <div class="theATM col-md-6 col-sm-12 col-xs-12">
                                                            <p><a href="/cart-payment" style="color:#fff;">Thanh toán tiền mặt</a></p>
                                                        </div>
                                                        <div class="airpay col-md-6 col-sm-12 col-xs-12" data-toggle="modal" data-target="#myModal-vnpay">
                                                            <p><i class="fa fa-paypal" aria-hidden="true"></i></p>
                                                        </div>
                                                        <div class="qrcode col-md-6 col-sm-12 col-xs-12" data-toggle="modal" data-target="#myModal-qr">
                                                            <p>Thanh toán QRcode</p>
                                                        </div>
                                                        <div class="momo col-md-6 col-sm-12 col-xs-12" data-toggle="modal" data-target="#myModal-momo">
                                                            <p>Thanh toán MoMo</p>
                                                        </div>
                                                        <div class="momo col-md-6 col-sm-12 col-xs-12" data-toggle="modal" data-target="#myModal-atm">
                                                            <p>Thanh toán Chuyển khoản</p>
                                                        </div>
                                                    </div>
                                                    <div id="order_review" class="woocommerce-checkout-review-order">

                                                        <div class="img-thanhtoan">

                                                            <img src="/images/bao-ve-nguoi-tieu-dung-khi-mua-hang-online.jpg"
                                                                alt="">

                                                        </div>

                                                        <div class="form-row place-order">

                                                            <noscript>

                                                                Since your browser does not support JavaScript, or
                                                                it is disabled, please ensure you click the
                                                                &lt;em&gt;Update Totals&lt;/em&gt; button before
                                                                placing your order. You may be charged more than the
                                                                amount stated above if you fail to do so.
                                                                &lt;br/&gt;&lt;input type="submit" class="button
                                                                alt" name="woocommerce_checkout_update_totals"
                                                                value="Update totals" /&gt;

                                                            </noscript>

                                                            <?php if (isset($_SESSION['user_id_gbvn'])) { ?>

                                                            <button type="submit" name="send_mail"
                                                                class="btn btn-primary" id="submitPayment"
                                                                style="padding:3px 30px; font-weight:bold; font-size:16px; margin-bottom:15px;background-color:#ff6131; border:1px solid #fff;"><?php if($lang == "vn"){echo "Hoàn tất mua hàng";}else{echo "Complete Shopping";}?></button>

                                                            <?php } else { ?>

                                                            <a href="/login" title=""
                                                                style="padding: 10px;background-color:#ff6131;color:#fff;">Hãy
                                                                đăng nhập để thanh toán</a>

                                                            <?php } ?>

                                                            <input type="hidden" id="wpnonce" name="_wpnonce"
                                                                value="341d89a24a"><input type="hidden"
                                                                name="_wp_http_referer"
                                                                value="/structure-contruction/checkout/?wc-ajax=update_order_review">

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                </div>

                                </form>

                                <div class="clearfix"></div>

                            </div>



                        </div>

                    </div><!-- .entry-content -->

                </div>

            </div>

        </div>

    </div> <!-- Primary end -->

</div>

</div>



<script>
    $(document).ready(function () {

        //------------------------checkout-----------------------------

        $('.woocommerce-info').on('click', function (e) {

            if ($(e.target).is('.click-here-to-login')) {

                $('.vk-form-woo-login').slideToggle();

                return false;

            }

            if ($(e.target).is('.click-here-entry-code')) {

                $('.vk-check-coupon').slideToggle();

                return false;

            }

        });

        $('.vk-checkout-billing-left').on('click', function (e) {

            if ($(e.target).is('.checkbox-create-account')) {

                $('.checkbox-create-account-form').slideToggle();

            }

        });

    });
</script>
<script>
    function cityf (data) {
        var id = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("district").innerHTML = this.responseText;
             document.getElementById("village").innerHTML = '<option value="0">Phường khác</option>';
            }
          };
          xhttp.open("GET", "/functions/ajax/city.php?id="+id, true);
          xhttp.send();
    }

    function districtf (data) {
        var id = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("village").innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/district.php?id="+id, true);
          xhttp.send();
    }
</script>