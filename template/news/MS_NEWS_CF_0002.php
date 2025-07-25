<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="container">
    <div id="" class="tinhnang">
        <div class="row slide2 owl-carousel owl-theme" style="padding:0px 15px; padding-top:25px; ">

            <?php      

            // $action_product = new action_product();                                                        

            $slide2 = $action->getList('news', 'newscat_id', '77' ,'news_id', 'desc', '', $rowConfig['slide_num'], '');

             // print_r($rows);

            foreach ($slide2 as $row2) {

            // print_r($rows);

            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-danhgia">

                   
                        <p> <?= $row2['news_content'] ?></p>

                </div>

            </div>

            <?php } ?>


        </div>

    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide2');

        owl.owlCarousel({

            loop: true,

            margin: 0,

            // navSpeed: 500,

            autoplayTimeout:<?= $rowConfig['content_home10'] ?>,

            nav: false,

            dots: false,

            autoplay: false,

            rewind: true,

            navText: [],

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