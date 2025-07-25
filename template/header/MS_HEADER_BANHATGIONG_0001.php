<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_BANHATGIONG_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header id="tong-quan">
    <div class="paddinghope">
        <div class="gb-header-banhatgiong nenbo">
            <div class="container">
                <div class="gb-header-top-banhatgiong">
                    <div class="row">
                        <div class="col-md-6 col-xs-7 col-sm-6">

                            <div class="gb-header-top-banhatgiong-left">

                                <ul>

                                    <li><i class="fa fa-phone" aria-hidden="true"></i>
                                        <?= $rowConfig['content_home3'] ?>
                                    </li>

                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i>
                                        <?= $rowConfig['content_home2'] ?></li>

                                </ul>

                            </div>

                        </div>

                        <div class="col-md-6 col-xs-5 col-sm-6">

                            <div class="gb-header-top-banhatgiong-right">

                                <ul>

                                    <li>

                                        <?php
                                        // var_dump($_SESSION);
                                        if(isset($_SESSION['user_id_gbvn'])){

                                    ?>

                                        <a class="user" href="/thong-tin-ca-nhan"><i class="fa fa-user"
                                                aria-hidden="true"></i><?= $_SESSION['user_name_gbvn'] ?></a>

                                        <!-- <a class="logout" href="/logout" title=""><i class="fa fa-sign-out1"
                                            aria-hidden="true">Đăng xuất</i></a> -->
                                        <a class="logout" href="/logout" title="">Đăng xuất</a>

                                        <?php }else{ ?>

                                        <a class="user" href="/login"><i class="fa fa-lock" aria-hidden="true"></i> Tài
                                            khoản</a>

                                        <?php } ?>

                                    </li>

                                    <?php include DIR_CART."MS_CART_CF_0003.php";?>

                                    <!-- <li><a href=""><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích (0)</a></li> -->

                                    <!-- <li><a href="/cart-payment"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a>
                                </li> -->

                                </ul>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!--HEADER between-->

        <div class="gb-header-between_banhatgiong nenbo menusticky">
            <div class="container">
                <div class="row">

                    <div class="col-md-2  col-sm-2">

                        <div class="gb-header-between_banhatgiong-logo">

                            <h1>

                                <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt=""
                                        class="img-responisve"></a>

                            </h1>

                        </div>

                    </div>

                    <div class="col-md-8  col-sm-10 col-xs-12">

                        <?php include DIR_MENU."MS_MENU_CF_0001.php";?>

                    </div>

                    <div class="col-md-2 hidden-xs hidden-sm">

                        <?php include DIR_SEARCH."MS_SEARCH_BANHATGIONG_0001.php";?>

                    </div>

                </div>

            </div>

        </div>


        <div class="gb-header-between1_banhatgiong">
            <div class="container">
                <a href="#" onclick="click_heart()">
                    <span class="icn">
                        <img src="/images/icn-wishlist.png" alt="My Favorites">
                        <span id="traitim" class="fa fa-heart" aria-hidden="true"></span>
                    </span>
                </a>
            </div>
        </div>


        <div class="gb-section-1-slidebar">


            <?php include DIR_PRODUCT."MS_PRODUCT_CF_0001.php";?>

        </div>

        <!--HEADER BETWEEN-->

        <div class="bahg1 paddinghope">

            <div class="gb-header-bottom_banhatgiong menu-sti">

                <div class="container">

                    <div class="row">

                        <div class="col-md-12">

                            <?php include DIR_MENU."MS_MENU_BANHATGIONG_0001.php";?>

                        </div>

                        <!-- <div class="col-md-2">

                            <?php //include DIR_CART."MS_CART_CF_0001.php";?>

                        </div> -->

                    </div>

                </div>

            </div>
        </div>
    </div>

</header>
<?php 
    if (isset($_GET['page'])) {
        if ($urlAnalytic != 'product_languages') {
            if ($urlAnalytic != 'cart') {
                include DIR_CART."MS_CART_CF_0002.php";
            }
        }
    }

?>
<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {

        $(".menusticky").sticky({
            topSpacing: 0;
        });

    });
</script>
<script>
    $(document).ready(function () {
        if ($(window).width() >= 1200) {

            $(".menu-sti").sticky({
                topSpacing: 45
            });

        }
        if ($(window).width() >= 992 && $(window).width() <= 1200) {

            $(".menu-sti").sticky({
                topSpacing: 53
            });

        }
        if ($(window).width() <= 992) {

            $(".menu-sti").sticky({
                topSpacing: 46
            });

        }
        if ($(window).width() <= 768) {

            $(".menu-sti").sticky({
                topSpacing: 50
            });

        }

    });
</script>
<script>
    $(document).ready(function () {

        $(".stickymn").sticky({
            topSpacing: 0
        });

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
