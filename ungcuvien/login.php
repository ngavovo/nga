
 

<!-- <?php
    session_start();
    include('config/config.php');
    if(isset($_POST['dangnhap'])){
        $email = $_POST['email'];
        $matkhau = $_POST['password'];
        $sql = "select * from dangky where email='$email' and matkhau='$matkhau'limit 1";
        $query=$mysqli->query($sql);
		$nums=$query->num_rows;
        $row = mysqli_query($mysqli, $sql);
         $run=$mysqli->query($sql);
        if($nums>0){
            $_SESSION['dangnhap']=$email;
            header("Location:index.php");
        }else{
            echo '<script>alert("Tài khoản hoặc Mật khẩu không đúng,vui lòng nhập lại."); </script>';
			header("Location:login.php");
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <style>
    .wrapper-login {
        width: 18%;
        margin: auto;
    }
    table.table-login {
        width: 100%;
    }
    table.table-login tr td {
        padding: 5px;
    }
    </style>
</head>
<body>
<div class="wrapper-login"> 
    <form action="" autocomlete="off" method="POST">
    <table border="1" class="table-login" style="text-align:center;">
        <tr>
            <td colspan="2"><h3>Đăng nhập </h3></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="matkhau" name="matkhau"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="dangnhap" value="Đăng nhập"></td>
        </tr>
    </table>
    </form>
</div>   
</body>

</html> -->