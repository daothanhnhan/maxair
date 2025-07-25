<?php 

$product = new action_product();
//$list_product_n = $product->getListProductNew_hasLimit(1);
$list_product_n= $product->getProductList_byMultiLevel_orderProductId(237,'desc','','1','');
    $send_mail = new action_email();

    $send_mail->danh_gia();

?>

<section class="home-gallery" id="binh-luan">
    <div class="container">

    <div class="home-danhgia">

        <h3  class="danhgia_sp" style="text-align: center;">Đánh giá của người dùng</h3>


        <div class="box-gallery__body">

            <div class="wrap">
                <?php 

                    $d = 0;

                    foreach ($list_product_n as $item) { 

                        $d++;

                        $action_product1 = new action_product(); 

                        $rowLang1 = $action_product1->getProductLangDetail_byId($item['product_id'],$lang);

                        $row1 = $action_product1->getProductDetail_byId($item['product_id'],$lang); 

                ?>

                <div class="my-grid">

                    <div class="row">

                        <div class="col-md-12 button_binhluan">
                            <div class="box-gallery__body__item">

                                <a>

                                    <img src="/images/<?= $item['product_img'] ?>"
                                        alt="<?= $rowLang1['product_name'] ?>" class="img-responsive">
                                </a>

                            </div>

                            <p class="danhgia_sp">Hãy là người đầu tiên đánh giá sản phẩm này</p>

                            <div class=" model__edit my-width-1-3@lg my-width-1-2@md" data-id="12"
                                data="modal1-<?= $d ?>">

                                <button class="info_binhluan">Viết bình luận của bạn tại đây</button>

                            </div>

                        </div>

                    </div>
                    <!-- /.col-md -->

                    <!-- Modal-->

                    <div class="modal fade bs-example-modal-lg in" id="modal1-<?= $d ?>" tabindex="-1" role="dialog"
                        aria-hidden="true">

                        <div class="modal-dialog modal-lg" style="padding-top:10%">

                            <div class="modal-content">
                                <div class="box-danhgia">
                                    <div class="stars">
                                        <form action="">
                                            <input class="fa fa-star-o star-5" id="star-5" type="radio" name="star" onclick="ratef(5)" />
                                            <label class="fa fa-star-o star-5" for="star-5"></label>
                                            <input class="fa fa-star-o star-4" id="star-4" type="radio" name="star" onclick="ratef(4)" />
                                            <label class="fa fa-star-o star-4" for="star-4"></label>
                                            <input class="fa fa-star-o star-3" id="star-3" type="radio" name="star" onclick="ratef(3)" />
                                            <label class="fa fa-star-o star-3" for="star-3"></label>
                                            <input class="fa fa-star-o star-2" id="star-2" type="radio" name="star" onclick="ratef(2)" />
                                            <label class="fa fa-star-o star-2" for="star-2"></label>
                                            <input class="fa fa-star-o star-1" id="star-1" type="radio" name="star" onclick="ratef(1)" />
                                            <label class="fa fa-star-o star-1" for="star-1"></label>
                                        </form>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-7">
                                            <div class=" row anh-binhluan">
                                                <div class="col-md-4 col-sm-12 col-xs-12">
                                                    <a>
                                                        <img src="/images/<?= $item['product_img'] ?>"
                                                            alt="<?= $rowLang1['product_name'] ?>"
                                                            class="img-responsive">
                                                    </a>
                                                </div>
                                                <div class="col-md-8 col-sm-12 col-xs-12">
                                                    <h2><?= $item['product_name'] ?></h2>
                                                </div>
                                            </div>
                                            <form action="" method="post">
                                                <input type="hidden" name="rate" id="rate" value="0">
                                                <div class="form-group">

                                                    <label>Họ và tên</label>

                                                    <input type="text" class="form-control" name="name" required="">

                                                </div>

                                                <div class="form-group">

                                                    <label>Email</label>

                                                    <input type="email" class="form-control" name="email" required="">

                                                </div>

                                                <div class="form-group">

                                                    <label>Tiêu đề đánh giá</label>

                                                    <input type="text" class="form-control" name="title" required="">

                                                </div>

                                                <div class="form-group">

                                                    <label>Nhận xét</label>

                                                    <textarea class="input-xlarge form-control" id="message" name="note"
                                                        rows="8"></textarea>

                                                </div>

                                                <div class="form-group">

                                                    <button class="vk-btn vk-btn-send" type="submit" name="danh_gia">Gửi
                                                        đi</button>

                                                </div>

                                            </form>

                                        </div>

                                        <div class="col-md-5">

                                            <div class="modal-footer">

                                                <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Đóng</button>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

            <?php } ?>

        </div>
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
<script>
function ratef (num) {
    // alert(num);
    document.getElementById("rate").value = num;
}
</script>