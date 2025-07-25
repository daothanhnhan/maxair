<div class="box_price_product_banhatgiong">
	<?php if (isset($_SESSION['user_id_gbvn'])) { ?>
    <p class="price_product_banhatgiong"> <?= number_format($row1['product_price_down']-$rowConfig['content_home8']) ?> VNĐ</p>

    <p class="old_price_banhatgiong"> <?= number_format($row1['product_price']-$rowConfig['content_home8']) ?> VNĐ</p>
	<?php } else { ?>
	<p class="price_product_banhatgiong"> <?= number_format($row1['product_price_down']) ?> VNĐ</p>

    <p class="old_price_banhatgiong"> <?= number_format($row1['product_price']) ?> VNĐ</p>
    <?php } ?>
    <div class="soluongdaban">
    <!-- <p class="price_product_banhatgiong1">Đã bán <?= $action_product->num_selled($row1['product_id']) ?></p> -->
    <p class="price_product_banhatgiong1">Đã bán <?= $row1['product_package'] ?></p>
    </div>
</div>