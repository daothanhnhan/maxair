<div class="col-md-6 col-sm-6 col-xs-6">
    <div class="item_sp">
        <div class="product-item">
            <!--BOX SALE-->
            <div class="item-img">
                <a href="/<?= $rowLang['friendly_url'] ?>">
                    <div class="sale_pt"><?= $item['product_price_sale'] ?>%
                        <p class="giam-sale">Giảm</p>
                    </div>
                    <img src="images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                </a>
            </div>
            <div class="item-text">
                <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                </h3>

                <!--PRICE-->
                <!--CÒN HÀNG HOẶC KHÔNG CÒN HÀNG-->
                <div class="action_product_banhatgiong row">
                    <div class="col-md-7 col-sm-12 col-xs-12">
                        <?php include DIR_PRODUCT."MS_PRODUCT_BANHATGIONG_0002.php";?>
                        <div class="my-grid">

                            <div class=" model__edit my-width-1-3@lg my-width-1-2@md" data-id="12"
                                data="modal-<?= $d ?>">

                                 <button class="info_thongso">Xem thông số</button>
                                 <button class="info_thongso1">Xem thông số</button>
                            </div>

                            <!-- Modal-->

                            <div class="modal fade bs-example-modal-lg in" id="modal-<?= $d ?>" tabindex="-1"
                                role="dialog" aria-hidden="true">

                                <div class="modal-dialog modal-lg" style="padding-top:10%">

                                    <div class="modal-content">

                                        <div class="modal-body">

                                            <div class="row">

                                                <div class="col-md-6 col-sm-6 col-xs-6">
                                                    <div class="mota_thongso">
                                                        <span><?= $item['product_content'] ?></span>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-default"
                                                data-dismiss="modal">Đóng</button>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="col-md-5  col-sm-12 col-xs-12">
                        <?php include DIR_CART."MS_CART_BANHATGIONG_0002_2.php";?>
                        <?php include DIR_CART."MS_CART_BANHATGIONG_0002_1.php";?>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>