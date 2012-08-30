<?php
session_start();
	if(isset($_SESSION['username']))
	{
		print "<p class='welcome'>Welcome ". $_SESSION['username']."</p>";
	}
	else 
	{
		header('location:index.php');
	}	
?>
<a href="logout.php">Logout</a>
