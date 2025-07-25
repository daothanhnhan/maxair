
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div id="uni-home-defaults-slide_banhatgiong">
    <div id="vk-owl-demo-singer-slider_banhatgiong" class="owl-carousel owl-theme">
        <?php
            $array = json_decode($rowConfig['slideshow_home'], true);
            foreach ($array as $key => $val) {
                $img = json_decode($val, true);
                if ($img != '') {
        ?>
            <div class="item">
                <img src="/images/<?= $img['image']?>" alt="" class="img-responsive">
            </div>
        <?php } } ?>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('#vk-owl-demo-singer-slider_banhatgiong').owlCarousel({
            loop:true,
            margin:0,
            nav:false,
            dots:false,
            autoplay:true,
            navText: [],
            responsive:{
                0:{
                    items:1
                }
            }
        });
    });
</script>