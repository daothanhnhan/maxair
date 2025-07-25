<?php
function set_zero () {
    global $conn_vn;
    $sql = "UPDATE cart SET new = 1 WHERE 1=1";
    $result = mysqli_query($conn_vn, $sql);
}
set_zero();

$order = new action_order();
$orderStates = $order->getOrderState();


if (isset($_GET['search']) && !empty($_GET['search']))

{

    $rows = $action->getSearchAdmin('cart', array(

            'name_buyer', 'mail_buyer', 'phone_buyer', 'address_buyer', 'note_buyer', 'id_cart'

    ), $_GET['search'], $trang, 20, $_GET['page']);

    // $rows = $rows['data'];

}

else

{

    // $rows = $order->getListOrder();

     if (isset($_GET['trang'])) {

        $trang = $_GET['trang'];

        $start = $trang -1;

        $start = $start*20;

    } else {

        $trang = 1;

        $start = 0;

    }

    // $rows = $order->getListOrder();

    $sql = "SELECT * From cart Order By id_cart DESC Limit $start,20";

    $result = mysqli_query($conn_vn, $sql);

    $rows1 = array();

    while ($row = mysqli_fetch_assoc($result)) {

        $rows1[] = $row;

    }

    $rows = array('data' => $rows1);

}

?>



<div class="boxPageNews">

    <div class="searchBox">

        <form>

            <input type="hidden" name="page" value="don-hang">

            <button class="btnSearchBox">Tìm kiếm</button>

            <input type="search" class="txtSearchBox" name="search" placeholder="Nhập tự khóa …" />

        </form>

    </div>

    <div class="row">

        <form action="index.php" method="get">

        <input type="hidden" name="page" value="don-hang-ngay-range">

        <div class="col-md-3 col-xs-12">

            <div class="form-group">

                <label for="email">Lọc từ ngày:</label>

                <input type="date" class="form-control" id="date_in" name="date_in" required="">

            </div>

        </div>

        <div class="col-md-3 col-xs-12">

            <div class="form-group">

                <label for="email">Lọc đến ngày:</label>

                <input type="date" class="form-control" id="date_out" name="date_out" required="">

            </div>

        </div>

        <div class="col-md-3 col-xs-12">

            <button type="submit" class="btn btn-default">Lọc</button>

        </div>

        </form>

        <div class="col-md-3 col-xs-12">

            <div class="form-group">
              <label for="sel1">Lọc theo trạng thái:</label>
              <select class="form-control" id="sel1" onchange="filter_state(this)">
                <option value="">Chọn trạng thái</option>
                <?php foreach ($orderStates as $item) { ?>
                <option value="<?= $item['order_state_id'] ?>"><?= $item['order_state_name'] ?></option>
                <?php } ?>
              </select>
            </div>

        </div>

    </div>

    <div class="titleNP">

        <p class="colNP0"><input type="checkbox" name="" value="" onclick="chck(this)"></p>

        <p class="colNP1" style="width: 3%;">STT</p>

        <p class="colNP1">Đơn hàng</p>

        <p class="colNP2">Ngày đặt</p>

        <p class="colNP2">Khách hàng</p>

        <p class="colNP4">Số điện thoại</p>

        <p class="colNP4">Tình trạng</p>

        <p class="colNP6" >Tổng tiền</p>

        <p class="colNP6" >Xóa</p>

    </div>

    <ul class="titleNP">

        <?php 

        $d = 0;

        foreach($rows['data'] as $rowOrder) :?>

            <?php 

            $cart_detail = $action->getList('cartdetail', 'id_cart', $rowOrder['id_cart'], 'id_cartDetail', 'asc', '', '', '');

            $d++;

            if ($rowOrder['id_orderState']==NULL) {

                $rowOrder['id_orderState'] = 1;

            }

            $state = $action->getDetail('order_state', 'order_state_id', $rowOrder['id_orderState']);

            $user = $action->getDetail('user', 'user_email', $rowOrder['mail_buyer']);

            if (!empty($user)) {
                $rowOrder['name_buyer'] = $user['user_name'];
                $rowOrder['phone_buyer'] = $user['user_phone'];
            }

            ?>

            <li>

                <p class="colNP0_2"><input type="checkbox" name="ckAction" id="ckAction" value="" class="ck_action"></p>

                <div class="colNP1_2" style="width: 3%;"><?= $d ?></div>

                <div class="colNP1_2">

                    <a href="index.php?page=sua-don-hang&id_cart=<?php echo $rowOrder['id_cart']; ?>" title="">
                        #<?php echo $rowOrder['id_cart']; ?>
                        <?php foreach ($cart_detail as $cart_detail_item) { ?>
                            <hr style="margin: 0;">
                            <?= $action->getDetail('product', 'product_id', $cart_detail_item['id_product'])['product_name'] ?>
                        <?php } ?>    
                    </a>

                </div>

                <p class="colNP2_2">
                
                <?php echo $rowOrder['date_cart']; ?>
                </p>

                <p class="colNP2_2"><?php echo $rowOrder['name_buyer'];?></p>

                <p class="colNP4_2"><?php echo $rowOrder['phone_buyer'];?></p>

                <p class="colNP4_2"><?php echo $action->getDetail('order_state', 'order_state_id', $rowOrder['id_orderState'])['order_state_name'];?></p>

                <?php if ($state['order_state_id']==7) { ?>

                <p class="colNP6_2" ><?php echo number_format($rowOrder['total_price'],"0","",".");?>đ</p>

                <?php } else { ?>
                    <p class="colNP6_2" >&nbsp;</p>
                <?php } ?>
                <?php if ($_SESSION['admin_role']==1) { ?>
                <p class="colNP6_2" ><a href="index.php?page=xoa-don-hang&id=<?= $rowOrder['id_cart'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a></p>
                <?php } ?>
            </li>

        <?php endforeach; ?>

    </ul>

</div>

<?php  



if (isset($_GET['search']) && !empty($_GET['search'])) {

    echo '<div>'.$rows["paging"].'</div>';



    } else {

        if (isset($_GET['trang'])) {

                $trang = $_GET['trang'];

            } else {

                $trang = 1;

            }



            $sql_pagin = "SELECT * From cart";

            $result_pagin = mysqli_query($conn_vn, $sql_pagin);

            $num_pagin = mysqli_num_rows($result_pagin);





            $config = array(

                'current_page'  => $trang, // Trang hiện tại

                'total_record'  => $num_pagin, // Tổng số record

                'total_page'    => 1, // Tổng số trang

                'limit'         => 20,// limit

                'start'         => 0, // start

                'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}

                'link_first'    => '',// Link trang đầu tiên

                'range'         => 9, // Số button trang bạn muốn hiển thị 

                'min'           => 0, // Tham số min

                'max'           => 0  // tham số max, min và max là 2 tham số private

            );



            $pagination = new Pagination;

            $pagination->init($config);



            echo $pagination->htmlPaging_tuan($_GET['page']);

        }

?>



<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>
<script>
    function chck (data) {
        // alert(data.checked);
        if (data.checked == true) {
            var ck = document.getElementsByClassName("ck_action");
            var lng = ck.length;
            for (var i=0;i<lng;i++) {
                ck[i].checked = true;
            }
        }

        if (data.checked == false) {
            var ck = document.getElementsByClassName("ck_action");
            var lng = ck.length;
            for (var i=0;i<lng;i++) {
                ck[i].checked = false;
            }
        }
    }

    function filter_state (data) {
        // alert(data.value);
        var id = data.value;
        window.location.href = "index.php?page=don-hang-state&id="+id;
    }
</script>