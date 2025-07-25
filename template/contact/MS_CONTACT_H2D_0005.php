<?php 
    if (!isset($_SESSION['city'])) {
        $_SESSION['city'] = 0;
    }

    if (!isset($_SESSION['district'])) {
        $_SESSION['district'] = 0;
    }

    function listDaiLy () {
        global $conn_vn;
        if ($_SESSION['city']==0) {
            $sql = "SELECT * FROM dai_ly";
        } else {
            if ($_SESSION['district']==0) {
                $sql = "SELECT * FROM dai_ly WHERE city = ".$_SESSION['city'];
            } else {
                $sql = "SELECT * FROM dai_ly WHERE city = ".$_SESSION['city']." AND district = ".$_SESSION['district'];
            }
        }
        
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }
    $list_daily = listDaiLy();
    $count_daily = count($list_daily);

    function listCity () {
        global $conn_vn;
        $sql = "SELECT * FROM city2";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    $list_city = listCity();

    function listDistrict () {
        global $conn_vn;
        $sql = "SELECT * FROM district2 WHERE city_id = ".$_SESSION['city'];
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    $list_qhuyen = listDistrict();
?>
<style>
.active {
    background-color: #ccc;
}
</style>
<div class="container">
    <div class="gb-gioithieu-company">

        <div class="title_sp">
            <span class="fa fa-globe" aria-hidden="true"></span>
            <span class="title_home1">Hệ thống phân phối</span>
        </div>
        <div class="introduce_lh">

            <h3>Tìm kiếm cửa hàng</h3>
            <div class="row">
                <div class="col-md-5 col-sm-5 col-xs-12">

                    <select class="chon_tp" name="city" onchange="city(this)">
                        <option value="0">Chọn Tỉnh - Thành phố</option>
                        <?php foreach ($list_city as $item) {  ?>
                        <option value="<?= $item['id'] ?>" <?= ($item['id']==$_SESSION['city']) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>

                <div class="col-md-5 col-sm-5 col-xs-12">

                    <select class="chon_tp" onchange="district(this)">
                        <option value="0">Chọn Quận Huyện</option>
                        <?php foreach ($list_qhuyen as $item) { ?>
                        <option value="<?= $item['id'] ?>" <?= ($item['id']==$_SESSION['district']) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>
                <div class="col-md-2 col-sm-2 col-xs-12 sea">

                    <button type="submit" name="send_email">Tìm kiếm</button>

                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-md-4 ketqua">
            <p class="ketqua-tk">Tìm thấy <?= $count_daily ?> cửa hàng</p>
            <div>
                <?php 
                $d = 0;
                foreach ($list_daily as $item) { 
                    $d++;
                ?>
                <div class="hethong_pp tablinks <?= ($d==1) ? 'active' : '' ?>" onclick="openCity1(event, '<?= $item['id'] ?>')">
                    <h4 class="ten_cuahang"><?= $item['name'] ?></h4>
                    <p class="add_cuahang"><?= $item['address'] ?></p>
                    <p class="tel_cuahang"><?= $item['phone'] ?></p>
                    <a href="<?= $item['map'] ?>">Chỉ đường</a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="col-md-8">
            <?php include DIR_CONTACT."MS_CONTACT_H2D_0004.php";?>
        </div>
    </div>
    <?php include DIR_PARTNER."MS_PARTNER_DAIMOND_0001.php";?>
</div>
<script >
    
    function openCity(evt, cityName) {
        // Declare all variables
        var i, tabcontent, tablinks;

        // Get all elements with class="tabcontent" and hide them
        tabcontent = $(".tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }

        // Get all elements with class="tablinks" and remove the class "active"
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        // Show the current tab, and add an "active" class to the link that opened the tab
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    function openCity1 (evt, id) {
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        evt.currentTarget.className += " active";

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById('vietnam').innerHTML = this.responseText;
             // alert(bien);
             // location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax/daily.php?id="+id, true);
          xhttp.send();
    }
</script>
<script type="text/javascript">
    function city (data) {
        // alert(data.value);
        var city = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var bien = this.responseText;
             // alert(bien);
             location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax/city2.php?city="+city, true);
          xhttp.send();
    }

    function district (data) {
        // alert(data.value);
        var qh = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var bien = this.responseText;
             // alert(bien);
             location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax/district2.php?qh="+qh, true);
          xhttp.send();
    }
</script>