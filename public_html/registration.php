<?php 

if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['mail']))
{
	$username =  $_POST['username'];	
	$password =  $_POST['password'];	
	$mail =  $_POST['mail'];
	// Full Name must contain letters, dashes and spaces only and must start with upper case letter.
	if(preg_match("/^[A-Z][a-zA-Z]+$/", $_POST["username"]) === 0)
	{
	echo "<p class='error-message'>Username must be from letters and must start with upper case letter</p>";
	}
	
	else 
	{
	$connection = new mysqli('localhost', 'root', '', 'tmc');
	$query = "INSERT INTO users(username, password, mail) VALUE(?, md5(?), ?)";
	$statment = $connection->prepare($query);
	$statment->bind_param("sis", $username, $password, $mail);	
	$statment->execute();
	echo "<p class='confirm-message'>Thank you " .$username. " for your registration
		<a href='index.php'>Login here!</a>

	</p>";
	}
	
}
?>

<?php
include('includes/head.php');
?>
<body>
	<div id="wrapper">
		<div id="login">
			<h1>Registration</h1>
			<form action="<?php $_SERVER['PHP_SELF'];  ?>" method="post">
				<legend>
				<label for username class="label-text">Username</label>
				<input type="text" name="username" class="username" /></br>			
				<label for username class="label-text">Password</label>				
				<input type="password" name="password" class="password" /></br>							
				<label for username class="label-text">Mail</label>				
				<input type="text" name="mail" class="mail" /></br>
				<input type="submit" class="submit" name="register" value="register"></br>
				</legend>
			</form>
		</div>
		<!-- #login ends here-->
	</div>
	<!-- #wrapper ends here-->
	
</body>