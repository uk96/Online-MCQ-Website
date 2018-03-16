<?php
session_start();
?>
<html>
<head>
<title>Result</title>
<link rel="stylesheet" type="text/css" href="home7.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

<script>
$(document).ready(function(){
    $("#btn1").click(function(){
        $("#div1").fadeToggle("slow");
           });
});

</script>
<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  .text{
	  font-family:verdana;
  }
  </style>
</head>
<body>
<header>
<img style="width:100%;height:36%;margin-top:0px;border-radius:20px" src="img1.jpg">
<h1 style="text-align: center;color:white;font-family: broadway;z-index:1;margin-top:-90px;font-size:40px">Quick Learn</h1></img>
<hr></hr>
<div style="background-color:#004d99" id="box1">
<div id="box">
<p style="margin-top:0;font-family: Lucida Calligraphy;font-size: 25px;color:#ffbf80;padding:14px"><b>Develop a passion for learning and you will never cease to grow!</b></p>
</div>
</div>
</header>

<div id="wall">
<hr></hr>


<div class="container">
  <a href="Student_Home.php" class="btn btn-info" role="button" style="width:120px;height:40px; margin-left:870px">HOME</a>
	  <a href="Logout.php" class="btn btn-info" role="button" style="width:120px;height:40px; float:right">LOGOUT</a>

  </div>



<div class="w3-container">
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" style="font-size:20px;width:150px;height:70px;margin-left:600px; margin-top:60px">
  View Result</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Your result is:</h2>
      </header>
      <div class="w3-container">
	  <?php
	if($_SESSION["TestID"]=="not")
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
		$score=0;
		echo "<div class='text'>";
		if(mysqli_num_rows($result)){
			for($i=1;$i<=10;$i++)
			{
				$row=mysqli_fetch_row($result);
				$questionID=$row[1];
				$sql1="Select * from question where QuestionID='".$questionID."'";
				$result1 = mysqli_query($conn, $sql1);
				$row1=mysqli_fetch_row($result1);
				$id="mode".$i;
				$u=$i-1;
				$ans=$_GET[$id];
				echo "Question".$i.": ".$row1[1]."<br>Your Answer: ".$ans."<br> Correct Answer: ".$row1[6]."<br><br>";
				if($ans==$row1[6])
					$score=$score+1;
			}
		}
		echo"<h1>Your result is ".$score." out of 10 </h1>";
		echo"</div>";
		$sql="UPDATE `test` SET `Marks`=".$score." WHERE TestID='".$test."'";
		mysqli_query($conn,$sql);
	//$_SESSION["TestID"]="null";
	mysqli_close($conn);
	}
?>
      </div>
      <footer class="w3-container w3-teal">
        <a href="Student_Home.php"><p>Attempt another quiz</p></a>
      </footer>
    </div>
  </div>
</div>
          


</div>

<br>
<p style="position: fixed;right:0;bottom: 0;left: 0;padding:1rem;background-color: #cccccc;text-align: center">Copyright QUICK LEARN.ltd</strong></p>

</div>
</body>
</html>
