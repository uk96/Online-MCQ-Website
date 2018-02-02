<?php
session_start();
?>
<?php
//list($hour,$min,$sec) = explode(':', $dbSessionDuration);
//$dbSessionDurationTime = mktime(0,0,0,$hour,$min,$sec);
?>
<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>


<html>
<body>
<style>
body{
    background-image: url("wall.jpg");
    background-repeat:no-repeat;
    background-size: cover;
    background-attachment:fixed;

}
.btn button {
    background-color: black;
    color: white;
    padding: 10px 15px;
    margin: 6px 0px;
    border: none;
    cursor: pointer;
    width: 150px;
}
.btn button:hover {
    opacity: 0.8;
}
</style>
<form action="Check_Result.php" method="get">
<?php
	if($_SESSION=="null")
	{
			echo"There is no test";
	}
	else
	{
	$test=$_SESSION["TestID"];
	$conn=mysqli_connect("localhost","root","","wp_miniproject");
	if(mysqli_connect_error())
	{
		echo "Error in connecting to database: ".mysqli_connect_error();
	}
	$sql="Select * from test_question where TestID='".$test."'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result)){
		for($i=1;$i<=10;$i++)
		{
				$row=mysqli_fetch_row($result);
				$questionID=$row[1];
				$sql1="Select * from question where QuestionID='".$questionID."'";
				$result1 = mysqli_query($conn, $sql1);
				$row1=mysqli_fetch_row($result1);
				echo"<label>".$i." ".$row1[1]."</label><br>";
				echo"<input type='radio' name='mode".$i."' value='".$row1[2]."'>".$row1[2]."<br>";
				echo"<input type='radio' name='mode".$i."' value='".$row1[3]."'>".$row1[3]."<br>";
				echo"<input type='radio' name='mode".$i."' value='".$row1[4]."'>".$row1[4]."<br>";
				echo"<input type='radio' name='mode".$i."' value='".$row1[5]."'>".$row1[5]."<br>";
				
		}
	}
	mysqli_close($conn);
	}
?>
<br>
<div class="btn">
<input type="submit" value="Submit">
</div>
</form>
<p style="position: static;right:0;bottom: 0;left: 0;padding:1rem;background-color: #cccccc;text-align: center">Copyright QUICK LEARN.ltd</strong></p>

</body>
</html>