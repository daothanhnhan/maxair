<?php
    $pro_cat = new action_product();
    $list_pro_cat = $pro_cat->getListProductCat_byOrderASC();
    
?>
<div class="side_bar">
    <aside class="widget">
        <h3 class="widget-title-tintuc">Danh mục sản phẩm</h3>
        <div class="widget-content">
            <ul class="list_category">
                <?php
                    foreach ($list_pro_cat as $item) {
                        $number_product = count($pro_cat->getProductList_byMultiLevel_orderProductId($item['productcat_id'], '','','',''));
                ?>
                    <li class="item_category">
                        <a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?> (<?= $number_product ?>)</a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </aside>
</div>