<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function quan ($id) {
		global $conn_vn;
		if (isset($_POST['add_quan'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$city_id = $_POST['city_id'];

			$sql = "UPDATE district SET name = '$name', city_id = $city_id WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một quận.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	quan($_GET['id']);
	$info = $action->getDetail('district', 'id', $_GET['id']);
	$city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<style>
ul li {
	float: none;
}
.bootstrap-select.btn-group .dropdown-menu li a {
	width: 100%;
}
</style>
<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin quận<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=quan">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
        	<p class="titleRightNCP">Chọn tỉnh</p>
        	<select name="city_id" class="txtNCP1 selectpicker" data-show-subtext="true" data-live-search="true">
        		<?php foreach ($city as $item) { ?>
        		<option value="<?= $item['id'] ?>" <?= $item['id']==$info['city_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
        		<?php } ?>
        	</select>
            <p class="titleRightNCP">Tên quận</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_quan">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>