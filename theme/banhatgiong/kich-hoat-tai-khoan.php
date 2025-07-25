<?php 

	$user_id = $_GET['trang'];

	if (isset($_GET['trang'])) {

		$sql = "UPDATE user SET state = 2 WHERE user_id = $user_id";

		$result = mysqli_query($conn_vn, $sql);

	}

?>

<h1 class="thongbaokichhoat">Bạn đã kích hoạt được tài khoản.</h1>