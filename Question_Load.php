<?php
session_start();
?>
<?php
	$var="not";
	$_SESSION["TestID"]=$var;
	//$username='niketkini';
	$username=$_SESSION["username"];
	$topic=$_GET["Topic"];
	//echo $topic;
	$conn=mysqli_connect("localhost","root","","wp_miniproject");
	if(mysqli_connect_error())
	{
		echo "Error in connecting to database: ".mysqli_connect_error();
	}
	$sql="Select * from student where Username='".$username."'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result)){
		$row=mysqli_fetch_row($result);
		$studentid=$row[0];
		//echo $studentid;
		date_default_timezone_set("Asia/Kolkata");
		$tid=date("Y-m-d H:i:s");
		$sql="INSERT INTO `test`(`TestID`, `StudentID`, `TopicID`, `Marks`) VALUES ('".$tid."','".$studentid."','".$topic."',0)";
		if(mysqli_query($conn,$sql))
        {
				$test=$tid;
				$sql="Select * from question where topicID='".$topic."'";
				$result = mysqli_query($conn, $sql);
				if(mysqli_num_rows($result)){
					$arr=array();
					$count=10;
					$y=0;
					for($i=0;$i<$count;$i++)
					{
						$row=mysqli_fetch_row($result);
						echo $row[0]."<br>";
						$sql="INSERT INTO test_question (`TestID`, `QuestionID`) VALUES ('".$test."','".$row[0]."')";
						//echo $sql."<br>";
						if(mysqli_query($conn,$sql))
							$y=$y+1;
					}
					echo "<br>".$y;
					if($y==10){
							$_SESSION["TestID"]=$test;
							header("Location:Test_Display.php");
					}	
				}
			}
        
	}
	mysqli_close($conn);
?>