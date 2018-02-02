<?php
session_start();
?>

<?php
 $conn=mysqli_connect("localhost","root","","wp_miniproject");
      if(mysqli_connect_error())
       {
        //echo "Error in connecting to the database: ".mysqli_connect_error();
       }
       else        {
        //echo "conn successful";
       }
    
  
    $username=$_POST["username"];
	$name=$_POST["name"];
	$emailid=$_POST["emailid"];
    $passwords=$_POST["passwords"];
    $passconfirm=$_POST["passconfirm"];
	$gender=$_POST["gender"];
    $DOB=$_POST["dob"];
    $college=$_POST["college"];
    $mobilenumber=$_POST["mobilenumber"];
    $university=$_POST["university"]; 
    $status="Accepted";
    $category=$_POST["category"];
	if($category=="Faculty")
		$status="not";

  $sql="INSERT INTO user VALUES ('$username','$name','$emailid','$passwords','$passconfirm','$gender','$DOB','$college','$mobilenumber','$university','$status','$category');";


    if(mysqli_query($conn,$sql))
          {
			  
			
			  $_SESSION['username']=$username;
			$string="not";
			$_SESSION['TestID']=$string;
			if($status=="not")
			{
				 $sql="INSERT INTO `faculty` (`FacultyID`, `Username`, `Faculty_Position`) VALUES (CURRENT_TIMESTAMP,'$username', 'Professor');";
			  mysqli_query($conn,$sql);
	           header("Location: admin.html");

			}
			else
			{
				 $sql="INSERT INTO `student` (`StudentID`, `Username`, `Test_Count`) VALUES (CURRENT_TIMESTAMP,'$username', '0');";
			  mysqli_query($conn,$sql);
           header("Location: Student_Home.php");
         }
		  }
        else
         {
           echo"Existing<br/>";
         }
       

?>
