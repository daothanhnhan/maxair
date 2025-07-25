<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_BANHATGIONG_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>



    <div class="gb-header-banhatgiong">

        <div class="container">

            <div class="gb-header-top-banhatgiong">

                <div class="row">

                    <div class="col-md-4">

                        <div class="gb-header-top-banhatgiong-left">

                            <ul>

                                <li><i class="fa fa-phone" aria-hidden="true"></i> <?= $rowConfig['content_home3'] ?>
                                </li>

                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i>
                                    <?= $rowConfig['content_home2'] ?></li>

                            </ul>

                        </div>

                    </div>

                    <div class="col-md-8">

                        <div class="gb-header-top-banhatgiong-right">

                            <ul>

                                <li>

                                    <?php
                                        // var_dump($_SESSION);
                                        if(isset($_SESSION['user_id_gbvn'])){

                                    ?>

                                    <a class="user" href="/thong-tin-ca-nhan"><i class="fa fa-user"
                                            aria-hidden="true"></i><?= $_SESSION['user_name_gbvn'] ?></a>

                                    <a class="logout" href="/logout" title=""><i class="fa fa-sign-out"
                                            aria-hidden="true"></i></a>

                                    <?php }else{ ?>

                                    <a class="user" href="/login"><i class="fa fa-lock" aria-hidden="true"></i> Tài
                                        khoản</a>

                                    <?php } ?>

                                </li>

                                <?php include DIR_CART."MS_CART_CF_0003.php";?>

                                <!-- <li><a href=""><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích (0)</a></li> -->

                                <li><a href="/cart-payment"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a>
                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>



        <!--HEADER between-->

        <div class="gb-header-between_banhatgiong menusticky">

            <div class="container">

                <div class="row">

                    <div class="col-md-3  col-sm-3">

                        <div class="gb-header-between_banhatgiong-logo">

                            <h1>

                                <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt=""
                                        class="img-responisve"></a>

                            </h1>

                        </div>

                    </div>

                    <div class="col-md-5 col-sm-12">

                        <?php include DIR_SEARCH."MS_SEARCH_BANHATGIONG_0001.php";?>

                    </div>

                    <div class="col-md-4">

                        <div class="gb-header-between_banhatgiong-hotro">

                            <ul>

                                <li>

                                    <div class="icons-hotro_banhatgiong">

                                        <i class="fa fa-phone" aria-hidden="true"></i>

                                    </div>

                                </li>

                                <li>

                                    <div class="number-hotro_banhatgiong">

                                        Hỗ trợ tư vấn <br> <?= $rowConfig['content_home3'] ?>

                                    </div>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- <div class="gb-section-1-slidebar">

            <?php //include DIR_PRODUCT."MS_PRODUCT_CF_0001.php";?>

        </div> -->

        <!--HEADER BETWEEN-->

<div class="bahg1">
        <div class="gb-header-bottom_banhatgiong sticky-menu">

            <div class="container">

                <div class="row">

                    <div class="col-md-10">

                        <?php include DIR_MENU."MS_MENU_BANHATGIONG_0001.php";?>

                    </div>

                    <div class="col-md-2">

                        <?php //include DIR_CART."MS_CART_CF_0001.php";?>

                    </div>

                </div>

            </div>

        </div>
</div>
    </div>

</header>
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

        if ($(window).width() >= 992) {

            $(".sticky-menu").sticky({
                topSpacing: 55
            });

        }
        if ($(window).width() <= 992) {

            $(".sticky-menu").sticky({
                topSpacing: 29
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
