<?php
  $severname = "localhost";
  $username = "root";
  $pass = "";
  $dbname = "web_vieclam";

  $conn = mysqli_connect($severname,$username,$pass,$dbname);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
?>
 