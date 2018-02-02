<?php
session_start();
?>
<html>
<head>
<?php

	$username= $_GET["username"];
	$passwords= $_GET["passwords"];
	
	$conn=mysqli_connect("localhost","root","","wp_miniproject");
	if(mysqli_connect_error())
	{
		echo "Error in connecting to database: ".mysqli_connect_error();
	}
	$sql="Select * from user where Username='$username'";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	//echo $sql;
	//echo $password;
	//$u_id=$row['user_id'];
	//$_SESSION['user_id']=$u_id;
	
    //echo mysqli_num_rows($result);
	if(mysqli_num_rows($result)>0)
	{
		
		if($row['Username']==$username && $row['Password']==$passwords)
		{ 
			$_SESSION['username']=$username;
			$string="not";
			$_SESSION['TestID']=$string;
			//echo $row[];
			if($row['Status']=="Accepted")
				header("Location: Student_Home.php");
			else	
				header("Location:admin.html");
		}

		/*else if($row['password']==$password && $row['role']=="user")
		{
			
			header("Location: userlogin.php");
		}

*/
		/*else ($row['role']!=$role)
		{
			header("Location: admin.html")
		}*/
		else 
		{
			header("Location:home.html");
			//echo ("Invalid email id or password");
		}
	}
	else
	{
		header("Location:home.html");
		//echo ("Invalid email id or password");

		//header('Location:login.php?invalid=true');
	}

?>
</head>
</html>
