<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM product WHERE product_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=san-pham');
?>