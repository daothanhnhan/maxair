<div class="uni-cart">

    <div id="wrapper-container" class="site-wrapper-container">

        <div id="main-content" class="site-main-content">

            <div class="site-content-area">

                <main id="main" class="site-main">



                    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_BANHATGIONG_0001.php";?>



                    <div class="uni-cart-body">

                        <div id="post" class="container">

                            <div class="entry-content">

                                <div class="woocommerce">

                                    <div class="table-responsive" id="order_table_1" style="width: 100%;">  

                                       <table class="table table-bordered" style="margin-bottom: 50px;">  

                                            <tr>  

                                                 <th width="40%">Tên sản phẩm</th>  

                                                 <th width="10%">Số lượng</th>  

                                                 <th width="20%">Giá</th>  

                                                 <th width="15%">Thành tiền</th>  

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

                                                 <td data-title="Tên sản phẩm"><?php echo $values["product_name"]; ?></td>  

                                                 <td data-title="Số lượng"><input type="number" name="quantity[]" id="quantity<?php echo $values["product_id"]; ?>" value="<?php echo $values["product_quantity"]; ?>" data-product_id="<?php echo $values["product_id"]; ?>" class="form-control quantity" /></td>  

                                                 <td align="right" data-title="Giá"><?php echo number_format($values["product_price"]); ?> VNĐ</td>  

                                                 <td align="right"  data-title="Thành tiền"><?php echo number_format($values["product_quantity"] * $values["product_price"], 2); ?> VNĐ</td>  

                                                 <td  data-title="Bạn có muốn mua?"><button name="delete" class="btn btn-danger btn-xs delete" id="<?php echo $values["product_id"]; ?>" style="margin: 0px;">Remove</button></td>  
      
                                            </tr>  

                                            <?php  

                                                      $total = $total + ($values["product_quantity"] * $values["product_price"]);



                                                 } 

                                                 $_SESSION['total'] = $total; 

                                            ?>  

                                            <tr style=" border-bottom: 1px solid #cac7c7;">  

                                                 <td colspan="3" align="right">Giá:</td>  

                                                 <td align="right"><?php echo number_format($total, 2); ?> VNĐ</td>  

                                           

                                            </tr>  
                                             

                                            <!-- <tr>  

                                                 <td colspan="5" align="center">  

                                                      <form method="post" action="/cart-payment">  

                                                           <input type="submit" name="place_order" class="btn btn-warning" value="Thanh toán" style="width: 15%;" />  

                                                      </form>  

                                                 </td>  

                                            </tr> -->  

                                            <?php  

                                            }  

                                            ?>  

                                       </table>  

                                  </div>

                                  <div class="thanh-toan">
                                       <button type="button" class="model__edit" data="modal-cart-main">Thanh toán</button>
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

<script>  

 $(document).ready(function(data){  

      $('.add_to_cart').click(function(){  

           var product_id = $(this).attr("id");  

           var product_name = $('#name'+product_id).val();  

           var product_price = $('#price'+product_id).val();  

           var product_quantity = $('#quantity'+product_id).val();  

           var action = "add";  

           if(product_quantity > 0)  

           {  

                $.ajax({  

                     url:"../functions/action_cart_tmp.php",  

                     method:"POST",  

                     dataType:"json",  

                     data:{  

                          product_id:product_id,   

                          product_name:product_name,   

                          product_price:product_price,   

                          product_quantity:product_quantity,   

                          action:action  

                     },  

                     success:function(data)  

                     {  

                          $('#order_table').html(data.order_table);  

                          $('.badge').text(data.cart_item);  

                          alert("Product has been Added into Cart");  

                     }  

                });  

           }  

           else  

           {  

                alert("Please Enter Number of Quantity")  

           }  

      });  

      $(document).on('click', '.delete', function(){  

           var product_id = $(this).attr("id");  

           var action = "remove";  

           if(confirm("Are you sure you want to remove this product?"))  

           {  

                $.ajax({  

                     url:"../functions/action_cart_tmp.php",  

                     method:"POST",  

                     dataType:"json",  

                     data:{product_id:product_id, action:action},  

                     success:function(data){  

                          $('#order_table_1').html(data.order_table);  

                          $('.badge').text(data.cart_item);

                          // alert(data.order_table);

                          // alert('success');

                     },

                     error:function(){

                        alert('loi.');

                     }  

                });  





           }  

           else  

           {  

                return false;  

           }  

      });  

      $(document).on('keyup', '.quantity', function(){  

           var product_id = $(this).data("product_id");  

           var quantity = $(this).val();  

           var action = "quantity_change";  

           if(quantity != '')  

           {  

                $.ajax({  

                     url :"../functions/action_cart_tmp.php",  

                     method:"POST",  

                     dataType:"json",  

                     data:{product_id:product_id, quantity:quantity, action:action},  

                     success:function(data){  

                          $('#order_table_1').html(data.order_table);  

                     }  

                });  





           }  

      });  

 });  

 </script>
 <?php include DIR_CART."MS_CART_CF_0002.php"; ?>