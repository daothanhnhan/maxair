<div class="order">

	<h3 class="title-sidebar"><i class="fa fa-users" aria-hidden="true"></i>Thông tin khách hàng</h3>

	<p class="infor"><i class="fa fa-user" aria-hidden="true"></i> User name: <span
			class="user"><?= $list_user['user_name'] ?></span></p>

	<p class="infor"><i class="fa fa-envelope" aria-hidden="true"></i> Email: <span
			class="user"><?= $list_user['user_email'] ?></span></p>

	<p class="infor"><i class="fa fa-phone-square" aria-hidden="true"></i> Số điện thoại: <span class="user">

			<?php if($list_user['user_phone'] == NULL){echo "<span class='update'>Cập nhật số điện thoại</span>";}else{echo $list_user['user_phone']; }  ?></span>
	</p>

	<p class="infor"><i class="fa fa-map-signs" aria-hidden="true"></i> Địa chỉ: <span class="user">

			<?php if($list_user['user_address'] == NULL){echo "<span class='update'>Cập nhật địa chỉ</span>";}else{echo $list_user['user_address']; }  ?></span>
		<span class="user">, <?= $action->getDetail('village','id',$list_user['village'])['name']?></span>
		<span class="user">,<?= $action->getDetail('district','id',$list_user['district'])['name']?></span>
		<span class="user">, <?= $action->getDetail('city','id',$list_user['city'])['name']?></span>
	</p>
	<p class="infor"><i class="fa fa-calendar" aria-hidden="true"></i> Ngày sinh: <span class="user">

			<?php if($list_user['ngaysinh'] == NULL){echo "<span class='update'>Cập nhật địa chỉ</span>";}else{echo $list_user['ngaysinh']; }  ?></span>

	</p>

	<p class="infor"><i class="fa fa-calendar" aria-hidden="true"></i> Ngày đăng ký: <span
			class="user"><?= $list_user['time'] ?></span></p>

	<p class="infor">

		<a href="/update-infor" class="btn btn-danger" role="button">Cập nhật thông tin</a>

	</p>

</div>