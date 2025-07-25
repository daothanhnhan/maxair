<?php 

    $message = "";



    function update_infor(){

        global $conn_vn;

        if(isset($_POST['update_infor'])){

            $name = ($_POST['name']==NULL) ? '' : $_POST['name'];

            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];

            $address = ($_POST['address']==NULL) ? '' : $_POST['address'];

            // $ngaysinh = ($_POST['ngaysinh']==NULL) ? '0000-00-00' : $_POST['ngaysinh'];

            $ngaysinh = $_POST['year'] . '-' . $_POST['month'] . '-' . $_POST['day'];

            $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];

            $city = $_POST['city'];

            $district = $_POST['district'];

            $village = $_POST['village'];


            $sql = "UPDATE user SET user_name = '$name', user_email = '$email', user_phone = '$phone', user_address = '$address', ngaysinh = '$ngaysinh', city = $city, district = $district, village = $village Where user_id = " . $_SESSION['user_id_gbvn'];

            $result = mysqli_query($conn_vn, $sql) or die('error: ' . mysqli_error($conn_vn));

            echo '<script type="text/javascript">alert(\'Thông tin được cập nhật thành công!\'); window.location.href = "/thong-tin-ca-nhan";</script>';

        }

    }



    update_infor();



    function get_list_user_1(){

        global $conn_vn;

        $user_id = $_SESSION['user_id_gbvn'];

        $sql = "SELECT * FROM user Where user_id = '$user_id'";

        $result = mysqli_query($conn_vn, $sql);

        $row = mysqli_fetch_assoc($result);

        return $row;

    }

    $list_user = get_list_user_1();
    $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');

    if (empty($list_user['city'])) {
        $district = $action->getList('district', 'city_id', $city[0]['id'], 'id', 'asc', '', '', '');
    } else {
        $district = $action->getList('district', 'city_id', $list_user['city'], 'id', 'asc', '', '', '');
    }

    $village = array();
    if (!empty($list_user['district'])) {
        $village = $action->getList('village', 'district_id', $list_user['district'], 'id', 'asc', '', '', '');
    }

    $ngay = explode("-", $list_user['ngaysinh']);
?>

<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_BANHATGIONG_0001.php";?>

<div class="gb-register1">

    <div class="container">

        <div class="row">

            <div class="col-md-8 col-md-offset-2">

                <div class="gb-register-body">

                    <h1>Cập nhật thông tin cá nhân </h1>

                    <p>Cập nhật đầy đủ chi tiết thông tin cá nhân, để chúng tôi có thể hỗ trợ và tư vấn cho bạn dễ dàng hơn</p>

                    <div class="row">

                        <div class="col-md-8  col-md-offset-2">

                            <form action="" method="post">

                                <div class="form-group">

                                    <label>Họ và tên:</label>

                                    <input type="text" class="form-control" name="name" placeholder="Họ và tên" value="<?= $list_user['user_name'] ?>" required>

                                </div>

                                <div class="form-group">

                                        <label>Email:</label>

                                    <input type="email" class="form-control" name="email" placeholder="Địa chỉ Email" value="<?= $list_user['user_email'] ?>" readonly>

                                </div>

                                <div class="form-group">

                                    <label>Số nhà:</label>

                                    <input type="text" class="form-control" name="address" placeholder="Địa chỉ" value="<?= $list_user['user_address'] ?>" required>

                                </div>
                                <div class="row" style="margin-left: 0;margin-right: 0;">
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                            <p class="form-row form-row-last1">

                                                <label class="diachi-v">
                                                    Tỉnh, Thành phố<br>
                                                    
                                                    <span class="luachon ">
                                                        <select name="city" onchange="cityf(this)">
                                                            <?php foreach ($city as $item) { ?>
                                                            <option value="<?= $item['id'] ?>" <?= $item['id']==$list_user['city'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </span>

                                                </label>

                                            </p>
                                    </div>
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="diachi-v">
                                                Quận, Huyện<br>
                                                
                                                <span class="luachon ">
                                                    <select name="district" onchange="districtf(this)" id="district">
                                                        <option value="0">Quận khác</option>
                                                        <?php foreach ($district as $item) { ?>
                                                        <option value="<?= $item['id'] ?>" <?= $item['id']==$list_user['district'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </span>

                                            </label>

                                        </p>
                                    </div>
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="diachi-v">
                                                Phường, Xã<br>
                                                
                                                <span class="luachon ">
                                                    <select name="village" id="village">
                                                        <option value="0">Phường khác</option>
                                                        <?php foreach ($village as $item) { ?>
                                                        <option value="<?= $item['id'] ?>" <?= $item['id']==$list_user['village'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </span>

                                            </label>

                                        </p>
                                    </div>
                                    <!-- <div class="addr col-md-6 col-sm-6 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="">Địa chỉ <abbr class="required"
                                                    title="required">*</abbr></label>

                                            <input type="text" class="input-text" name="txtAddress"
                                                id="inputTxtAddress" placeholder=""
                                                value="<?= $row['user_address']?>" required="">

                                        </p>
                                    </div> -->
                                </div>
                                <div class="row" style="margin-left: 0;margin-right: 0;">
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                            <p class="form-row form-row-last1">

                                                <label class="diachi-v">
                                                    Ngày sinh<br>
                                                    
                                                    <span class="luachon ">
                                                        <select name="day">
                                                            <?php 
                                                            for ($i=1;$i<=31;$i++) {
                                                                if ($i < 10) {
                                                                    $j = '0'.$i;
                                                                } else {
                                                                    $j = $i;
                                                                }
                                                            ?>
                                                            <option value="<?= $j ?>" <?= $j==$ngay[2] ? 'selected' : '' ?> ><?= $j ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </span>

                                                </label>

                                            </p>
                                    </div>
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="diachi-v">
                                                Tháng<br>
                                                
                                                <span class="luachon ">
                                                    <select name="month">
                                                        <?php 
                                                        for ($i=1;$i<=12;$i++) {
                                                            if ($i < 10) {
                                                                $j = '0'.$i;
                                                            } else {
                                                                $j = $i;
                                                            }
                                                        ?>
                                                        <option value="<?= $j ?>" <?= $j==$ngay[1] ? 'selected' : '' ?> ><?= $j ?></option>
                                                        <?php } ?>

                                                    </select>
                                                </span>

                                            </label>

                                        </p>
                                    </div>
                                    <div class="addr col-md-4 col-sm-4 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="diachi-v">
                                                Năm<br>
                                                
                                                <span class="luachon ">
                                                    <select name="year">
                                                    <?php 
                                                    $year = date('Y');
                                                    for ($i=1974;$i<=$year;$i++) { 
                                                    ?>
                                                    <option value="<?= $i ?>" <?= $i==$ngay[0] ? 'selected' : '' ?> ><?= $i ?></option>
                                                    <?php } ?>
                                                    </select>
                                                </span>

                                            </label>

                                        </p>
                                    </div>
                                    <!-- <div class="addr col-md-6 col-sm-6 col-xs-6">
                                        <p class="form-row form-row-last1">

                                            <label class="">Địa chỉ <abbr class="required"
                                                    title="required">*</abbr></label>

                                            <input type="text" class="input-text" name="txtAddress"
                                                id="inputTxtAddress" placeholder=""
                                                value="<?= $row['user_address']?>" required="">

                                        </p>
                                    </div> -->
                                </div>
                                <!-- <div class="form-group">

                                    <label>Ngày sinh:</label>

                                    <input type="date" class="form-control" name="ngaysinh" placeholder="Địa chỉ" value="<?= $list_user['ngaysinh'] ?>" required>

                                </div> -->

                                <div class="form-group">

                                    <label>Số điện thoại:</label>

                                    <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" value="<?= $list_user['user_phone'] ?>" required>

                                </div>

                                <div class="form-group">

                                    <button type="submit" name="update_infor" class="btn btn-success">Cập nhật</button>

                                    <a href="/thong-tin-ca-nhan" class="btn btn-danger" role="button">Hủy</a>

                                </div>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
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