<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">


        <div class="row slide_danhgia owl-carousel owl-theme" style="padding:0px 15px; padding-top:25px; ">

            <?php      

            // $action_product = new action_product();                                                        

            $slide2 = $action->getList('news', 'newscat_id', '80' ,'news_id', 'desc', '', $rowConfig['slide_num'], '');

             // print_r($rows);

            foreach ($slide2 as $row2) {

            // print_r($rows);

            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-item">

                   
                        <p> <?= $row2['news_content'] ?></p>
                    

                </div>

            </div>

            <?php } ?>


        </div>


<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide_danhgia');

        owl.owlCarousel({

            loop: true,

            margin: 0,

            // navSpeed: 500,

            autoplayTimeout:<?= $rowConfig['content_home10'] ?>,

            nav: false,

            dots: false,

            autoplay: true,

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