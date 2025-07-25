<?php 

 
    $product = new action_product();
    //$list_product_n = $product->getListProductNew_hasLimit(1);
    $list_product_n= $product->getProductList_byMultiLevel_orderProductId(237,'desc','','1','');

?>


<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-home-product nenbo1 gb-home-product-feature" style=" background-image: url(/images/bg-hero-dark.jpg);">

    <div class="gb-home-product-feature-slide1 stickymn">
        <div class="container">
            <?php 

            foreach ($list_product_n as $item) { 

            $action_product1 = new action_product(); 

            $rowLang1 = $action_product1->getProductLangDetail_byId($item['product_id'],$lang);

            $row1 = $action_product1->getProductDetail_byId($item['product_id'],$lang); 

        ?>

            <div class="item">

                <div class="product-item" style="border-top: 1px solid;">
                    <div class="row">
                        <div class="col-md-7 col-sm-7 col-xs-6 giasp">
                            <h3><a><?= $rowLang1['lang_product_name'] ?></a></h3>

                            <?php include DIR_SOCIAL."MS_SOCIAL_BANHATGIONG_0001.php";?>

                        </div>
                        <div class="col-md-5 col-sm-5 col-xs-6 giasp">
                            <ul>
                                <li class="item_social">
                                    <?php include DIR_CART."MS_CART_CF_0001.php";?>
                                </li>
                                <li class="item_social">
                                    <span class="yeuthich" onclick="click_heart()"><i id="traitim_header"
                                            class="fa fa-heart" aria-hidden="true"></i></span>
                                </li>
                                <li class="item_social">
                                    <?php if (isset($_SESSION['user_id_gbvn'])) { ?>

                                    <span class="price_product_banhatgiong">
                                        <?= number_format($row1['product_price']-$rowConfig['content_home8']) ?>
                                        VNĐ</span>
                                    <?php } else { ?>
                                    <span class="price_product_banhatgiong">
                                        <?= number_format($row1['product_price']) ?>
                                        VNĐ</span>
                                    <?php } ?>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

            </div>

            <?php } ?>

        </div>
    </div>
</div>


<div class="gb-home-product-feature-slide nenbo">
    <div class="container">
        <?php 

            foreach ($list_product_n as $item) { 

                $action_product1 = new action_product(); 

                $rowLang1 = $action_product1->getProductLangDetail_byId($item['product_id'],$lang);

                $row1 = $action_product1->getProductDetail_byId($item['product_id'],$lang); 

            ?>

        <div class="item">

            <div class="product-item">
                <div class="row">

                    <div class=" col-md-6 col-sm-6 col-xs-12 item-img">

                        <a>

                            <img src="/images/<?= $row1['product_img'] ?>" alt="<?= $row1['product_name'] ?>"
                                class="img-responsive">
                        </a>


                    </div>

                    <div class="col-md-6 col-sm-6 col-xs-12 caption">

                        <div class="col-sm-12 col-xs-12 clear-padding-right">

                            </p>
                            <h4><a><?= $rowLang1['lang_product_name'] ?></a></h4>
                            <p class="mota_sp"><?= $item['product_des'] ?></p>

                        </div>


                    </div>
                </div>


            </div>

        </div>

        <?php } ?>

    </div>

</div>

</div>




<script>
    function click_heart() {
        var x = document.getElementsByClassName("fa-heart");
        var ln = x.length;
        for (i = 0; i < ln; i++) {
            x[i].style.color = "red";
        }
    }
</script>