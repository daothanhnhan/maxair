<?php if (isset($_SESSION['user_id_gbvn'])) { ?>
<span class="add_cart_banhatgiong1 add_cart model__edit" data-id="12" data="modal-cart-main" name="add-to-cart"
	title="Thêm giỏ hàng"
	onclick="popup_cart('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', '<?php echo $row1['product_price_down']-$rowConfig['content_home8'];?>')">

	<i class="" aria-hidden="true">MUA NGAY</i>

</span>
<?php } else { ?>
<span class="add_cart_banhatgiong1 add_cart model__edit" data-id="12" data="modal-cart-main" name="add-to-cart"
	title="Thêm giỏ hàng"
	onclick="popup_cart('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', '<?php echo $row1['product_price_down'];?>')">

	<i class="" aria-hidden="true">MUA NGAY</i>

</span>
<?php } ?>