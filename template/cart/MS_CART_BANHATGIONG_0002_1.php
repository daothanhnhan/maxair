<div class="my-dathang">

    <div class=" model__edit my-width-1-3@lg my-width-1-2@md" data-id="12" data="modal-cart-main">

        <span class="add_cart_banhatgiong2 add_cart" name="add-to-cart" title="Thêm giỏ hàng" onclick="popup_cart('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', 
	'<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')">

            <p class="" aria-hidden="true">Mua Ngay</p>

        </span>

    </div>

    <!-- Modal-->

    <!-- <div class="modal fade bs-example-modal-lg in" id="modal-cart-<?= $d ?>" tabindex="-1" role="dialog"
        aria-hidden="true">

        <div class="modal-dialog modal-lg" style="padding-top:10%">

            <div class="modal-content">

                <div class="uni-cart">

                    <div id="wrapper-container" class="site-wrapper-container">

                        <div id="main-content" class="site-main-content">

                            <div class="site-content-area">

                                <main id="main" class="site-main">

                                    <div class="uni-cart-body">

                                        <div id="post" >

                                            <div class="entry-content">

                                                <div class="woocommerce">

                                                    <div class="table-responsive" id="order_table" style="width: 100%;">

                                                        <table class="table table-bordered"
                                                            style="margin-bottom: 100px;">

                                                            <tr>

                                                                <th width="15%">Product Name</th>

                                                                <th width="10%">Quantity</th>

                                                                <th width="15%">Price</th>

                                                                <th width="10%">Total</th>

                                                                <th width="5%">Action</th>

                                                            </tr>

                                                            <?php  

                                                                        if(!empty($_SESSION["shopping_cart"]))  

                                                                        {  

                                                                             $total = 0;  

                                                                        foreach($_SESSION["shopping_cart"] as $keys => $values)  

                                                                        {                                               

                                                                    ?>

                                                            <tr>

                                                                <td data-title="Tên sản phẩm">
                                                                    <?php echo $values["product_name"]; ?></td>

                                                                <td data-title="Số lượng"><input type="text"
                                                                        name="quantity[]"
                                                                        id="quantity<?php echo $values["product_id"]; ?>"
                                                                        value="<?php echo $values["product_quantity"]; ?>"
                                                                        data-product_id="<?php echo $values["product_id"]; ?>"
                                                                        class="form-control quantity" /></td>

                                                                <td align="right" data-title="Giá">
                                                                    <?php echo number_format($values["product_price"]); ?>
                                                                    VNĐ</td>

                                                                <td align="right" data-title="Thành tiền">
                                                                    <?php echo number_format($values["product_quantity"] * $values["product_price"], 2); ?>
                                                                    VNĐ</td>

                                                                <td data-title="Bạn có muốn mua?"><button name="delete"
                                                                        class="btn btn-danger btn-xs delete"
                                                                        id="<?php echo $values["product_id"]; ?>"
                                                                        style="margin: 0px;">Remove</button>
                                                                </td>

                                                            </tr>

                                                            <?php  

                                                                        $total = $total + ($values["product_quantity"] * $values["product_price"]);

                                                                    } 

                                                                        $_SESSION['total'] = $total; 

                                                                    ?>

                                                            <tr>

                                                                <td colspan="3" align="right">Total</td>

                                                                <td align="right">
                                                                    <?php echo number_format($total, 2); ?> VNĐ
                                                                </td>

                                                                <td></td>

                                                            </tr>

                                                            <tr>

                                                                <td colspan="5" align="center">

                                                                    <form method="post" action="/cart-payment">

                                                                        <input type="submit" name="place_order"
                                                                            class="btn btn-warning" value="Thanh toán"
                                                                            style="width: 15%;" />

                                                                    </form>

                                                                </td>

                                                            </tr>

                                                            <?php  

                                        }  

                                        ?>

                                                        </table>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </main>



                            </div>

                        </div>

                    </div>

                </div>

                <div class="modal-footer">

                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>

                </div>

            </div>

        </div>

    </div> -->

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

<!-- <script>
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
    $(document).ready(function (data) {

        $('.add_to_cart').click(function () {

            var product_id = $(this).attr("id");

            var product_name = $('#name' + product_id).val();

            var product_price = $('#price' + product_id).val();

            var product_quantity = $('#quantity' + product_id).val();

            var action = "add";

            if (product_quantity > 0)

            {

                $.ajax({

                    url: "../functions/action_cart_tmp.php",

                    method: "POST",

                    dataType: "json",

                    data: {

                        product_id: product_id,

                        product_name: product_name,

                        product_price: product_price,

                        product_quantity: product_quantity,

                        action: action

                    },

                    success: function (data)

                    {

                        $('#order_table').html(data.order_table);

                        $('.badge').text(data.cart_item);

                        alert("Product has been Added into Cart");

                    }

                });

            } else

            {

                alert("Please Enter Number of Quantity")

            }

        });

        $(document).on('click', '.delete', function () {

            var product_id = $(this).attr("id");

            var action = "remove";

            if (confirm("Are you sure you want to remove this product?"))

            {

                $.ajax({

                    url: "../functions/action_cart_tmp.php",

                    method: "POST",

                    dataType: "json",

                    data: {
                        product_id: product_id,
                        action: action
                    },

                    success: function (data) {

                        $('#order_table').html(data.order_table);

                        $('.badge').text(data.cart_item);

                        // alert(data.order_table);

                        // alert('success');

                    },

                    error: function () {

                        alert('loi.');

                    }

                });





            } else

            {

                return false;

            }

        });

        $(document).on('keyup', '.quantity', function () {

            var product_id = $(this).data("product_id");

            var quantity = $(this).val();

            var action = "quantity_change";

            if (quantity != '')

            {

                $.ajax({

                    url: "../functions/action_cart_tmp.php",

                    method: "POST",

                    dataType: "json",

                    data: {
                        product_id: product_id,
                        quantity: quantity,
                        action: action
                    },

                    success: function (data) {

                        $('#order_table').html(data.order_table);

                    }

                });





            }

        });

    });
</script> -->