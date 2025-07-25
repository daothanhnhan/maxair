<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();

	$daily = $action->getDetail('dai_ly', 'id', $_GET['id']);//var_dump($da)
	echo $daily['embed'];
?>