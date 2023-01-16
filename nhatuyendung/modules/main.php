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

           
            if($tam=='qlbvvl'&& $query=='them')
            {
                include("modules/qlbvvl/them.php"); 
                include("modules/qlbvvl/lietke.php");    
            }
            elseif($tam=='qlbvvl'&& $query=='sua')
            {
                include("modules/qlbvvl/sua.php");    
            }
            
            else
            {
            include("modules/dashboard.php");
            }
   
         
?>
  </div>