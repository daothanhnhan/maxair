<?php
	$limit = 9;
	function search ($lang, $trang, $limit) {
		if (isset($_POST['q'])) {
			$q = $_POST['q'];
			$q = trim($q);
	        $q = vi_en($q);	        
		} else {
			$q = $_GET['search'];
        	$q = str_replace('-', ' ', $q);
		}

		$start = $trang * $limit;
		global $conn_vn;
		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.lang_product_name like '%$q%' And product_languages.languages_code = '$lang'";
		$result = mysqli_query($conn_vn, $sql);
		$count = mysqli_num_rows($result);

		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.lang_product_name like '%$q%' And product_languages.languages_code = '$lang' LIMIT $start,$limit";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
		$return = array(
				'data' => $rows,
				'count' => $count,
				'q' => $q
			);
		return $return;
	}
	$rows = search($lang, $trang, $limit);
?>
<div class="gb-sanpham">
	<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_BANHATGIONG_0001.php";?>
    <div class="container">
        <div class="row" style="margin-top: 20px;">
            <div class="col-md-9 col-md-push-3">
                 <?php include DIR_PRODUCT."MS_PRODUCT_BANHATGIONG_0009.php";?>
            </div>
            <div class="col-md-3  col-md-pull-9">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0002.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0001.php"; ?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_BANHATGIONG_0008.php"; ?>
            </div>
    	</div>
	</div>
</div>