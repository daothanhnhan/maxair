<?php 
    $bancanbiet = $action->getDetail('newscat', 'newscat_id', '79');
?>
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="container"id="mua-o-dau">
<a  href="/<?= $bancanbiet['friendly_url'] ?>">
<h2 class="header1"><?= $bancanbiet['newscat_name'] ?></h2></a>
    <div id="mua-o-dau" class=" tinhnang">
        <div class="row slide4 owl-carousel owl-theme" style="padding:25px 15px ">

            <?php      

            // $action_product = new action_product();                                                        

            $slide2 = $action->getList('news', 'newscat_id', '79' ,'news_id', 'desc', '', '4', '');

             // print_r($rows);

            foreach ($slide2 as $row4) {

            // print_r($rows);

            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-item">

                    <a  href="/<?= $row4['friendly_url'] ?>">
                        <img src="/images/<?= $row4['news_img'] ?>">
                    </a>

                </div>
                <div class="info_diachi">
                <a  href="/<?= $row4['friendly_url'] ?>">
                <h4  href="/<?= $row4['friendly_url'] ?>"><?= $row4['news_name'] ?></h4>
                </a>
                <p class="mota_diachi"><?= $row4['news_des'] ?></p>
                </div>

            </div>

            <?php } ?>


        </div>

    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide4');

        owl.owlCarousel({

            loop: true,

            margin: 20,

            navSpeed: 500,

            nav: true,

            dots: false,

            autoplay: true,

            rewind: true,

            navText: ["<img src='images/btn-arrow-ft-black-left.png'>",
                "<img src='images/btn-arrow-ft-black-right.png'>"
            ],

            responsive: {

                0: {

                    nav: false,

                    items: 2,

                    dots: false

                },

                600: {

                    nav: false,

                    items: 2,

                    dots: false

                },

                992: {

                    nav: true,

                    items: 4

                }

            }

        });

    });
</script>