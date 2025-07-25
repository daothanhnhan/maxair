<?php 

    $action_lang = new action_lang();

    $url_lang = $action_lang->get_url_lang_newsDetail($slug, $lang);

?>

<div class="gb-chitiet-tintuc-content">

    <h2 style="margin: 0"><?= $rowLang1['lang_news_name'] ?></h2>

    <div class="gb-author-time">

        <ul>

            <li class="time"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>

                <?= date('d-m-Y', strtotime($row['news_created_date']))  ?>

            </li>


        </ul>

    </div>

    <div class="gb-chitiet-tintuc-body">

        <?= $rowLang1['lang_news_content'] ?>

    </div>

</div>