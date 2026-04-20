<?php
error_reporting(E_ALL);
ini_set('display_errors',1);
if(session_status()==PHP_SESSION_NONE){
    session_start();
}

$servername="localhost";
$username="root";
$password="";
$database="assignment2";

$conn=new mysqli($servername,$username,$password,$database);

if($conn->connect_error){
    die("Connection failed:".$conn->connect_error);
}
date_default_timezone_set("Asia/Kuala_Lumpur");
?>