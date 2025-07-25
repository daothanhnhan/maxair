<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	
	$message = '';
	function user () {
		global $conn_vn;
		global $message;
		if (isset($_POST['add_user'])) {
			$src= "../images/";
			// $src = "uploads/";
			$ok = 'true';

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$email = mysqli_real_escape_string($conn_vn, $_POST['email']);
			$phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
			$address = mysqli_real_escape_string($conn_vn, $_POST['address']);
			// $pass = mysqli_real_escape_string($conn_vn, $_POST['pass']);
			$pass = password_hash($_POST['pass'], PASSWORD_DEFAULT);
			$birthday = $_POST['birthday'];
			$city = $_POST['city'];
			$district = $_POST['district'];
			$village = $_POST['village'];
			$time = date('Y-m-d');

			$sql = "SELECT * FROM user WHERE user_email = '$email'";
			$result = mysqli_query($conn_vn, $sql);
			$num = mysqli_num_rows($result);
			if ($num > 0) {
				$ok = 'false';
				$message = 'Địa chỉ email đã tồn tại.';
			}

			if ($ok == 'true') {
				$sql = "INSERT INTO user (user_name, user_email, user_phone, user_address, user_password, ngaysinh, city, district, village, `time`, state) VALUES ('$name', '$email', '$phone', '$address', '$pass', '$birthday', $city, $district, $village, '$time', 2)";
				$result = mysqli_query($conn_vn, $sql);
				if ($result) {
					echo '<script type="text/javascript">alert(\'Bạn đã thêm được một khách hàng.\');window.location.href="index.php?page=tai-khoan-user"</script>';
				} else {
					echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				}
			}			
		}
	}

	user();
	$city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
	$district = $action->getList('district', 'city_id', $city[0]['id'], 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin khách hàng<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=tai-khoan-user">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
        	<p style="color: red;"><?= $message ?></p>
            <p class="titleRightNCP">Họ Tên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Email</p>
            <input type="email" class="txtNCP1" name="email" required/>
            <p class="titleRightNCP">Số điện thoại</p>
            <input type="tel" class="txtNCP1" name="phone" required/>
            <p class="titleRightNCP">Địa chỉ</p>
            <input type="text" class="txtNCP1" name="address" required />
            <p class="titleRightNCP">Mật khẩu</p>
            <input type="text" class="txtNCP1" name="pass" required/>
            <p class="titleRightNCP">Ngày sinh</p>
            <input type="date" class="txtNCP1" name="birthday" value="<?= date('Y-m-d') ?>" required/>
            <p class="titleRightNCP">Tỉnh, Thành phố</p>
            <select name="city" class="txtNCP1" onchange="cityf(this)">
            	<?php foreach ($city as $item) { ?>
            	<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Quận, Huyện</p>
            <select name="district" class="txtNCP1" onchange="districtf(this)" id="district">
            	<option value="0">Quận, Huyện khác</option>
            	<?php foreach ($district as $item) { ?>
            	<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Phường, Xã</p>
            <select name="village" class="txtNCP1" id="village">
            	<option value="0">Phường, Xã khác</option>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_user">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>
<script>
    function cityf (data) {
        var id = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("district").innerHTML = this.responseText;
             document.getElementById("village").innerHTML = '<option value="0">Phường khác</option>';
            }
          };
          xhttp.open("GET", "/functions/ajax/city.php?id="+id, true);
          xhttp.send();
    }

    function districtf (data) {
        var id = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("village").innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/district.php?id="+id, true);
          xhttp.send();
    }
</script>