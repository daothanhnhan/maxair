<div>
	<?php 
	$d = 0;
	foreach ($list_daily as $item) { 
		$d++;
		if ($d > 1) {
			break;
		}
	?>
	<div class="gb-map_ruouvang-between tabcontent" id="vietnam">

	    <?= $item['embed'] ?>

	</div>
	<?php } ?>
</div>
