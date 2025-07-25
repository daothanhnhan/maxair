<!-- <div class="gb-chi-tiet-add-to-cart">

    <form class="cart" method="post" enctype="multipart/form-data">

        <div class="quantity">

            <div class="form-group">

                <label>Số lượng:</label>

                <input type="number" class="form-control qty" id="pwd" min="0" value="1">

            </div>

        </div>

        <button type="submit" name="add-to-cart" class="single_add_to_cart_button button alt">Add to cart</button>

        <div class="clearfix"></div>

    </form>

</div> -->

 <div class="gb-chi-tiet-add-to-cart">

    <form class="cart" method="post" enctype="multipart/form-data">

        <div class="quantity">

            <div class="form-group">

                <!-- <label>Số lượng:</label> -->

                <input type="number" class="form-control qty number_cart" id="pwd" min="0" value="1" style="display: none;">

                <input type="hidden" name="id" id="product_id" value="<?php echo $rowLang['product_id'];?>">

                <input type="hidden" name="name" id="product_name" value="<?= $rowLang['lang_product_name'];?>">

                <input type="hidden" name="price" id="product_price" value="<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>">

            </div>

        </div>

        <div style="font-size: 30px;margin-bottom: 10px;">

            <p> <span><?= number_format($row1['product_price_down']) ?> đ</span> - <span><del><?= number_format($row1['product_price']) ?> đ</del></span> 
        <span class="phantramgiam">(<?= $row1['product_price_sale'] ?>%)</span>
        </p>

        </div>

        <?php if (isset($_SESSION['user_id_gbvn'])) { ?>

        <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart1 model__edit" data-id="12" data="modal-cart-main" onclick="popup_cart('<?php echo $rowLang['product_id'];?>', '<?= $rowLang['lang_product_name'];?>', '<?= $row1['product_price_down']-$rowConfig['content_home8'] ?>')">thêm vào giỏ hàng</button>

        <?php } else { ?>

        <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart1 model__edit" data-id="12" data="modal-cart-main" onclick="popup_cart('<?php echo $rowLang['product_id'];?>', '<?= $rowLang['lang_product_name'];?>', '<?= $row1['product_price_down'] ?>')">thêm vào giỏ hàng</button>

        <?php } ?>    

        <div class="clearfix"></div>

    </form>

</div>

