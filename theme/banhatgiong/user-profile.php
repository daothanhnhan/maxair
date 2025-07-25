<?php
	if (!isset($_SESSION['user_id_gbvn'])) {
		header('location: /');
	}
	function get_list_user(){

		global $conn_vn;

		$user_id = $_SESSION['user_id_gbvn'];

		$sql = "SELECT * FROM user Where user_id = '$user_id'";

        $result = mysqli_query($conn_vn, $sql);

        $row = mysqli_fetch_assoc($result);

        return $row;

	}

	$list_user = get_list_user();

	$mail_buyer = $list_user['user_email'];



	function get_cart($mail_buyer){

		global $conn_vn;

		$sql = "SELECT * FROM cart WHERE mail_buyer = '$mail_buyer' ORDER BY id_cart DESC";

	    $result = mysqli_query($conn_vn, $sql);

	    $rows1 = array();

	    while ($row = mysqli_fetch_assoc($result)) {

	        $rows1[] = $row;

	    }

	    $rows = array('data' => $rows1);

	    return $rows;

	}



	$list_cart = get_cart($mail_buyer);



?>

<div class="gb-tintuc">

	<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_BANHATGIONG_0001.php";?>

	<div class="container">

		

		<div class="row">

			<div class="col-md-12">

				<?php include DIR_CART."MS_CART_ONION_0011.php";?>

			</div>

			<div class="col-md-12">

				<?php include DIR_CART."MS_CART_ONION_0012.php";?>

			</div>	

		</div>

	</div>

</div>

