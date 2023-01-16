<?php
   require_once 'config.php';
   $idPost = $_GET["idPost"];
   $sql = "SELECT nn.tennganhnghe, vl.tenvieclam, vl.luong, dd.tendiadiem, vl.mota, vl.hinhanh, vl.ngaydang, vl.tinhtrang
            FROM baivietvl AS vl
            JOIN nganhnghe AS nn ON vl.id_nganhnghe = nn.id_nganhnghe
            JOIN diadiem AS dd ON vl.id_diadiem = dd.id_diadiem
            WHERE vl.id_baiviet = '$idPost'";
   $query_sql=mysqli_query($conn,$sql);
	$row_sql=mysqli_fetch_assoc($query_sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Chi tiết</title>
   <link rel="stylesheet" type="text/css" href="css/chitietvieclam.css">
   <link rel="stylesheet" type="text/css" href="css/vieclam.css">
</head>
<body>
   <div class="upper-box">
      <div class="auto-container">
         <div class="upper-box__job">
            <div class="item">
               <div class="item-top">
                  <?php
                     echo '
                        <div class="fix">
                           <div class="item-top-avt">
                                 <img src="./images/'.$row_sql["hinhanh"].'" alt="">
                           </div>
                           <div class="item-mid">
                                 <div class="item-mid-title"><a href="index.php?quanly=chitietvieclam">'.$row_sql["tenvieclam"].'</a></div>
                                 <div class="item-top-info">
                                    <p class="item-top-text"><i class="fa-solid fa-bag-shopping"></i>'.$row_sql["tennganhnghe"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-location-dot"></i>'.$row_sql["tendiadiem"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-clock"></i>'.$row_sql["ngaydang"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-money-bill"></i>'.$row_sql["luong"].'</p>
                                 </div>
                                 <div class="item-mid-button">
                                    <span class="time">Tạm thời</span>
                                    <span class="privacy">Nổi bật</span>
                                    <span class="required">Cấp bách</span>
                                 </div>
                           </div>  
                        </div>
                     ';
                  ?>
               </div>
            </div>
         </div>
         <div class="upper-box__btn">
            <button>Nộp đơn xin việc</button>
            <span><i class="fa-regular fa-bookmark"></i></span>
         </div>
      </div>
   </div>

   <div class="under-box">
      <div class="job-desc">
         <p class="job-desc__title">Mô tả công việc</p>
         <p class="job-desc__info">
            <?php
               echo $row_sql["mota"];
            ?>
         </p>
      </div>
      <div class="under-box__share">
         <p class="under-box__share-text">Chia sẽ công việc này</p>
         <div class="under-box__list-btn">      
            <button class="facebook"><i class="fa-brands fa-facebook-f"></i> <span>Facebook</span></button>

            <button class="twitter"><i class="fa-brands fa-twitter"></i> <span>Twitter</span></button>

            <button class="pinterest"><i class="fa-brands fa-pinterest-p"></i> <span>Pinterest</span></button>
         </div>
      </div>
   </div>
</body>
</html>