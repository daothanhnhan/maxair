<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();
	$village = $action->getList('village', 'district_id', $_GET['id'], 'id', 'asc', '', '', '');
?>
<option value="0">Phường khác</option>
<?php foreach ($village as $item) { ?>
<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
<?php } ?>