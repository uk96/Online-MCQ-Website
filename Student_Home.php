<!DOCTYPE>
<html>
<head>
<title>Topics</title>
<link rel="stylesheet" type="text/css" href="home7.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style type="text/css">
  	.btn button {
    background-color: black;
    color: white;
    padding: 10px 15px;
    border: none;
    cursor: pointer;
    width: 130px;
    border-radius: 5px;

}
.btn button:hover {
    opacity: 0.8;
}

  </style>
</head>
<?php
session_start();
?>
 <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>
<script type="text/javascript">
	var xmlhttp = new XMLHttpRequest();
	var source = "Student_Home_Topic.php";
	xmlhttp.onreadystatechange = function() {
		if(xmlhttp.readyState==4) {
			var arr =JSON.parse(this.responseText);
			var out ='';
			var i;
			for(i = 0; i <arr.length; i++) {
				
				out+='<div id="topic'+(i+1)+'">';
				out+='<h3 style="padding:5px;font-family: bookman old style;color:#4d0000;">'+arr[i].Topic_Name+'</h3>';
				
				out+='<p style="padding:5px;font-family:book antiqua;font-size:15px">'+arr[i].Description+'</p>';
				out+='<form method="get" action="Question_Load.php">';
				out+='<input type="hidden" name="Topic" value="'+arr[i].TopicID+'">';
				out+='<button style="margin-left:500px;margin-top: -80px" type="submit">Start Quiz</button>';
			out+='<br>';
    			out+='</form>';
			}	
			document.getElementById("main").innerHTML = out;
    		}
	}
	xmlhttp.open("GET", source, true);
	xmlhttp.send();
</script>
<body>

<header>
<img style="width:100%;height:36%;margin-top:0px;border-radius:20px;margin-top: -8px" src="img1.jpg">
<h1 style="text-align: center;color:white;font-family: broadway;z-index:1;margin-top:-90px;font-size:40px">Quick Learn</h1></img>

<hr></hr>
<div style="background-color:#004d99" id="box1">
<div id="box">
<p style="margin-top:0;font-family: Lucida Calligraphy;font-size: 25px;color:#ffbf80;padding:14px"><b>Develop a passion for learning and you will never cease to grow!</b></p>
</div>
</div>
</header>
<hr></hr>
<?php echo"<h2>Welcome ".$_SESSION["username"]."!</h2>"?>
	  <a href="Logout.php" class="btn btn-info" role="button" style="width:120px;height:40px;margin-right:50px; float:right">LOGOUT</a>


<div id="topicbox">

<h2 style="padding:5px;color:#4d0000;font-family:bookman old style"><u>Select a topic to test yourself...</u></h2>
</div>

<div class="btn" id="main">

</div>

<br>
  <div class="container">
<a href="#" class="btn btn-info" role="button" style="width:120px;height:40px;margin-top:-520px;margin-right:30px;float:right">LOGOUT</a>
</div>


</body>
</html>

