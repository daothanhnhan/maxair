<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,6,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,6,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="gb-sanpham-body">
    <?php //include DIR_SEARCH."MS_SEARCH_BANHATGIONG_0002.php";?>
    <div class="row">
        <?php
            $d = 0;
            foreach ($rows['data'] as $row) {
                $d++;
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

    <?php include DIR_PAGINATION."MS_PAGINATION_BANHATGIONG_0001.php";?>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                          window.location = '/gio-hang';
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