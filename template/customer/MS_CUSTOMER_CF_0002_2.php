


        <div class="row slide_danhgia1 owl-carousel owl-theme" style="padding:0px 15px; padding-top:25px; ">

            <?php      
                                                  

            $slide2 = $action->getList('news', 'newscat_id', '81' ,'news_id', 'desc', '', $rowConfig['slide_num'], '');


            foreach ($slide2 as $row2) {


            ?>

            <div class="col-md-12 col-sm-12 col-xs-12">

                <div class="gb-bonshe-products-danhgia">

                   
                        <p> <?= $row2['news_content'] ?></p>
                    

                </div>

            </div>

            <?php } ?>


        </div>


<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.slide_danhgia1');

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