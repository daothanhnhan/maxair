<?php

    $action_relative = new action_product();

    $list_pro_relative = $action_relative->getListProductRelate_byIdCat_hasLimit($productcat_id, 8);

?>

<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">


<div class="container">
    <div class="gb-product-home gb-product-tuongtu">

        <!--HEADER PRODUICT TOP-->

        <div class="gb-product-top">

            <div class="gb-divider"></div>

            <h2 class="header1">Sản phẩm bạn có thể quan tâm</h2>

            <div class="gb-divider"></div>

        </div>

        <!--SHOW PRODUCT ITEM-->

        <div class="gb-product-show">

            <div class="gb-product-sptt-three-item owl-carousel owl-theme">

                <?php

                foreach ($list_pro_relative as $item) {

                    $rowLang = $action_relative->getProductLangDetail_byId($item['product_id'],$lang);

                    $row1 = $action_relative->getProductDetail_byId($item['product_id'],$lang); 

            ?>

                <div class="item">

                    <div class="item_product">

                        <div class="cover_item_product_banhatgiong">

                            <div class="box_image_product_banhatgiong">

                                <a href="/<?= $rowLang['friendly_url'] ?>">

                                    <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-ressponsive">

                                </a>

                                <div class="action_product_banhatgiong">

                                    <?php include DIR_CART."MS_CART_BANHATGIONG_0002.php";?>

                                    <?php include DIR_CART."MS_CART_BANHATGIONG_0003.php";?>

                                    <?php include DIR_CART."MS_CART_BANHATGIONG_0004.php";?>

                                </div>

                            </div>

                            <div class="box_info_product_banhatgiong">

                                <a class="link_name_product_banhatgiong" href="/<?= $rowLang['friendly_url'] ?>">

                                    <?= $rowLang['lang_product_name'] ?>

                                </a>

                                <?php include DIR_PRODUCT."MS_PRODUCT_BANHATGIONG_0002.php";?>

                            </div>

                        </div>

                    </div>

                </div>

                <?php } ?>

            </div>

        </div>

    </div>
</div>


<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        $('.gb-product-sptt-three-item').owlCarousel({

            loop: true,

            responsiveClass: true,

            nav: false,

            navText: [],

            dots: false,

            margin: 30,

            autoplay: true,

            responsive: {

                0: {

                    items: 1

                },

                768: {

                    items: 4

                }

            }

        });

    });
</script>

<script type="text/javascript">
    function load_url(id, name, price) {

        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function () {

            if (this.readyState == 4 && this.status == 200) {

                if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {

                    window.location = '/cart';

                } else {

                    location.reload();

                }

            }

        };

        xhttp.open("POST", "/functions/ajax-add-cart.php", true);

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("product_id=" + id + "&product_name=" + name + "&product_price=" + price +
            "&product_quantity=1&action=add");

        xhttp.send();

    }
</script>