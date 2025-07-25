<?php

//phpinfo();die;

session_start();

ob_start();

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$folder = dirname(__FILE__);

include_once('config.php');

include_once('__autoload.php');

$action = new action();

include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";

// $urlAnalytic = $action->showabc();    

include_once dirname(__FILE__).'/'.DIR_FUNCTIONS_PAGING."pagination.php";

include_once 'functions/phpmailer/class.smtp.php';

include_once 'functions/phpmailer/class.phpmailer.php';

include_once "functions/vi_en.php";

// // LÀM RÕ NHỮNG THƯ VIỆN NÀY

// // include_once('lib/vi_en.php');

// // include_once('lib/nganLuong/NL_Checkoutv3.php');



// // LÀM RÕ Install Cart



// Install MultiLanguage

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;

// Install Friendly Url

include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";

// Configure Website

include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

// echo $translate['link_contact'];die;

$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';

$action = new action();

$cart = new action_cart();

$menu = new action_menu();

$action_product = new action_product();

if($lang == "vn"){

    $rowConfig_lang = $action->getDetail('config_languages','id',1);

}else{

    $rowConfig_lang = $action->getDetail('config_languages','id',2);

}





$rowConfig = $action->getDetail('config','config_id',1);

?>



<!doctype html>

<html lang="en">

<head>

  <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->

  <meta charset="UTF-8">

  <meta name="viewport"
    content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- cần cấu hình linh hoạt -->

  <meta name="description" content="<?= $meta_des ?>">

  <!-- cần cấu hình linh hoạt -->

  <meta name="keywords" content="<?= $meta_key ?>">

  <!-- cần cấu hình linh hoạt -->

  <title><?= $title ?></title>

  <!-- cần cấu hình linh hoạt -->

  <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

  <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Roboto&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">

  <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>

  <link rel='stylesheet prefetch'
    href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>

  <link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

  <link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
  <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">

  <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
  <script src="/plugin/jquery/countdown.js"></script>
  <script src="/plugin/jquery/countdown.min.js"></script>


  <script src="https://sp.zalo.me/plugins/sdk.js"></script>
  <!--Start of Tawk.to Script-->
  <script type="text/javascript">
    var Tawk_API = Tawk_API || {},
      Tawk_LoadStart = new Date();
    (function () {
      var s1 = document.createElement("script"),
        s0 = document.getElementsByTagName("script")[0];
      s1.async = true;
      s1.src = 'https://embed.tawk.to/5df75caf43be710e1d224433/default';
      s1.charset = 'UTF-8';
      s1.setAttribute('crossorigin', '*');
      s0.parentNode.insertBefore(s1, s0);
    })();
  </script>
  <!--End of Tawk.to Script-->
  <script src="/plugin/bootstrap/js/bootstrap.js"></script>

  <!-- <link rel="stylesheet" href="/css/style.css"> -->

  <link rel="stylesheet" type="text/css" href="/css/style-kathy.css">
  <link rel="stylesheet" type="text/css" href="/css/responsive.css">
  <!-- end - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->








</head>
<div class="zalo-chat-widget" data-oaid="3405066007638950534" data-welcome-message="Rất vui khi được hỗ trợ bạn!"
  data-autopopup="0" data-width="350" data-height="420"></div>
<a href="tel:0868211017" class="suntory-alo-phone suntory-alo-green" id="suntory-alo-phoneIcon"
  style="left: 0px; bottom: 0px;" datasqstyle="{&quot;top&quot;:null}" datasquuid="4c643075-c7e6-4adf-8841-746771cfb831"
  datasqtop="640">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone" style="float: none;"></i></div>
  <span>Hotline:0916595337</span>
</a>

<!-- CSS Call -->

<style type="text/css">
  .suntory-alo-phone {
    background-color: transparent;
    cursor: pointer;
    height: 200px;
    position: fixed;
    transition: visibility 0.5s ease 0s;
    -webkit-transition: visibility 0.5s ease 0s;
    -moz-transition: visibility 0.5s ease 0s;
    width: 120px;
    z-index: 20000000 !important;
  }

  .suntory-alo-ph-circle {
    animation: 1.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim;
    background-color: transparent;
    border: 2px solid rgba(30, 30, 30, 0.4);
    border-radius: 100%;
    height: 100px;
    left: 0px;
    opacity: 0.1;
    position: absolute;
    top: 0px;
    transform-origin: 50% 50% 0;
    transition: all 0.5s ease 0s;
    width: 100px;
  }

  .suntory-alo-ph-circle-fill {
    animation: 2.3s ease-in-out 0s normal none infinite running suntory-alo-circle-fill-anim;
    border: 2px solid transparent;
    border-radius: 100%;
    height: 70px;
    left: 15px;
    position: absolute;
    top: 15px;
    transform-origin: 50% 50% 0;
    transition: all 0.5s ease 0s;
    width: 70px;
  }

  .suntory-alo-ph-img-circle {
    border: 2px solid transparent;
    border-radius: 100%;
    height: 50px;
    left: 25px;
    opacity: 0.7;
    position: absolute;
    top: 25px;
    transform-origin: 50% 50% 0;
    width: 50px;
    text-align: center;
  }

  .suntory-alo-phone.suntory-alo-hover,
  .suntory-alo-phone:hover {
    opacity: 1;
  }

  .suntory-alo-phone.suntory-alo-active .suntory-alo-ph-circle {
    animation: 1.1s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
  }

  .suntory-alo-phone.suntory-alo-static .suntory-alo-ph-circle {
    animation: 2.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
  }

  .suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle,
  .suntory-alo-phone:hover .suntory-alo-ph-circle {
    border-color: #00aff2;
    opacity: 0.5;
  }

  .suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle,
  .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle {
    border-color: #EB278D;
    opacity: 1;
  }

  .suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle {
    border-color: #bfebfc;
    opacity: 1;
  }

  .suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle-fill,
  .suntory-alo-phone:hover .suntory-alo-ph-circle-fill {
    background-color: rgba(0, 175, 242, 0.9);
  }

  .suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle-fill,
  .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle-fill {
    background-color: #EB278D;
  }

  .suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle-fill {
    background-color: rgba(0, 175, 242, 0.9);
  }

  .suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-img-circle,
  .suntory-alo-phone:hover .suntory-alo-ph-img-circle {
    background-color: #00aff2;
  }

  .suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-img-circle,
  .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-img-circle {
    background-color: #EB278D;
  }

  .suntory-alo-phone.suntory-alo-green .suntory-alo-ph-img-circle {
    background-color: #00aff2;
  }

  @keyframes suntory-alo-circle-anim {
    0% {
      opacity: 0.1;
      transform: rotate(0deg) scale(0.5) skew(1deg);
    }

    30% {
      opacity: 0.5;
      transform: rotate(0deg) scale(0.7) skew(1deg);
    }

    100% {
      opacity: 0.6;
      transform: rotate(0deg) scale(1) skew(1deg);
    }
  }

  @keyframes suntory-alo-circle-img-anim {
    0% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }

    10% {
      transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
      transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
      transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
      transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }

    100% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }
  }

  @keyframes suntory-alo-circle-fill-anim {
    0% {
      opacity: 0.2;
      transform: rotate(0deg) scale(0.7) skew(1deg);
    }

    50% {
      opacity: 0.2;
      transform: rotate(0deg) scale(1) skew(1deg);
    }

    100% {
      opacity: 0.2;
      transform: rotate(0deg) scale(0.7) skew(1deg);
    }
  }

  .suntory-alo-ph-img-circle i {
    animation: 1s ease-in-out 0s normal none infinite running suntory-alo-circle-img-anim;
    font-size: 30px;
    line-height: 50px;
    color: #fff;
  }

  @keyframes suntory-alo-ring-ring {
    0% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }

    10% {
      transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
      transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
      transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
      transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }

    100% {
      transform: rotate(0deg) scale(1) skew(1deg);
    }
  }
</style>

<body>


  <!--HEADER-->

  <?php include_once dirname(__FILE__).DIR_THEMES."header.php"; ?>

  <!--CONTENT-->
  <div class="paddinghope">
    <div class="gb-content">

      <?php

    if (isset($_GET['page'])){

        

        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    

        // echo $urlAnalytic;

        switch ($urlAnalytic) {

        	case 'newscat_languages':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'tin-tuc':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;     

            case 'news_languages':               

                include_once dirname(__FILE__).DIR_THEMES."chitiet_tintuc.php"; break;

            case 'servicecat_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;

            case 'service_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;

            case 'page_language':

                include_once dirname(__FILE__) . DIR_THEMES . "gioithieu.php";break;

    		case 'productcat_languages':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'products':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'san-pham':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'product_languages':

                include_once dirname(__FILE__).DIR_THEMES."chitiet_sanpham.php"; break;	

            // start - chưa hoàn thiện - url địa chỉ trang website

            case 'cart':               

                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;            

            case 'cart-payment':           

                include_once dirname(__FILE__).DIR_THEMES."thanhtoan.php"; break;

            case 'xac-nhan-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."xacnhandonhang.php"; break;

            case 'huy-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."huydonhang.php"; break;

            case 'contact':           

                include_once dirname(__FILE__).DIR_THEMES."contact.php"; break;

            case 'lien-he':

                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'search-news':

                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;

            case 'search-product':

                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;

            case 'search-service':

                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;

            case 'register':

                include_once dirname(__FILE__) . DIR_THEMES . "dangky.php";break;

            case 'login':

                include_once dirname(__FILE__) . DIR_THEMES . "dangnhap.php";break;

            case 'logout':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-xuat.php";break;

            case 'forget-pass':

                include_once dirname(__FILE__) . DIR_THEMES . "forget-pass.php";break;

            case 'change-password':

                include_once dirname(__FILE__) .DIR_THEMES . "change-password.php";break;

            // end - chưa hoàn thiện - url địa chỉ trang website

            case 'thong-tin-ca-nhan':

                include_once dirname(__FILE__) .DIR_THEMES . "user-profile.php";break;

            case 'update-infor':

                include_once dirname(__FILE__) .DIR_THEMES . "update-infor.php";break;

            case 'cart-detail':

                include_once dirname(__FILE__) .DIR_THEMES . "cart-detail.php";break;

            // case 'email':
            //     include_once dirname(__FILE__) . DIR_THEMES . "email.php";break;

            case 'kich-hoat-tai-khoan':
                include_once dirname(__FILE__) . DIR_THEMES . "kich-hoat-tai-khoan.php";break;

            case 'tim-kiem-cua-hang':
                include_once dirname(__FILE__) . DIR_THEMES . "tim-kiem-cua-hang.php";break;

        }

    }

    else include_once dirname(__FILE__).DIR_THEMES."home.php";

    ?>

    </div>

    

  </div>
  <script>
      document.getElementById("tong-quan").addEventListener("mouseenter", mouseEnter);
      document.getElementById("tong-quan").addEventListener("mouseleave", mouseLeave);
      // document.getElementById("tinh-nang").addEventListener("ontouchcancel", touchMove);
      // document.getElementById("tinh-nang").addEventListener("ontouchmove", touchStart);
      function mouseEnter() {
        document.getElementById("demo1").style.backgroundColor = "#ee4d2d";
      }

      function mouseLeave() {
        document.getElementById("demo1").style.backgroundColor = "#222";
      }
      // function touchStart() {
      //   document.getElementById("demo2").style.backgroundColor = "#ee4d2d";
      // }

      // function touchMove() {
      //   document.getElementById("demo2").style.backgroundColor = "#222";
      // }
    </script>
  <script>
      document.getElementById("tinh-nang").addEventListener("mouseenter", mouseEnter);
      document.getElementById("tinh-nang").addEventListener("mouseleave", mouseLeave);
      // document.getElementById("tinh-nang").addEventListener("ontouchcancel", touchMove);
      // document.getElementById("tinh-nang").addEventListener("ontouchmove", touchStart);
      function mouseEnter() {
        document.getElementById("demo2").style.backgroundColor = "#ee4d2d";
      }

      function mouseLeave() {
        document.getElementById("demo2").style.backgroundColor = "#222";
      }
      // function touchStart() {
      //   document.getElementById("demo2").style.backgroundColor = "#ee4d2d";
      // }

      // function touchMove() {
      //   document.getElementById("demo2").style.backgroundColor = "#222";
      // }
    </script>
     <script>
      document.getElementById("thong-so-ky-thuat").addEventListener("mouseenter", mouseEnter);
      document.getElementById("thong-so-ky-thuat").addEventListener("mouseleave", mouseLeave);
      // document.getElementById("thong-so-ky-thuat").addEventListener("ontouchcancel", touchEnter);
      // document.getElementById("thong-so-ky-thuat").addEventListener("ontouchmove", touchLeave);
      function mouseEnter() {
        document.getElementById("demo3").style.backgroundColor = "#ee4d2d";
      }

      function mouseLeave() {
        document.getElementById("demo3").style.backgroundColor = "#222";
      }
      // function touchStart() {
      //   document.getElementById("demo3").style.backgroundColor = "#ee4d2d";
      // }

      // function touchMove() {
      //   document.getElementById("demo3").style.backgroundColor = "#222";
      // }
    </script>
        <script>
      document.getElementById("binh-luan").addEventListener("mouseenter", mouseEnter);
      document.getElementById("binh-luan").addEventListener("mouseleave", mouseLeave);
      // document.getElementById("binh-luan").addEventListener("ontouchcancel", touchEnter);
      // document.getElementById("binh-luan").addEventListener("ontouchmove", touchLeave);
      function mouseEnter() {
        document.getElementById("demo4").style.backgroundColor = "#ee4d2d";
      }

      function mouseLeave() {
        document.getElementById("demo4").style.backgroundColor = "#222";
      }
      // function touchStart() {
      //   document.getElementById("demo4").style.backgroundColor = "#ee4d2d";
      // }

      // function touchMove() {
      //   document.getElementById("demo4").style.backgroundColor = "#222";
      // }
    </script>
           <script>
      document.getElementById("mua-o-dau").addEventListener("mouseenter", mouseEnter);
      document.getElementById("mua-o-dau").addEventListener("mouseleave", mouseLeave);
      // document.getElementById("mua-o-dau").addEventListener("ontouchcancel", touchEnter);
      // document.getElementById("mua-o-dau").addEventListener("ontouchmove", touchLeave);
      function mouseEnter() {
        document.getElementById("demo5").style.backgroundColor = "#ee4d2d";
      }

      function mouseLeave() {
        document.getElementById("demo5").style.backgroundColor = "#222";
      }
      // function touchStart() {
      //   document.getElementById("demo5").style.backgroundColor = "#ee4d2d";
      // }

      // function touchMove() {
      //   document.getElementById("demo5").style.backgroundColor = "#222";
      // }
    </script>


  <!--FOOTER-->

  <div class="gb-footer">

    <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

  </div>


  <script type="text/javascript" src="/functions/language/lang.js"></script>
  <script>
    $(document).ready(function () {
      $(".gb-main-menu_banhatgiong li").click(function () {
        // Clear các thẻ li có Class click cũ
        $(".gb-main-menu_banhatgiong li").removeClass("click");
        // Thêm Class
        $(this).addClass("click");
      });
    });
  </script>
  <script>
    $(document).ready(function () {
      $(".theATM, .airpay, .qrcode, .momo").click(function () {
        // Clear các thẻ li có Class click cũ
        $(".theATM, .airpay, .qrcode, .momo").removeClass("click1");
        // Thêm Class
        $(this).addClass("click1");
      });
    });
  </script>

  <!-- CSS Call -->



</body>




</html>