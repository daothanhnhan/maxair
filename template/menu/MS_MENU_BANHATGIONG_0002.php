<nav class="visible-sm visible-xs mobile-menu-container mobile-nav stickymenu">

    <div class="menu-mobile-nav">

        <span class="icon-bar"><i class="fa fa-th" aria-hidden="true"></i></span>
        <span class="text-meny icon-bar "><i>Menu<i></span>

    </div>

    <div id="cssmenu" class="animated">

        <div class="uni-icons-close"><i class="fa fa-times" aria-hidden="true"></i></div>



        <?php

                // $list_menu = $menu->getListMainMenu_byOrderASC();

                // $menu->showMenu_byMultiLevel_mainMenuHatGiong($list_menu,0,$lang,0);

                $main_menu = $menu->main_menu(230, $lang);
                $menu->show_menu1($main_menu, $lang);
                // $main_menu = $menu->main_menu(229, $lang);
                // $menu->show_menu3($main_menu, $lang);

            ?>

        <div class="clearfix"></div>

    </div>

</nav>



<script>
    $(document).ready(function () {

        //-----------------menu mobile---------------------

        $('.mobile-menu-container .menu-mobile-nav').on('click', function (e) {

            if ($(e.target).is('.icon-bar i')) {

                $('#cssmenu').slideToggle();

                $('#cssmenu ul').slideToggle();

                $('#cssmenu ul ul').hide();

            }

        });

        $('.uni-icons-close').on('click', function (e) {

            if ($(e.target).is('i')) {

                $('#cssmenu').hide(500);

                $('#cssmenu ul').hide(500);

            }

        });







        (function ($) {

            $(document).ready(function () {

                $("#cssmenu").menumaker({

                    title: "",

                    format: "multitoggle"

                });



                $("#cssmenu").prepend("<div id='menu-line'></div>");



                var foundActive = false,
                    activeElement, linePosition = 0,
                    menuLine = $("#cssmenu #menu-line"),
                    lineWidth, defaultPosition, defaultWidth;



                $("#cssmenu > ul > li").each(function () {

                    if ($(this).hasClass('active')) {

                        activeElement = $(this);

                        foundActive = true;

                    }

                });



                if (foundActive === false) {

                    activeElement = $("#cssmenu > ul > li").first();

                }



                defaultWidth = lineWidth = activeElement.width();



                // defaultPosition = linePosition = activeElement.position().left;



                menuLine.css("width", lineWidth);

                menuLine.css("left", linePosition);



                $("#cssmenu > ul > li").on('mouseenter', function () {

                        activeElement = $(this);

                        lineWidth = activeElement.width();

                        linePosition = activeElement.position().left;

                        menuLine.css("width", lineWidth);

                        menuLine.css("left", linePosition);

                    },

                    function () {

                        menuLine.css("left", defaultPosition);

                        menuLine.css("width", defaultWidth);

                    });

            });

        })(jQuery);

    });
</script>
<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>
    $(document).ready(function () {

        $(".stickymenu").sticky({
            topSpacing: 0
        });

    });
</script>