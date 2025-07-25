
<div class="container">
    <div id="tinh-nang" class="tinhnang">
        <div class="row slide-tinhnang owl-carousel owl-theme" style="">

            <?php      

            // $action_product = new action_product();                                                        

            $video = $action->getList('news', 'newscat_id', '76' ,'news_id', 'desc', '', $rowConfig['slide_num'], '');

             // print_r($rows);

            foreach ($video as $row) {

            // print_r($rows);

            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-item">

                <p ><?= $row['news_content'] ?></p>
                    <p class="mota_tinhnang"><?= $row['news_des'] ?></p>

                </div>

            </div>

            <?php } ?>


        </div>

    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide-tinhnang');

        owl.owlCarousel({

            loop: true,

            margin: 30,

            // navSpeed: 500,

            autoplayTimeout:<?= $rowConfig['content_home10'] ?>,

            nav: false,

            dots: true,

            autoplay: true,

            rewind: true,

            navText: ["<img src='images/btn-arrow-ft-black-left.png'>",
                "<img src='images/btn-arrow-ft-black-right.png'>"    ],

            responsive: {

                0: {

                    nav: false,

                    items: 1,

                    dots: false

                },

                600: {

                    nav: false,

                    items: 1,

                    dots: false

                },

                992: {

                    nav: false,

                    items: 1

                }

            }

        });

    });
</script>