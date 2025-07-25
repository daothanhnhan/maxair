<div id="#" class="menu_topheader">
  <!-- <ul>
    <li><a href="#thong-so-ky-thuat">Sản phẩm</a></li>
    <li><a href="">Doanh nghiệp</a></li>
    <li><a href="/thong-tin-ca-nhan">Hỗ Trợ</a></li>
    <li><a href="/cart">Ưu đãi</a></li>
    <li><a href="/">Mua ở đâu</a></li>
    <li><a href="tel:0868866698">Hotline 0868866698</a></li>
  </ul> -->
  <?php 
  	$main_menu = $menu->main_menu(230, $lang);//var_dump($main_menu);die;
                $menu->show_menu1($main_menu, $lang);
  ?>
</div>