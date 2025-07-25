<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();
	$district = $action->getList('district', 'city_id', $_GET['id'], 'id', 'asc', '', '', '');
?>
<option value="0">Quận khác</option>
<?php foreach ($district as $item) { ?>
<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
<?php } ?>