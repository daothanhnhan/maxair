<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM cart WHERE id_cart = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=don-hang');
?>