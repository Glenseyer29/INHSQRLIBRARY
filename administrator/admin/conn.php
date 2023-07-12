<?php


session_start(); //to dispaly message
$server ="localhost";
$username ="root";
$password ="";
$dbname ="dbs";

$conn = new mysqli($server,$username,$password,$dbname);

 if($conn->connect_error){
   die("Connection failed" .$conn ->connect_error);
 }

?>
