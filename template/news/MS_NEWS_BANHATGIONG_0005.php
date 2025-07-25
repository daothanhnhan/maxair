<?php
    $news = new action_news();
    $list_news_new = $news->getListNewsNew_hasLimit(4);
?>
<div class="gb-home-product-sanphamyeuthich_banhatgiong">
    <div class="container">
        <div class="gb-home-product-sanphamyeuthich_banhatgiong-title">
            <h2 class="header_product_banhatgiong">Tin tức mới nhất</h2>
        </div>
       <div class="row">
            <?php
                foreach ($list_news_new as $item) {
                    $rowLang = $news->getNewsLangDetail_byId($item['news_id'],$lang);
                    $row1 = $news->getNewsDetail_byId($item['news_id'],$lang);
            ?>
                <div class="col-md-3 col-sm-6">
                    <div class="item_product">
                        <div class="cover_item_product_banhatgiong">
                            <div class="box_image_product_banhatgiong">
                                <a href="/<?= $rowLang['friendly_url'] ?>">
                                    <img src="/images/<?= $row1['news_img'] ?>" alt="" class="img-ressponsive">
                                </a>
                            </div>
                            <div class="box_info_news_banhatgiong">
                                <a class="link_name_product_banhatgiong" href="/<?= $rowLang['friendly_url'] ?>">
                                    <?= $rowLang['lang_news_name'] ?>
                                </a>
                            </div>
                            <div class="box_des_news_banhatgiong">
                                <?= $rowLang['lang_news_des'] ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>