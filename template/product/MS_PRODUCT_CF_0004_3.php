<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<?php
$product_type = new action_product();

$product_hot = $product_type->getProductList_byMultiLevel_orderProductId(235,'desc','','2','');
$product_promotions = $product_type->getProductList_byMultiLevel_orderProductId(233,'desc','','2','');//var_dump($rows);
$product_new = $product_type->getProductList_byMultiLevel_orderProductId(234,'desc','','2','');
$product_sale = $product_type->getProductList_byMultiLevel_orderProductId(236,'desc','','2','');
?>

<div class="container">
    <div class="gb-product-home">
        <!--HEADER PRODUICT TOP-->
        <div class="gb-product-top">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="header2">Sản phẩm bạn có thể quan tâm</h2>
                    <div id="countdown">
  <div id='tiles'></div>
  <div class="labels">
    <li>Days</li>
    <li>Hours</li>
    <li>Mins</li>
    <li>Secs</li>
  </div>
</div>
                    <div class="gb-prodct-top-tab">
                        <div class="panel-heading">
                            <!--NAV ICONS-->
                            <!--<div class="icons-nav-product">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </div>-->
                            <ul class="nav nav-tabs product-menu-content">
                                <li class="active">
                                    <a href="#tab1default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">09:00</div>
                                        <div class="flash-sale-session__display-text">Đang diễn ra</div>
                                    </a></li>
                                <li><a href="#tab2default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">13:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                                <li><a href="#tab3default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">16:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                                <li><a href="#tab4default" data-toggle="tab">
                                        <div class="flash-sale-session__display-hour">20:00</div>
                                        <div class="flash-sale-session__display-text">Sắp diễn ra</div>
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!--SHOW PRODUCT ITEM-->
        <div class="gb-product-show">
            <div class="panel-body">
                <div class="tab-content">
                    <!--SALE 9:00-->
                    <div class="row tab-pane fade in active" id="tab1default">
                        <?php
                                $d=0;    
                                foreach ($product_promotions as $item) {$d++;
                                        $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);
                                        $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);
                                    ?>
                       <?php include DIR_PRODUCT."MS_PRODUCT_CF_0004_1.php";?>
                       <?php } ?>
                    </div>
                    <!--SALE 13:00-->
                    <div class=" row tab-pane fade in " id="tab2default">
                        
                            <?php                      
                                $d=0;      
                                foreach ($product_new as $item) { 
                                    $d++;                           
                                    $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            
                                    $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        
                                    ?>
                                <?php include DIR_PRODUCT."MS_PRODUCT_CF_0004_1.php";?>
                                <?php } ?> 
                    </div>
                    <!--SALE 16:00-->
                    <div class="row tab-pane fade in" id="tab3default">
                        
                            <?php                         
                            $d=0;    foreach ($product_hot as $item) {   
                                $d++;                          
                                $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            
                                $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        
                                ?>
                                <?php include DIR_PRODUCT."MS_PRODUCT_CF_0004_1.php";?>
                             <?php } ?> 
                    </div>
                    <!--SALE 20:00-->
                    <div class=" row tab-pane fade in" id="tab4default">
                            <?php                         
                            $d=0;    foreach ($product_sale as $item) {   $d++;                          $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);                            $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);                        ?>
                                <?php include DIR_PRODUCT."MS_PRODUCT_CF_0004_1.php";?>
                                <?php } ?> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // Get the modal

    var modal = document.getElementById("myModal");



    // Get the button that opens the modal

    var btn = document.getElementById("myBtn");



    // Get the <span> element that closes the modal

    var span = document.getElementsByClassName("close")[10];



    // When the user clicks the button, open the modal 

    btn.onclick = function () {

        modal.style.display = "block";

    }



    // When the user clicks on <span> (x), close the modal

    span.onclick = function () {

        modal.style.display = "none";

    }



    // When the user clicks anywhere outside of the modal, close it

    window.onclick = function (event) {

        if (event.target == modal) {

            modal.style.display = "none";

        }

    }
</script>

<script>
    data = '';

    $('.model__edit').click(function () {

        tableData = '';

        data = $(this).attr('data');

        $('#' + data).modal();



        id = $(this).attr('data-id');

        $.ajax({

            url: 'http://bighouseplus.com/getImage/' + id,

            method: 'get',

            success: function (data) {

                data.data.forEach(function (element) {

                    tableData += '<div class="item col-md-2 ">' +

                        '<a data="' + element.id +
                        '"><img style="width:100%" class="detail__img" data="' + element
                        .id + '" src="http://bighouseplus.com/upload/project/' + element
                        .image + '"></a>' +

                        '</div>'

                });

                $('.slide__img').html(tableData);

                // new imageCk(id);

                $('.detail__img').click(function () {

                    // console.log('âs');

                    src = $(this).attr('src');

                    $('.image__detail').attr('src', src)

                    console.log(src);

                });

            }

        })


    });
</script>
<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-product-show_slide').owlCarousel({
            loop: true,
            responsiveClass: true,
            nav: true,
            navText: [],
            dots: false,
            margin: 30,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 3
                },
                992: {
                    items: 4
                }
            }
        });
        $('.icons-nav-product').click(function () {
            $('.product-menu-content').slideToggle();
        });
    });
</script>
<script type="text/javascript">
    function load_url(id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status ==
                200) {
                // document.getElementById("demo").innerHTML = this.responseText;           
                // alert(this.responseText);           
                //alert('thanh cong.');           
                window.location.href = "/gio-hang";
            }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id=" + id + "&product_name=" + name + "&product_price=" + price +
            "&product_quantity=1&action=add");
        xhttp.send();
    }
</script>
<script>
    var target_date = new Date().getTime() + (1000*3600*48); // set the countdown date
var days, hours, minutes, seconds; // variables for time units

var countdown = document.getElementById("tiles"); // get tag element

getCountdown();

setInterval(function () { getCountdown(); }, 1000);

function getCountdown(){

	// find the amount of "seconds" between now and target
	var current_date = new Date().getTime();
	var seconds_left = (target_date - current_date) / 1000;

	days = pad( parseInt(seconds_left / 86400) );
	seconds_left = seconds_left % 86400;
		 
	hours = pad( parseInt(seconds_left / 3600) );
	seconds_left = seconds_left % 3600;
		  
	minutes = pad( parseInt(seconds_left / 60) );
	seconds = pad( parseInt( seconds_left % 60 ) );

	// format countdown string + set tag value
	countdown.innerHTML = "<span>" + days + "</span><span>" + hours + "</span><span>" + minutes + "</span><span>" + seconds + "</span>"; 
}

function pad(n) {
	return (n < 10 ? '0' : '') + n;
}
</script>