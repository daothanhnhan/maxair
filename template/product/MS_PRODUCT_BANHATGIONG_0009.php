<div class="gb-sanpham-body">
    <div class="row">
        <?php 
            foreach ($rows['data'] as $row) {
                $action_product1 = new action_product(); 
                $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
            ?>
        <div class="col-md-4 col-sm-6">
            <div class="item_product">
                <div class="cover_item_product_banhatgiong">
                    <div class="box_image_product_banhatgiong">
                        <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>">
                            <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-ressponsive">
                        </a>
                        <div class="action_product_banhatgiong">
                            <?php include DIR_CART."MS_CART_BANHATGIONG_0002.php";?>
                            <?php include DIR_CART."MS_CART_BANHATGIONG_0003.php";?>
                            <?php include DIR_CART."MS_CART_BANHATGIONG_0004.php";?>
                        </div>
                    </div>
                    <div class="box_info_product_banhatgiong">
                        <a class="link_name_product_banhatgiong" href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>">
                             <?= $rowLang1['lang_product_name'] ?>
                        </a>
                        <?php include DIR_PRODUCT."MS_PRODUCT_BANHATGIONG_0002.php";?>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>

    <?php 
        $config = array(
            'current_page'  => $trang+1, // Trang hiện tại
            'total_record'  => $rows['count'], // Tổng số record
            'total_page'    => 1, // Tổng số trang
            'limit'         => $limit,// limit
            'start'         => 0, // start
            'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
            'link_first'    => '',// Link trang đầu tiên
            'range'         => 9, // Số button trang bạn muốn hiển thị 
            'min'           => 0, // Tham số min
            'max'           => 0,  // tham số max, min và max là 2 tham số private
            'search'        => str_replace(' ', '-', $rows['q'])

        );

        $pagination = new Pagination;
        $pagination->init($config);
        echo $pagination->htmlPaging1();
    ?>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
              window.location = '/cart';
          }else{
              location.reload();
          } 
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>