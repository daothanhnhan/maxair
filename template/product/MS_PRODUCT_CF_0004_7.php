<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link href="timeTo.css" type="text/css" rel="stylesheet" />

<?php
$now = date("H:i:s");
$product_type = new action_product();

$product_hot = $product_type->getProductList_byMultiLevel_orderProductId(235,'desc','','4','');
$product_promotions = $product_type->getProductList_byMultiLevel_orderProductId(233,'desc','',$rowConfig['product_flash_num'],'');//var_dump($rows);
$product_new = $product_type->getProductList_byMultiLevel_orderProductId(234,'desc','','4','');
$product_sale = $product_type->getProductList_byMultiLevel_orderProductId(236,'desc','','4','');
?>
<style>
    .gb-prodct-top-tab ul.nav.nav-tabs.product-menu-content li {
        width: 100%;
    }

    .flash-sale {
        background-color: #fff;
    }
</style>
<div class=" container flash-sale2">
    <div class=" gb-product-top flash-sale flash-sale1">
        <div class="row">
            <div class="col-md-12">
                <div class="header-sale">
                    <div class="row flash-sale-header-with-countdown-timer__wrapper--with-horizontal-line-decorators">

                        <div class="sale1"></div>
                        <div class="contdown_sale">
                            <?php include DIR_PRODUCT."MS_PRODUCT_CF_COUNDOWN.php";?>
                        </div>
                    </div>
                </div>

                <div class="gb-prodct-top-tab">
                    <div class="panel-heading">
                        <!--NAV ICONS-->
                        <div class="icons-nav-product">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                        <ul class="nav nav-tabs product-menu-content">
                            <li class="active">
                                <div class="row">
                                    <div class="col-md-2 col-sm-2 col-xs-3">
                                        <span class="big_sale">
                                            <img src="/images/logogiamgia.jpg">
                                        </span>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-9">
                                        <span class="big_sale1"><?= $rowConfig['text'] ?></span>
                                    </div>
                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                        <p class="txt01demo"> Chương trình giảm giá <span>Đang diễn ra</span></p>

                                        <!-- <span class="big_sale2">Chương trình giảm giá</span>
                                        <span class="big_sale3">Đang diễn ra</span></div> -->

                                    </div>
                                   
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>

<div class="daily_sale">
    <div class="container">
        <div class="gb-product-home">
            <!--HEADER PRODUICT TOP-->

            <!--SHOW PRODUCT ITEM-->
            <div class="gb-product-show">
                <div class="panel-body">
                    <div class="tab-content">
                        <!--SALE 9:00-->
                        <div class="row tab-pane fade in active" id="tab1default">
                            <?php
                                $d=0;
                                $a=0;    
                                foreach ($product_promotions as $item) {$d++;
                                    $a++;
                                        $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);
                                        $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);
                                    ?>
                            <?php include DIR_PRODUCT."MS_PRODUCT_CF_0004_1.php";?>
                            <?php

                                if ($a%2==0) {

                                    echo '<hr style="width:100%;border:0;" />';

                                }

                                }

                                ?>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popup gio hang -->
<?php //include DIR_CART."MS_CART_CF_0002.php";?>

<script>
    // Get the modal

    var modal = document.getElementById("myModal");



    // Get the button that opens the modal

    var btn = document.getElementById("myBtn");



    // Get the <span> element that closes the modal

    var span = document.getElementsByClassName("close")[10];



    // When the user clicks the button, open the modal 

    btn.onclick = function () {

        modal.style.display = "block";

    }



    // When the user clicks on <span> (x), close the modal

    span.onclick = function () {

        modal.style.display = "none";

    }



    // When the user clicks anywhere outside of the modal, close it

    window.onclick = function (event) {

        if (event.target == modal) {

            modal.style.display = "none";

        }

    }
</script>

<script>
    data = '';

    $('.model__edit').click(function () {

        tableData = '';

        data = $(this).attr('data');

        $('#' + data).modal();



        id = $(this).attr('data-id');

        $.ajax({

            url: 'http://bighouseplus.com/getImage/' + id,

            method: 'get',

            success: function (data) {

                data.data.forEach(function (element) {

                    tableData += '<div class="item col-md-2 ">' +

                        '<a data="' + element.id +
                        '"><img style="width:100%" class="detail__img" data="' + element
                        .id + '" src="http://bighouseplus.com/upload/project/' + element
                        .image + '"></a>' +

                        '</div>'

                });

                $('.slide__img').html(tableData);

                // new imageCk(id);

                $('.detail__img').click(function () {

                    // console.log('âs');

                    src = $(this).attr('src');

                    $('.image__detail').attr('src', src)

                    console.log(src);

                });

            }

        })


    });
</script>
<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-product-show_slide').owlCarousel({
            loop: true,
            responsiveClass: true,
            nav: true,
            navText: [],
            dots: false,
            margin: 30,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 3
                },
                992: {
                    items: 4
                }
            }
        });
        $('.icons-nav-product').click(function () {
            $('.product-menu-content').slideToggle();
        });
    });
</script>

<?php 
    $now = date('H:i:s');//echo $now;
    // $now = '14:00:00';
    if ($now < '09:00:00') {
        $hour = '09:00:00';
    }
    if ($now < '13:00:00' && $now >= '09:00:00') {
        $hour = '13:00:00';
    }
    if ($now < '16:00:00' && $now >= '13:00:00') {
        $hour = '16:00:00';
    }
    if ($now < '20:00:00' && $now >= '16:00:00') {
        $hour = '20:00:00';
    }
    $hour = '00:00:00';
    $count_down = $action->get_count_down();
    $count_down = strtotime($rowConfig['count_down']);

?>
<script>
    // Set the date we're counting down to
    var countDownDate = new Date("<?= date('M d, Y', $count_down) ?> <?= $hour ?>").getTime();

    // Update the count down every 1 second
    var x = setInterval(function () {

        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        if (hours < 10) {
            hours = '0' + hours;
        }
        if (minutes < 10) {
            minutes = '0' + minutes;
        }
        if (seconds < 10) {
            seconds = '0' + seconds;
        }

        // Output the result in an element with id="demo"
        document.getElementById("hour").innerHTML = '<span class="gio">' + days + ' ngày </span>' +
            '<span class="gio">' + hours + '</span>' + '<span class="gio-giac">' + ':' + '</span>' +
            '<span class="gio">' + minutes + '</span>' + '<span class="gio-giac">' + ':' + '</span>' +
            '<span class="gio">' + seconds + '</span>';

        // If the count down is over, write some text 
        if (distance < 0) {
            clearInterval(x);
            document.getElementById("hour").innerHTML = "Đã kết thúc";
        }
    }, 1000);
</script>

<script>
    $(document).ready(function () {

        if ($(window).width() >= 992) {

            $(".flash-sale2").sticky({
                topSpacing: 0,
                bottomSpacing: 1300
            });

        }
        if ($(window).width() <= 992) {

            $(".flash-sale2").sticky({
                topSpacing: 0,
                bottomSpacing: 1300
            });

        } else {

            $(".flash-sale2").trigger('sticky.destroy');

        }

    });
</script>
<script type="text/javascript">
    function load_url(id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status ==
                200) {
                // document.getElementById("demo").innerHTML = this.responseText;           
                // alert(this.responseText);           
                //alert('thanh cong.');           
                window.location.href = "/cart";
            }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id=" + id + "&product_name=" + name + "&product_price=" + price +
            "&product_quantity=1&action=add");
        xhttp.send();
    }
</script>
<script>
    $(document).ready(function () {
        $(".theATM, .airpay, .qrcode, .momo").click(function () {
            // Clear các thẻ li có Class click cũ
            $(".theATM, .airpay, .qrcode, .momo").removeClass("click1");
            // Thêm Class
            $(this).addClass("click1");
        });
    });
</script>