<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();
	$id = $_GET['id'];

	$letter = $action->getDetail('regMember', 'regMember_id', $id);
	if ($letter['state'] == 0) {
		$sql = "UPDATE regMember SET state = 1 WHERE regMember_id = $id";
	} else {
		$sql = "UPDATE regMember SET state = 0 WHERE regMember_id = $id";
	}
	$result = mysqli_query($conn_vn, $sql);
?>