<?php 
include_once dirname(__FILE__) . "/../database.php";
include_once dirname(__FILE__) . "/../library.php";
include_once dirname(__FILE__) . "/../pagination/Pagination.php";
include_once dirname(__FILE__) . "/../action.php";
$action = new action();

session_start();

	if($_POST["action"] == "add"){  

              if(isset($_SESSION["shopping_cart"]))  

              {  

                $is_available = 0;  

                foreach($_SESSION["shopping_cart"] as $keys => $values)  

                {  

                  if($_SESSION["shopping_cart"][$keys]['product_id'] == $_POST["product_id"])  

                  {  

                    $is_available++;  

                    $_SESSION["shopping_cart"][$keys]['product_quantity'] = $_SESSION["shopping_cart"][$keys]['product_quantity'] + $_POST["product_quantity"];  

                  }  

                }  

                if($is_available < 1)  

                {  

                  $item_array = array(  

                    'product_id'               =>     $_POST["product_id"],  

                    'product_name'             =>     $_POST["product_name"],  

                    'product_price'            =>     $_POST["product_price"],  

                    'product_quantity'         =>     $_POST["product_quantity"]  

                  );  

                  $_SESSION["shopping_cart"][] = $item_array;  

                }  

              }  

              else  

              {  

                $item_array = array(  

                  'product_id'               =>     $_POST["product_id"],  

                  'product_name'             =>     $_POST["product_name"],  

                  'product_price'            =>     $_POST["product_price"],  

                  'product_quantity'         =>     $_POST["product_quantity"]  

                );  

                $_SESSION["shopping_cart"][] = $item_array;  

              }  

            } 

?>

<table class="table table-bordered" style="margin-bottom: 0px;">



  <tr>



    <th width="15%">Ảnh sản phẩm</th>

    <th width="15%">Tên sản phẩm</th>


    <th width="10%">Số lượng</th>



    <th width="15%">Giá</th>



    <th width="10%">Thành tiền</th>



    <th width="5%">Mua hàng</th>



  </tr>



  <?php  



    if(!empty($_SESSION["shopping_cart"]))  



      {  



      $total = 0;  



      foreach($_SESSION["shopping_cart"] as $keys => $values)  



        {                                               



        ?>



  <tr>

    <td><img src="/images/<?= $action->getDetail('product', 'product_id', $values['product_id'])['product_img'] ?>" alt="" style="width: 100px;"></td>

    <td data-title="Tên sản phẩm">

      <?php echo $values["product_name"]; ?></td>

    

    <td data-title="Số lượng"><input type="text" name="quantity[]" id="quantity<?php echo $values["product_id"]; ?>"
        value="<?php echo $values["product_quantity"]; ?>" data-product_id="<?php echo $values["product_id"]; ?>"
        class="form-control quantity" /></td>



    <td align="right" data-title="Giá">

      <?php echo number_format($values["product_price"]); ?>

      VNĐ</td>



    <td align="right" data-title="Thành tiền">

      <?php echo number_format($values["product_quantity"] * $values["product_price"], 2); ?>

      VNĐ</td>



    <td data-title="Bạn có muốn mua?"><button name="delete" class="btn btn-danger btn-xs delete"
        id="<?php echo $values["product_id"]; ?>" style="margin: 0px;">Remove</button>

    </td>



  </tr>



  <?php  



    $total = $total + ($values["product_quantity"] * $values["product_price"]);



      } 



    $_SESSION['total'] = $total; 



     ?>



  <tr>



    <td colspan="4" align="right">Tổng tiền</td>



    <td align="right">

      <?php echo number_format($total, 2); ?> VNĐ

    </td>



    <td></td>



  </tr>



  <!-- <tr>



    <td colspan="5" align="center">



      <form method="post" action="/cart-payment">



        <input type="submit" name="place_order" class="btn btn-warning" value="Thanh toán" style="width: 15%;" />



      </form>



    </td>



  </tr> -->



  <?php  



    }  



    ?>



</table>
