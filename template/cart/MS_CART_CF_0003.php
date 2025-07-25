<?php 

	$total_cart = 0;

	if (isset($_SESSION['shopping_cart'])) {

		foreach ($_SESSION['shopping_cart'] as $v) {

			$total_cart++;

		}

	}

?>
<li>
<!-- <a href="/cart" title=""> -->
<a href="javascript:void(0)" title="" class="model__edit" data="modal-cart-main">

        <i class="fa fa-shopping-basket" aria-hidden="true"></i>

        <span class="number-item"><?= $total_cart ?></span>

    </a></li>