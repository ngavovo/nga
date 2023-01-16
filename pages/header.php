 <!-- header -->
 <?php
 if (isset($_SESSION['email'])){
  unset($_SESSION['email']);
  }
 
 
 ?>

<?php
   if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
      unset($_SESSION['dk']);
   }
?>
<?php
   if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==2){
      unset($_SESSION['dkntd']);
   }
?>
                 
                    
 <section id="header">
      <div id="menubar">
          <nav class="navbar navbar-expand-lg ">
              <a class="navbar-brand" href="index.php"><img src="images/logo0.png"  alt=""></a>
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ">
        
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=vieclam&id=1">VIỆC LÀM</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=ungvien">ỨNG VIÊN</a>
                  </li>
                  <li class="nav-item ">
                    <a class="nav-link" href="index.php?quanly=congty"> CÔNG TY</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=tintuc">TIN TỨC</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="index.php?quanly=lienhe">LIÊN HỆ</a>
                    </li>
                    
                  
                   
            
            <style>
                          
                            /* The container <div> - needed to position the dropdown content */
                            .dropdown {
                              padding-left:22px ;
                              position: relative;
                              display: inline-block;
                            }
                            .dropdown fa {
                              width: 13px;
                            }

                            /* Dropdown Content (Hidden by Default) */
                            .dropdown-content {
                              display: none;
                              position: absolute;
                              background-color: #f9f9f9;
                              min-width: 160px;
                              box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                              z-index: 1;
                            }

                            /* Links inside the dropdown */
                            .dropdown-content a {
                              color: black;
                              padding: 12px 16px;
                              /* text-decoration: none; */
                              display: block;
                              font-size: 14px;
                            }

                          
                            /* .dropdown-content a:hover {background-color: #f1f1f1} */

                            .dropdown:hover .dropdown-content {
                              display: block;
                            }

                  
                            .dropdown:hover .dropbtn {
                              background-color: #3e8e41;
                            }
                    </style>

                 
                       
            <?php
                   if(isset( $_SESSION['dk'] )){
                     echo "<b style='padding-left:300px; padding-top:10px;'> chào: " .$_SESSION['dk']. "</b>";
                     
                    ?>  
            <div class="dropdown">
                <button class="dropbtn"><i class="fa fa-angle-down"></i></button>
                <div class="dropdown-content">
                  <a href="http://localhost:8080/web_vieclam/ungcuvien/index.php">Tổng quan ứng viên</a>
                  <a href="#">Đổi mật khẩu</a>
                  <a href="index.php?dangxuat=1">Đăng xuất</a>
                </div>
            </div>
              
                      <?php
                          } elseif (isset( $_SESSION['dkntd'] )){
                              echo "<b style='padding-left:300px; padding-top:10px;'> chào: " .$_SESSION['dkntd']. "</b>";
                              
                             ?>  
                     <div class="dropdown">
                         <button class="dropbtn"><i class="fa fa-angle-down"></i></button>
                         <div class="dropdown-content">
                           <a href="http://localhost:8080/web_vieclam/nhatuyendung/index.php">Tổng quan nhà tuyển dụng</a>
                           <a href="#">Đổi mật khẩu</a>
                           <a href="index.php?dangxuat=2">Đăng xuất</a>
                         </div>
                     </div>
                               
                  <?php
                          }else{
                  
                  ?>
                
                 <li>
                   <a href="index.php?quanly=dkntd"></a>
                  </li>
                  <li class="btn-box">       
                  <a class="btn btn-primary" href="index.php?quanly=dk">ĐĂNG NHẬP/ĐĂMG KÝ</a>
                  <li>
                   <a href="index.php?quanly=dangnhap"></a>
                  </li>
                  <li>
                   <a href="index.php?quanly=dangnhapntd"></a>
                  </li>
                </li> 
<?php
}
?>


              
                        </ul>
                        </div>
<!--                   
                        <ul class="dropdown-menu text-left show" aria-labelledby="dropdownMenuUser" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 5px, 0px); top: 0px; left: 0px; will-change: transform;" x-out-of-boundaries="">
                        <li class="menu">
                          <a href="">Thông tin của tôi</a>
                        </li>    

                        <li class="menu-hr">
                          <a href="">Đổi mật khẩu </a>
                        </li>    
                        <li class="menu-hr">
                          <a href="">Tổng quan nhà tuyển dụng</a>
                        </li>    
                        <li class="menu-hr">
                          <a href="">Đăng xuất</a>
                        </li>                                              
                        </ul>    -->
                
             
            </nav>
      </div>
      </section>
     
      