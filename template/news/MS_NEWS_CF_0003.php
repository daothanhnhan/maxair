<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="container">
    <div id="tinh-nang" class=" tinhnang">
        <div class="row slide3 owl-carousel owl-theme" style="padding:0px 15px; padding-top:15px; ">

            <?php      

            // $action_product = new action_product();                                                        

            $slide2 = $action->getList('news', 'newscat_id', '78' ,'news_id', 'desc', '', $rowConfig['slide_num'], '');

             // print_r($rows);

            foreach ($slide2 as $row2) {

            // print_r($rows);

            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-item">

                <p ><?= $row2['news_content'] ?></p>
                <p class="mota_tinhnang"><?= $row2['news_des'] ?></p>

                </div>

            </div>

            <?php } ?>


        </div>

    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide3');

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
                "<img src='images/btn-arrow-ft-black-right.png'>"
            ],

            responsive: {

                0: {

               

                    items: 1,

                    dots: false

                },

                600: {

               

                    items: 1,

                    dots: false

                },

                992: {

                
                    items: 1

                }

            }

        });

    });
</script>