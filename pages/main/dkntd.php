<?php
 if (isset($_SESSION['email'])){
  unset($_SESSION['email']);
  }
 
?>

<div id="title">
          <nav class="navbar navbar-expand-lg ">
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="navbarnav" id="navbarNav">
                <h2>Đăng ký</h2><br>
                <h6><a href="index.php">Trang chủ</a> / Đăng ký</h6>
               
              </div>
            </nav>
      </div>

<div id="main">
   
    <div class="maincontent1">
    
  
<span style="font-size: 24px; color:blue; padding: 0px 40px;">Đăng ký thành viên</span>
<style type="text/css">
	table.dkntd tr td {
	    padding: 10px ;
		
		
	}
   form
   {
     padding: 50px 450px ;	
   }
   .nav-item1 {
	/* margin-top: 5px; */
    padding-left:60px;
	
   }

</style>



<form action="" method="POST">
<table class="dkntd" border="5" style="border-collapse: collapse;">
	
	
   <!-- Pills navs -->
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">

<li class="nav-item1" role="presentation">
    <a
      class="nav-link"
      id="tab-login"
      data-mdb-toggle="pill"
      href="index.php?quanly=dk"
      role="tab"
      aria-controls="pills-login"
      aria-selected="false"
      >Đăng ký ứng viên </a
    >
  </li>
 

<li class="nav-item1" role="presentation">
    <a
      class="nav-link active"
      id="tab-register"
      data-mdb-toggle="pill"
      href="index.php?quanly=dkntd"
      role="tab"
      aria-controls="pills-register"
      aria-selected="true"
      >Đăng ký nhà tuyển dụng</a
    >
  </li>


</ul>
	
      <div class="text-center mb-3">
        <h5   style=" margin-bottom: 20px;">Sign in with:</h5>
        <a href="http://fb.com/"><button type="button" class="btn btn-primary btn-floating mx-1">
       <i class="fab fa-facebook-f "></i>
        </button>
		</a>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-google"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-twitter"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-github"></i>
        </button>

		<h5  style=" margin-top: 20px;" > Or:</h5>
</div>

	<tr>
		<td style="font-size:20px; ">Tên</td>
		<td><input type="text" size="50" name="ten" class="form-control"></td>
	</tr>
	<tr>
		<td style="font-size:20px;"><span>Email</span></td>
		<td><input type="text" size="50" name="email" class="form-control"></td>
	</tr>
    <tr>
		<td style="font-size:20px;"><span>Mật khẩu</span></td>
		<td><input type="text" size="50" name="matkhau" class="form-control"></td>
	</tr>
    
	<tr>
		<td><input style="font-size: 20px;" type="submit" name="dkntd" value="Đăng ký" class="btn btn-primary btn-block" href="index.php"></td<>
		<td><a href="index.php?quanly=dangnhap" style="font-size: 20px;"> Đăng nhập nếu có tài khoản </a></td> 
	</tr>
</table>

</form>

<?php
	// session_start();
	if(isset($_POST['dkntd'])) {
		$ten = $_POST['ten'];
		$email = $_POST['email'];
		$matkhau = ($_POST['matkhau']);
		
		$sql_dangky ="INSERT INTO dknhatuyendung(ten,email,matkhau) VALUE('".$ten."','".$email."','".$matkhau."')";
    $result= mysqli_query($mysqli,$sql_dangky) ;

    $matkhau = md5($matkhau);
     if (!$ten || !$matkhau || !$email ) {
			echo "Vui lòng nhập đầy đủ thông tin. <a href='index.php?quanly=dkntd'>Trở lại</a>";
        exit;
		}
   
    else{
			$_SESSION['dkntd'] = $email;
      echo "<h5 style='color:green; right:50px;'>Bạn đã đăng ký thành công <a href='index.php'>Về trang chủ</a></h5>";
		}
	}
?>

    </div>
</div>
