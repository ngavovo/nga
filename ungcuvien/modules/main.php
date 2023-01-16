<div class="clear"></div>
<div clas="main">
<?php
       
       if(isset($_GET['action']) && $_GET['query'] )
        {
            $tam=$_GET['action'];
            $query=$_GET['query'];
        }
            else
            {
                $tam= ''; 
                $query=''; 
            }

           
            if($tam=='qlbvuv'&& $query=='them')
            {
                include("modules/qlbvuv/them.php"); 
                include("modules/qlbvuv/lietke.php");    
            }
            elseif($tam=='qlbvuv'&& $query=='sua')
            {
                include("modules/qlbvuv/sua.php");    
            }
            
            else
            {
            include("modules/dashboard.php");
            }
   
         
?>
  </div>