<div id="main">
    <div class="container">
        <div id="carousel-simple" class="carousel multi-item-carousel slide col-md-12"
            >

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item  active">
                    <div class="col-md-4">
                        <div><a class="flash-sale-session flash-sale-session--selected"
                                href="/flash_sale?promotionId=2000391590">
                                <div class="flash-sale-session__display-hour">09:00</div>
                                <div class="flash-sale-session__display-text">Đang diễn ra</div>
                                <div class="selected-session-arrow-down"></div>
                            </a></div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-4">
                        <div><a class="flash-sale-session" href="/flash_sale?promotionId=2000391594">
                                <div class="flash-sale-session__display-hour">13:00</div>
                                <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                            </a></div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-4">
                        <div><a class="flash-sale-session" href="/flash_sale?promotionId=2000391600">
                                <div class="flash-sale-session__display-hour">16:00</div>
                                <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                            </a></div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-4">
                        <div><a class="flash-sale-session" href="/flash_sale?promotionId=2000391605">
                                <div class="flash-sale-session__display-hour">20:00</div>
                                <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                            </a></div>
                    </div>
                </div>
                
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-simple" role="button" data-slide="prev">
                <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control" href="#carousel-simple" role="button" data-slide="next">
                <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('.multi-item-carousel .item').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        if (next.next().length > 0) {
            next.next().children(':first-child').clone().appendTo($(this));
        } else {
            $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
        }
    });
</script>