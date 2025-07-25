
<nav class="gb-main-menu_banhatgiong" >

    <div class="main-navigation_banhatgiong uni-menu-text_banhatgiong">

        <div class="cssmenu">

            <!-- <ul>

                <li><a href="/index.php">Trang chủ</a></li>

                <li><a href="gioi-thieu">Giới thiệu</a></li>

                <li class="has-sub"><a href="san-pham">Sản phẩm</a>

                    <ul>

                        <li><a href="">Hạt giống sen</a></li>

                        <li><a href="">Hạt giống súng</a></li>

                        <li><a href="">Hạt giống hoa</a></li>

                        <li><a href="">Hjat giống rau quả</a></li>

                    </ul>

                </li>

                <li><a href="">Đẹp độc la</a></li>

                <li><a href="">Phân bón</a></li>

                <li><a href="tin-tuc">Tin tức</a></li>

                <li><a href="lien-he">Liên hệ</a></li>

            </ul> -->

            <?php

                // $list_menu = $menu->getListMainMenu_byOrderASC();

                // $menu->showMenu_byMultiLevel_mainMenuHatGiong($list_menu,0,$lang,0);
                $main_menu = $menu->main_menu(229, $lang);//var_dump($main_menu);die;
                $menu->show_menu11($main_menu, $lang);

            ?>

        </div>

    </div>

</nav>

<script>
    $(document).ready(function() {
	$(".gb-main-menu_banhatgiong li").click(function() {
        // Clear các thẻ li có Class click cũ
        $(".gb-main-menu_banhatgiong li").removeClass("active");
		$(".gb-main-menu_banhatgiong li a").removeClass("active");
        // Thêm Class
		$(this).addClass("active");
	});
});
</script>
<script>
    $(document).ready(function () {
        //-----------------scroll-------------------------------------
        // var headerHeight = $('.gb-bottom-header').outerHeight();

        $('.slide-section').click(function (e) {
            var linkHref = $(this).attr('href');
            linkHref = linkHref.substring(1);
            // alert(linkHref);
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top
            }, 1000);
        });
    });
</script>
<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>

    $(document).ready(function () {
      
        var headerHeight = $('.uni-menu-text_banhatgiong').outerHeight();

        $('.link_main_menu_2').click(function () {
            
            var linkHref = $(this).attr('href');
            linkHref= linkHref.substr(1);
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        // $(".sticky-menu").sticky({topSpacing:0});
    });
</script>