<?php

    $product = new action_product();

    $list_product_hot = $product->getListProductHot_hasLimit(4);

?>

<div class="gb-home-product-sanphamyeuthich_banhatgiong"id="gioi-thieu">

    <div class="container">

        <div class="gb-home-product-sanphamyeuthich_banhatgiong-title">

            <h2 class="header_product_banhatgiong" >Sản phẩm yêu thích</h2>

        </div>

       <div class="row">

            <?php

                foreach ($list_product_hot as $item) {

                    $rowLang = $product->getProductLangDetail_byId($item['product_id'],$lang);

                    $row1 = $product->getProductDetail_byId($item['product_id'],$lang);

            ?>

                <div class="col-md-3 col-sm-6">

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