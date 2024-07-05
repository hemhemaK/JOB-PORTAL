<?php
session_start();
$conn=mysqli_connect('localhost','root');

mysqli_select_db($conn, 'project');
$captcha=$_POST['captcha'];
if($_SESSION['CODE']==$captcha){
	echo "Successfully Submitted";
}else{
	echo "Please enter valid captcha code";
}
?>

