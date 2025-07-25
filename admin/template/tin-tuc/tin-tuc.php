<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('news',array('news_name'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
       // $rows = $action->getList('news','','','news_id','desc',$trang,20,'tin-tuc');
       if (isset($_GET['newscat_id'])) {
            $rows = $action->getList('news','newscat_id',$_GET['newscat_id'],'news_id','desc',$trang,20,'tin-tuc');
       } else {
            $rows = $action->getList('news','','','news_id','desc',$trang,20,'tin-tuc');
       }
    }
    $newscat = $action->getList('newscat', '', '', 'newscat_id', 'desc', '', '', '');
?>
	
    
<div class="boxPageNews">
	<div class="searchBox">
        <form action="">
            <input type="hidden" name="page" value="tin-tuc">
        	<button type="submit" class="btnSearchBox">Tìm kiếm</button>
            <input type="text" class="txtSearchBox" name="search" />                	                
        </form>
    </div>
    <div>
        <div class="form-group">
            <label for="sel1">Danh mục:</label>
              <select class="form-control" id="sel1" onchange="danh_muc(this)">
                <option value="0">Tất cả</option>
                <?php foreach ($newscat as $item) { ?>
                <option value="<?= $item['newscat_id'] ?>" <?= $_GET['newscat_id']==$item['newscat_id'] ? 'selected' : '' ?> ><?= $item['newscat_name'] ?></option>
                <?php } ?>
              </select>
        </div>
    </div>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Tiêu đề</th>
                <th>Danh mục</th>
                <th>Người tạo</th>
                <th>Ngày cập nhật</th>
                <th>Trạng thái</th>
                <th>Xóa</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($rows['data'] as $key => $row) {
                ?>
                    <tr>
                        <td><a href="index.php?page=sua-tin-tuc&id=<?= $row['news_id']; ?>" title=""><?= $row['news_name']; ?></a></td>
                        <td><?= $action->getDetail('newscat', 'newscat_id', $row['newscat_id'])['newscat_name'] ?></td>
                        <td>
                            <a href="#" class="rightCP">
                            <?php 
                                $action1 = new action_page('VN');
                                echo $action1->getDetail('admin','admin_id',$row['created_id'])['admin_name'];
                            ?>
                            </a>    
                        </td>
                        <td><?= $row['news_update_date'] != '' ? date('d-m-Y H:m:s', strtotime($row['news_update_date'])) : date('d-m-Y H:m:s', strtotime($row['news_created_date']))?></td>
                        <td><?= $row['state'] == 1 ? 'Đã đăng' : 'Chờ duyệt'?></td>
                        <?php if ($_SESSION['admin_role']==1) { ?>
                        <td style="float: none;"><a href="index.php?page=xoa-tin-tuc&id=<?= $row['news_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a></td>
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

<script>
function danh_muc (data) {
    // alert(data.value);
    var id = data.value;
    if (id == 0) {
        window.location.href = "index.php?page=tin-tuc";
    } else {
        window.location.href = "index.php?page=tin-tuc&newscat_id="+id;
    }
}
</script>