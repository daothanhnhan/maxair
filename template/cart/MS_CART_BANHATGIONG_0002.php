<span class="add_cart_banhatgiong add_cart" name="add-to-cart" title="Thêm giỏ hàng"
	onclick="load_url('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', 
	'<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')">

	<i class="fa fa-shopping-bag" aria-hidden="true"></i>

</span>