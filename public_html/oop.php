<?php

class Login
{
	public function __construct()
	{		
		$this->connection = new mysqli("localhost", "root", "", "tmc");				
		if(isset($_POST['username']) && isset($_POST['password'])){
		$this->username = $_POST['username'];
		$this->password = $_POST['password'];
		
		}	
		}	
	public function connection()
	{
		if($this->connection->connect_errno)
		{
			print"Failed to connected";
		}
		
	}
	
	public function login()
	{
		global $stmt;
		if(isset($this->username) && isset($this->password))
		{	
			$this->stmt = $stmt;
			if($this->stmt = $this->connection->prepare("SELECT id, username, password FROM users WHERE username=? AND password =(md5)? "))
			{
				$this->stmt->bind_param( "si", $id, $username, $password);
				$this->stmt->bind_result($id, $username, $password);
				$this->stmt->execute();
				if($this->stmt->fetch())
				{				
				$_SESSION["id"] = $id;
				$_SESSION["username"] = $this->username;
				header("location:welcome.php");
				print"<p class='welcome'>". $_SESSION['$username']."</p>";
				}
			}
			
			else
			{
				print "<p class='error-message'>Invalid password or username </p>";
			}
		}
	}	
	
	public function logOut()
	{
		
	}
	
}

$newLogin = new Login();
$newLogin->connection();
$newLogin->login();
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