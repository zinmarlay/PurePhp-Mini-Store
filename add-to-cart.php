<?php 
	session_start();
	$id = $_GET['id'];
	$_SESSION['cart'][$id]++;
	// print_r($_SESSION['cart'])
	header("location:index.php");
?>