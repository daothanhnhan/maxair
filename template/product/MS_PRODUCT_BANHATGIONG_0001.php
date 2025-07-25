<?php
    $product = new action_product();
    $list_product_new = $product->getListProductNew_hasLimit(8);
    $list_product_hot = $product->getListProductHot_hasLimit(8);
    $list_product_sales = $product->getListProductSaleOff_hasLimit(8);
?>
<div class="gb-product-tab-home_banhatgiong">
    <div class="tabbable-panel">
        <div class="tabbable-line">
            <ul class="nav nav-tabs ">
                <li class="active">
                    <a href="#tab_default_1" data-toggle="tab">Sản phẩm nổi bật </a>
                </li>
                <li>
                    <a href="#tab_default_2" data-toggle="tab">Sản phẩm mới nhất </a>
                </li>
                <li>
                    <a href="#tab_default_3" data-toggle="tab">Sản phẩm khuyến mãi </a>
                </li>
            </ul>
            <div class="tab-content">
                <!-- SẢN PHẨM NỔI BẬT -->
                <div class="tab-pane active" id="tab_default_1">
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
                    <div class="btn-xemthem"><a href="/san-pham">Xem thêm <span>+</span></a></div>
                </div>
                <!-- SẢN PHẨM MỚI -->
                <div class="tab-pane" id="tab_default_2">
                    <div class="row">
                        <?php
                            foreach ($list_product_new as $item) {
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
                    <div class="btn-xemthem"><a href="/san-pham">Xem thêm <span>+</span></a></div>
                </div>
                <!-- SẢN PHẨM KHUYẾN MÃI -->
                <div class="tab-pane" id="tab_default_3">
                    <div class="row">
                        <?php
                            foreach ($list_product_sales as $item) {
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
                    <div class="btn-xemthem"><a href="/san-pham">Xem thêm <span>+</span></a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
              window.location = '/cart';
          }else{
              location.reload();
          }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>