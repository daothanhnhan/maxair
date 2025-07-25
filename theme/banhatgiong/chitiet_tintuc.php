<?php 

    $action_news = new action_news(); 

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang1 = $action_news->getNewsLangDetail_byUrl($slug,$lang);

    $row = $action_news->getNewsDetail_byId($rowLang1['news_id'],$lang);

    $_SESSION['sidebar'] = 'newsDetail';

    $news_breadcrumb = $action_news->getNewsCatLangDetail_byId($row['newscat_id'], $lang);

    $breadcrumb_url = $news_breadcrumb['friendly_url'];

    $breadcrumb_name = $news_breadcrumb['lang_newscat_name'];

    $use_breadcrumb = true;

?>

<div class="gb-chitiet-tintuc">

    <div class="container">

        <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_BANHATGIONG_0001.php";?>

        <div class="row" style="margin-top: 20px;">

            <div class="col-md-3" style="display: none;">

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0002.php"; ?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0001.php"; ?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0003.php"; ?>

                <?php //include DIR_BANNER."MS_BANNER_BANHATGIONG_0002.php";?>

                <?php //include DIR_BANNER."MS_BANNER_BANHATGIONG_0003.php";?>

            </div>

            <div class="col-md-12">

                <?php include DIR_NEWS."MS_NEWS_BANHATGIONG_0002.php";?>

                <div class="gb-divider"></div>

                <!--NHẬN XÉT-->

                <?php// include DIR_EMAIL."MS_EMAIL_BANHATGIONG_0004.php";?>

                <div class="gb-divider"></div>

                <!--TIN TUC LIÊN QUAN-->

                <?php include DIR_NEWS."MS_NEWS_BANHATGIONG_0003.php";?>

            </div>

        </div>

    </div>

</div>