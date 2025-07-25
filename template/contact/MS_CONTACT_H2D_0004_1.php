<div>
	<?php 
	$d = 0;
	foreach ($list_daily as $item) { 
		$d++;
	?>
	<div class="gb-map_ruouvang-between tabcontent" id="vietnam<?= $d ?>" style="display: <?= ($d==1) ? 'block' : 'none'; ?>;">

	    <?= $item['embed'] ?>

	</div>
	<?php } ?>
</div>
