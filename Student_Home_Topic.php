<?php
	
	$conn=mysqli_connect("localhost","root","","wp_miniproject");
	if(mysqli_connect_error())
	{
		echo "Error in connecting to database: ".mysqli_connect_error();
	}
	$sql="Select * from topic";
	$result = mysqli_query($conn, $sql);
	$json =array();
	$i=0;
	$y=mysqli_num_rows($result);
	if(mysqli_num_rows($result)){
    		while($row=mysqli_fetch_row($result)){
			if(!isset($json[$i])) {
            				$json[$i] = new StdClass();
        			}
			$json[$i]->TopicID=$row[0];
			$json[$i]->Topic_Name=$row[1];
			$json[$i]->Description=$row[2];
			$i=$i+1;
    		}
	}
	header("Content-Type: application/json");
	echo utf8_encode(json_encode($json));
	mysqli_close($conn);
?>