<?php
    $product = new action_product();
    $list_product_new = $product->getListProductNew_hasLimit(6);
?>
<div class="side_bar_khuyenmai">
    <aside class="widget">
        <h3 class="widget-title-tintuc">Sản phẩm khuyến mãi</h3>
        <div class="widget-content">
            <div class="box_sale">
                <ul class="list_pro_sale">
                    <?php
                        foreach ($list_product_new as $item) {
                            $rowLang = $product->getProductLangDetail_byId($item['product_id'],$lang);
                            $row1 = $product->getProductDetail_byId($item['product_id'],$lang);
                    ?>
                        <li class="item_pro_sale">
                            <span class="sale">Sale</span>
                            <div class="box_image_pro_sale">
                                <a href="/<?= $rowLang['friendly_url'] ?>">
                                    <img src="/images/<?= $row1['product_img'] ?>" alt="" width="100%" class="img-responsive"/>
                                </a>
                            </div>
                            <div class="box_info_pro_sale">
                                <a href="/<?= $rowLang['friendly_url'] ?>" class="link_pro_sale">
                                    <?= $rowLang['lang_product_name'] ?>
                                </a>
                            </div>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </aside>
</div>