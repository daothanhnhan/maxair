<?php 

    
    $product = new action_product();
    //$list_product_n = $product->getListProductNew_hasLimit(1);
    $list_product_n= $product->getProductList_byMultiLevel_orderProductId(237,'desc','',$rowConfig['product_num'],'');

?>

<section class="home-gallery" id="thong-so-ky-thuat">
    <div class="container">



        <div class="wrap">
            <?php 

                $d = 0;
                $a=0;

                foreach ($list_product_n as $item) { 

                    $d++;
                    $a++;

                    $action_product1 = new action_product(); 

                    $rowLang1 = $action_product1->getProductLangDetail_byId($item['product_id'],$lang);
            
                    $row1 = $action_product1->getProductDetail_byId($item['product_id'],$lang); 

            ?>

            <div class="my-grid">



                <div class="col-md-6 col-sm-6 col-xs-6 ">

                    <div class="box-gallery__body__item">

                        
                        <a href="/<?= $row1['friendly_url'] ?>">
                            <img src="/images/<?= $row1['product_img'] ?>" alt="<?= $row1['product_name'] ?>"
                                class="img-responsive">
                        </a>

                    </div>
                    <div class="thongtin">
                    <h3><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a>
                    </h3>
                    <p> Giá: <?= number_format($row1['product_price']) ?>VNĐ</p>
                </div>
                    <div class=" model__edit my-width-1-3@lg my-width-1-2@md" data-id="12" data="modal-<?= $d ?>">
                    <button class="info_thongso1">Xem tất cả thông số</button>
                        <button class="info_thongso">Xem tất cả thông số</button>

                    </div>
                </div>

                <!-- /.col-md -->

                <!-- Modal-->

                <div class="modal fade bs-example-modal-lg in" id="modal-<?= $d ?>" tabindex="-1" role="dialog"
                    aria-hidden="true">

                    <div class="modal-dialog modal-lg" style="padding-top:10%">

                        <div class="modal-content">

                            <div class="modal-body">

                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="mota_thongso">
                                            <span><?= $item['product_content'] ?></span>
                                        </div>

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer">

                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <?php

if ($a%2==0) {

    echo '<hr style="width:100%;border:0;" />';

}

}

?>

        </div>




    </div>
</section>

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