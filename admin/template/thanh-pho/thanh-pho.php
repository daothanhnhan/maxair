<?php
    $rows = $acc->getList("city2","","","id","asc",$trang, 100, "thanh-pho");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="/admin/index.php?page=them-thanh-pho">Thêm</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên thành phố</th>
                    <th>Mô tả</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td>
                                <?= $row['note']?>
                            </td>
                            <?php if ($_SESSION['admin_role']==1) { ?>
                            <td style="float: none;"><a href="/admin/index.php?page=xoa-thanh-pho&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="/admin/index.php?page=sua-thanh-pho&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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