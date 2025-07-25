<?php

    $news = new action_news();
    $video1 = $news->getList('news', 'newscat_id', '79' ,'news_id', 'desc', '', '4', '');

    $list_news_new = $news->getListNewsNew_hasLimit(4);

?>

<div class="gb-sidebar-baivietmoinhat">

    <aside class="widget">

        <h3 class="widget-title-tintuc"> bài viết mới nhất</h3>

        <div class="widget-content">

            <ul>

                <?php

                    foreach ($video1 as $item) {

                        $rowLang = $news->getNewsLangDetail_byId($item['news_id'],$lang);

                        $row1 = $news->getNewsDetail_byId($item['news_id'],$lang);

                ?>

                    <li>

                        <div class="item">

                            <div class="item-img">

                                <a href="/<?= $rowLang['friendly_url'] ?>">

                                    <img src="/images/<?= $row1['news_img'] ?>" alt="" class="img-responsive">

                                </a>

                            </div>

                            <div class="item-text">

                                <h2>

                                    <a href="/<?= $rowLang['friendly_url'] ?>">

                                        <?= $rowLang['lang_news_name'] ?>

                                    </a>

                                </h2>

                            </div>

                        </div>

                    </li>

                <?php } ?>

            </ul>

        </div>

    </aside>

</div>