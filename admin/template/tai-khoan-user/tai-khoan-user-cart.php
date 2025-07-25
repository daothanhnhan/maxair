<?php
    $rows = $acc->getList("cart","mail_buyer",$_GET['mail_buyer'],"id_cart","asc",$trang, 20, "user-cart");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Đơn hàng</th>
                    <th>Ngày đặt</th>
                    <th>Khách hàng</th>
                    <th>Số điện thoại</th>
                    <th>Tình trạng</th>
                    <th>Tổng tiền</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        if ($row['id_orderState']==NULL) {
                            $row['id_orderState'] = 1;
                        }
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><a href="index.php?page=sua-don-hang&id_cart=<?php echo $row['id_cart']; ?>" title="">#<?php echo $row['id_cart']; ?></a></td>                            
                            <td><?= $row['date_cart'] ?></td>                            
                            <td><?= $row['name_buyer'] ?></td>                            
                            <td><?= $row['phone_buyer'] ?></td>                            
                            <td><?= $action->getDetail('order_state', 'order_state_id', $row['id_orderState'])['order_state_name'] ?></td>                            
                            <td><?= number_format($row['total_price'],"0","",".") ?></td>                            
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             