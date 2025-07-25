<!-- Modal-->



<div class="modal fade bs-example-modal-lg in" id="modal-cart-main" tabindex="-1" role="dialog" aria-hidden="true">



    <div class="modal-dialog modal-lg" style="padding-top:10%">


        <div class="modal-content">

            <div id="main-content" class="site-main-content">

                <main id="main" class="site-main">

                    <div id="post">

                        <div class="table-responsive" id="order_table" style="width: 100%;">

                            <table class="table table-bordered" style="margin-bottom: 100px;">

                                <tr>

                                    <th width="15%">Ảnh sản phẩm</th>

                                    <th width="15%">Tên sản phẩm</th>

                                    <th width="10%">Số lượng</th>

                                    <th width="15%">Giá</th>

                                    <th width="10%">Thành tiền</th>

                                    <th width="5%">Mua hàng</th>

                                </tr>


                                <?php  


                                                                        if(!empty($_SESSION["shopping_cart"]))  



                                                                        {  



                                                                             $total = 0;  



                                                                        foreach($_SESSION["shopping_cart"] as $keys => $values)  



                                                                        {                                               



                                                                    ?>



                                <tr>

                                    <td>
                                        <img src="/images/<?= $action->getDetail('product', 'product_id', $values['product_id'])['product_img'] ?>" alt="" style="width: 100px;">
                                    </td>

                                    <td data-title="Tên sản phẩm">

                                        <?php echo $values["product_name"]; ?></td>



                                    <td data-title="Số lượng"><input type="number" name="quantity[]"
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



                                    <td colspan="4" align="right">Total</td>



                                    <td align="right">

                                        <?php echo number_format($total, 2); ?> VNĐ

                                    </td>



                                    <td></td>



                                </tr>



                                <!-- <tr>



                                    <td colspan="6" align="center">



                                        <form method="post" action="/cart-payment">



                                            <input type="submit" name="place_order" class="btn btn-warning"
                                                value="Thanh toán" style="width: 15%;" />



                                        </form>



                                    </td>



                                </tr> -->



                                <?php  



                                        }  



                                        ?>



                            </table>


                        </div>
                        <?php include DIR_CART."MS_CART_BANHATGIONG_0005_2.php";?>

                    </div>


                </main>
                <div class="modal-footer">

                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>

                </div>

            </div>

        </div>
    </div>







</div>




<script>
    function popup_cart(id, name, price) {

        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function () {

            if (this.readyState == 4 && this.status == 200) {

                document.getElementById("order_table").innerHTML = this.responseText;

                // alert(this.responseText);           

                // alert('thanh cong.');           

                // window.location.href = "/cart";

            }

        };

        xhttp.open("POST", "/functions/ajax/ajax-add-cart-popup.php", true);

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("product_id=" + id + "&product_name=" + name + "&product_price=" + price +

            "&product_quantity=1&action=add");

        xhttp.send();

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
</script>
<!-- Modal -->
<div id="myModal-qr" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Code QR</h4>
      </div>
      <div class="modal-body">
        <img src="/images/cf/demo_qr.png" alt="" style="width: 100%;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- Modal -->
<div id="myModal-vnpay" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Code QR </h4>
      </div>
      <div class="modal-body">
        <img src="/images/cf/demo_qr.png" alt="" style="width: 100%;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- Modal -->
<div id="myModal-momo" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Code QR MoMo</h4>
      </div>
      <div class="modal-body">
        <img src="/images/cf/demo_qr.png" alt="" style="width: 100%;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- Modal -->
<div id="myModal-atm" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Thanh toán chuyển khoản</h4>
      </div>
      <div class="modal-body">
        <p>Vietcombank</p>

        <p>Số tài khoản : 1223435456465</p>

        <p>Chủ tài khoản : Nguyễn Văn A</p>

        <p>Chi nhánh : Hà Nội</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
    $(document).ready(function() {
	$(".modal-header p").click(function() {
        // Clear các thẻ li có Class click cũ
		$(".modal-header p").removeClass("click");
        // Thêm Class
		$(this).addClass("click");
	});
});
</script>