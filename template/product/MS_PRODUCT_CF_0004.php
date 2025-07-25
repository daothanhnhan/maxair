<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<?php
$product_type = new action_product();

$product_hot = $product_type->getProductList_byMultiLevel_orderProductId(235,'desc','','','');
$product_promotions = $product_type->getProductList_byMultiLevel_orderProductId(233,'desc','','','');//var_dump($rows);
$product_new = $product_type->getProductList_byMultiLevel_orderProductId(234,'desc','','','');
$product_sale = $product_type->getProductList_byMultiLevel_orderProductId(236,'desc','','','');
?>

<div class="container">
    <div class="gb-product-home">
        <!--HEADER PRODUICT TOP-->
        <div class="gb-product-top">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="header2">Sản phẩm bạn có thể quan tâm</h2>
                    <div class="gb-prodct-top-tab">
                        <div class="panel-heading">
                            <!--NAV ICONS-->
                            <!--<div class="icons-nav-product">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </div>-->
                            <ul class="nav nav-tabs product-menu-content">
                                <li class="active">
                                    <a href="#tab1default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">09:00</div>
                                        <div class="flash-sale-session__display-text">Đang diễn ra</div>
                                    </a></li>
                                <li><a href="#tab2default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">13:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                                <li><a href="#tab3default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">16:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                                <li><a href="#tab4default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">20:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!--SHOW PRODUCT ITEM-->
        <div class="gb-product-show">
            <div class="panel-body">
                <div class="tab-content">
                    <!--SALE 9:00-->
                    <div class="tab-pane fade in active" id="tab1default">
                        <div class="gb-product-show_slide list_product owl-carousel owl-theme">
                            <?php
                        foreach ($product_promotions as $item) {
                            $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);
                            $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);
                            ?>
                            <div class="item">
                                <div class="product-item">
                                    <!--BOX SALE-->
                                    <div class="item-img"> <a href="/<?= $rowLang['friendly_url'] ?>"><img
                                                src="images/<?= $row1['product_img'] ?>" alt=""
                                                class="img-responsive"></a>
                                    </div>
                                    <div class="item-text">
                                        <h3><a
                                                href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                                        </h3>
                                        <!--PRICE-->
                                        <!--CÒN HÀNG HOẶC KHÔNG CÒN HÀNG-->
                                    </div>
                                </div>
                            </div> <?php } ?> </div>
                    </div>
                    <!--SALE 13:00-->
                    <div class="tab-pane fade" id="tab2default">
                        <div class="gb-product-show_slide list_product owl-carousel owl-theme">
                            <?php                         foreach ($product_new as $item) {                            $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        ?>
                            <div class="item">
                                <div class="product-item">
                                    <!--BOX SALE-->
                                    <div class="item-img"> <a href="/<?= $rowLang['friendly_url'] ?>"><img
                                                src="images/<?= $row1['product_img'] ?>" alt=""
                                                class="img-responsive"></a>
                                    </div>
                                    <div class="item-text">
                                        <h3><a
                                                href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                                        </h3>
                                        <!--PRICE-->
                                        <!--CÒN HÀNG HOẶC KHÔNG CÒN HÀNG-->
                                    </div>
                                </div>
                            </div> <?php } ?> </div>
                    </div>
                    <!--SALE 16:00-->
                    <div class="tab-pane fade" id="tab3default">
                        <div class="gb-product-show_slide list_product owl-carousel owl-theme">
                            <?php                            foreach ($product_hot as $item) {                             $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        ?>
                            <div class="item">
                                <div class="product-item">
                                    <div class="item-img"> <a href="/<?= $rowLang['friendly_url'] ?>"><img
                                                src="images/<?= $row1['product_img'] ?>" alt=""
                                                class="img-responsive"></a>
                                    </div>
                                    <div class="item-text">
                                        <h3><a
                                                href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                                        </h3>

                                    </div>
                                </div>
                            </div> <?php } ?> </div>
                    </div>
                    <!--SALE 20:00-->
                    <div class="tab-pane fade" id="tab4default">
                        <div class="gb-product-show_slide list_product owl-carousel owl-theme">
                            <?php                            foreach ($product_sale as $item) {                             $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        ?>
                            <div class="item">
                                <div class="product-item">
                                    <div class="item-img"> <a href="/<?= $rowLang['friendly_url'] ?>"><img
                                                src="images/<?= $row1['product_img'] ?>" alt=""
                                                class="img-responsive"></a>
                                    </div>
                                    <div class="item-text">
                                        <h3><a
                                                href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                                        </h3>

                                    </div>
                                </div>
                            </div> <?php } ?> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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