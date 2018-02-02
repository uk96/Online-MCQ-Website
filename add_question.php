<?php
 $conn=mysqli_connect("localhost","root","","wp_miniproject");
      if(mysqli_connect_error())
       {
        //echo "Error in connecting to the database: ".mysqli_connect_error();
       }
       else        {
        //echo "conn successful";
       }
    
  
    $question=$_POST["question"];
	$opt1=$_POST["option1"];
	$opt2=$_POST["option2"];
    $opt3=$_POST["option3"];
    $opt4=$_POST["option4"];
	$correct_ans=$_POST["correct_ans"];
	$topic=$_POST["topic"];
	$sqli="Select * from topic where Topic_Name='$topic'";
	$result = mysqli_query($conn, $sqli);
	$row = mysqli_fetch_assoc($result);
	$topicid=$row['TopicID'];
    $sql="INSERT INTO question(Question,Option1,Option2,Option3,Option4,Correct_Answer,TopicID) VALUES ('$question','$opt1','$opt2','$opt3','$opt4','$correct_ans','$topicid');";


    if(mysqli_query($conn,$sql))
          {
           echo "Added Sucessfully";
		   header("Location: admin.html");
         }
        else
         {
           echo"Existing<br/>";
		   header("Location: admin.html");
         }
       

?>
