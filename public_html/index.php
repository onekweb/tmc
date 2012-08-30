<?php
session_start();
$connection = new mysqli("localhost", "root", "", "tmc");
if ($connection->connect_errno) 
	{
    echo "Failed to connect to MySQL";
	exit();
	}	
function login($name, $password)
{
	global $connection;
	if($stmt = $connection->prepare("SELECT id, username, password FROM users WHERE username = ? AND password = md5(?)"))
	
	{
		$stmt->bind_param("si", $name, $password);
		$stmt->bind_result($id, $name, $password);
		$stmt->execute();
		if($stmt->fetch())
		{
			session_start();
			$_SESSION["id"] = $id;
			$_SESSION["username"] = $name;
			header("location:welcome.php");
			print"<p class='welcome'>". $_SESSION['$username']."</p>";
		}
	}
	else
		{
			print "<p class='error-message'>Invalid password or username </p>";
		}
				
}

if(isset($_POST['username']) && ($_POST['password']) )
{
	echo login($_POST['username'], $_POST['password']);
}	
    
 /*
session_start();
$connection = new mysqli('localhost', 'root', '', 'tmc');
if(mysqli_errno($connection))
{
	echo "Could not connect";
	exit();
}
function login($name, $password)
{
	global $connection;	
	if($stmt = $connection->prepare("SELECT id, username, password FROM users WHERE username = ? AND password = md5(?)"))
		{
			$stmt->bind_param("si", $name, $password);
			$stmt->bind_result($id, $name, $password);
			$stmt->execute();
			if($stmt->fetch())
			{
				$_SESSION['username'] = $name;			
				$_SESSION['id'] = $id;
				header('location:welcome.php');
				print "<p class='welcome'>Welcome ". $_SESSION['user']."</p>";
			}
			else
			{
				print "<p class='error-message'>Invalid password or username </p>";
			}
			
		}
}
if(isset($_POST['username']) && isset($_POST['password']))
{
	echo login($_POST['username'], $_POST['password']);
}

*/
?>


<?php include('includes/head.php');?>
<body>
	<div id="wrapper">
		<div id="login">
			<h1>Welcome to TMC</h1>
			<form action="<?php $_SERVER['PHP_SELF'];?>" method="post">
				<legend>
				<label for username class="label-text">Username</label>
				<input type="text" name="username" class="username" /></br>			
				<label for username class="label-text">Password</label>				
				<input type="password" name="password" class="password" /></br>
				<input type="submit" class="submit" value="Login" class="submit"/></br>
				<a href="registration.php">Registration</a>
				</legend>
			</form>
		</div>
		<!-- #login ends here-->
	</div>
	<!-- #wrapper ends here-->
	
</body>	
<!-- Body ends here -->
</html>