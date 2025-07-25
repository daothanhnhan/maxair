<?php
include_once 'admin/action_order.php';
	$order = new action_order(); 
	$orderStates = $order->getOrderState();
	$listOrderDetail =  $order->getlistOrderDetailByCartId($rowOrder['id_cart']);
?>

<h2 class="title-sidebar"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Thông tin đơn hàng</h2>

<p style="color: #d43f3a;font-style: italic;">Thông tin đơn hàng của bạn (*)</p>

<table class="table table-striped">

	<thead>

		<tr>

			<th>STT</th>

			<th>Tên đơn hàng</th>

			<th>Tên người nhận</th>

			<th class="sdt_kh">Số điện thoại</th>

			<th class="sdt_kh">Email</th>

			<th>Ngày đặt</th>

			<th>Tổng tiền</th>

			<th>Ghi chú</th>

		</tr>

	</thead>

	<tbody>

		<?php
			$totalprice = 0;
			$i = 1;

			foreach ($list_cart['data'] as $item ) {
				$user = $action->getDetail('user', 'user_email', $item['mail_buyer']);
				$item['name_buyer'] = $user['user_name'];
				$item['phone_buyer'] = $user['user_phone'];
		?>

		<tr>

			<td><?= $i++ ?></td>

			<td>

				<a href="/cart-detail/<?= $item['id_cart'] ?>" title="">Đơn hàng số #<?= $item['id_cart'] ?></a>
				<?php foreach ($orderStates as $orderState) { 
					if($item['id_orderState']==NULL){
	
	 					echo '<p class="status">Chưa xác nhận</p>';
						break;
					}
					if($orderState['order_state_id'] == $item['id_orderState'] ){

				?>

				<p class="status"><?php echo $orderState['order_state_name'];?></p>

				<?php } } ?>
			</td>

			<td><?= $item['name_buyer'] ?></td>

			<td class="sdt_kh"><?= $item['phone_buyer'] ?></td>

			<td class="sdt_kh"><?= $item['mail_buyer'] ?></td>

			<td><?= $item['date_cart'] ?></td>

			<td><?php echo number_format($item['total_price'], "0","",".");?> VNĐ</td>

			<td><?= $item['note_cart'] ?></td>

		</tr>

		<?php } ?>

	</tbody>

</table>