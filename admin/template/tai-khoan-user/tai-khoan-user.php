<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user',array('user_name','user_email','user_phone','user_address'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user","","","","asc",$trang, 10, "tai-khoan-user");
    }
    
    function san_pham ($email) {
        global $conn_vn;
        $sql = "SELECT * FROM cart INNER JOIN cartdetail ON cart.id_cart = cartdetail.id_cart WHERE cart.mail_buyer = '$email'";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        return $rows;
    }
    // $sp = san_pham('tuan@gmail.com');
    // $id_sp = array();
    // foreach ($sp as $item) {
    //     $id_sp[] = $item['id_product'];
    // }
    // $id_sp = array_unique($id_sp);
    // var_dump($id_sp);

?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan-user">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        <h1><a href="index.php?page=them-user">Thêm</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên tài khoản</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Ngày sinh</th>
                    <th>Lần mua</th>
                    <th>Sản phẩm</th>
                    <th>Ngày khởi tạo</th>          
                    <th>Hoạt động</th>          
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 1;
                    foreach ($rows['data'] as $row) {
                        $cart = $action->getList('cart', 'mail_buyer', $row['user_email'], 'id_cart', 'asc', '', '', '');
                        $count = count($cart);
                        $sp = san_pham($row['user_email']);
                        $id_sp = array();
                        foreach ($sp as $item) {
                            $id_sp[] = $item['id_product'];
                        }
                        $id_sp = array_unique($id_sp);
                    ?>
                        <tr>
                            <td><?= $i++ ?></td>
                            <td><a href="index.php?page=user-cart&mail_buyer=<?= $row['user_email'] ?>" title=""><?= $row['user_name']; ?></a></td>
                            <td><?= $row['user_email']?></td>
                            <td><?= $row['user_phone']?></td>
                            <td><?= $row['ngaysinh']?></td>
                            <td><?= $count ?></td>
                            <td>
                                <?php 
                                foreach ($id_sp as $id_sp_item) {
                                    $product_name = $action->getDetail('product', 'product_id', $id_sp_item)['product_name'];
                                    if ($product_name != '') {
                                        echo $product_name;
                                        echo '<br>';
                                    }
                                }
                                ?>
                            </td>
                            <td>
                                <?= date('d-m-Y H:m:s', strtotime($row['time'])); ?>
                            </td>
                            <?php if ($_SESSION['admin_role']==1) { ?>
                            <td style="float: none;"><a href="index.php?page=xoa-user&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-user&id=<?= $row['user_id'] ?>" style="float: none;">Sửa</a></td>
                            <?php } ?>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             