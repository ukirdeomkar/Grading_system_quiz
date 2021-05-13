<?php
session_start();
include('./Connect.php');
?>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width , initial-scale=1 ">

<style>
img {
  width: 100%;
  height: auto;
}
</style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
	<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
  <script id="MathJax-script" async
          src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
  </script>
    
    <script type="text/javascript">
	function timeout()
	{
		var hours=Math.floor(timeLeft/3600);
		var minute=Math.floor((timeLeft-(hours*60*60))/60);
		var second=timeLeft%60;
		var hrs=checktime(hours);
		var mint=checktime(minute);
		var sec=checktime(second);
		if(timeLeft<=0)
		{
			clearTimeout(tm);
			document.getElementById("endtest").submit();
		}
		else
		{
			
			document.getElementById("time").innerHTML=hrs+":"+mint+":"+sec;
		}
		timeLeft--;
		
		var tm= setTimeout(function(){timeout()},1000);
	}
	function checktime(msg)
	{
		if(msg<10)
		{
			msg="0"+msg;
		}
		return msg;
	}
	function removeElement(element) {
     element.remove();
	}
	</script>
	<?php 
		function upddateTime()
		{
			session_start();
			include('./Connect.php');
			$username= $_SESSION['username'];
			$eid=$_GET['eid'];
			$timeLeft = 100;

			//$timeLeft = "<script>document.write(timeout)</script>";;
			mysqli_query($Connect,"UPDATE `time` SET `timeleft`='$timeLeft' WHERE `username` = $username && `eid`=$eid");				
			
 	?>
      
</head>

<body  onload="timeout()">

    <nav class="navbar navbar-dark bg-dark ">
      <!--  <img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80" class="d-inline-block align-top" alt="">
-->     <h1> <a href="Index.php" style="margin-left:30px ">QUIZZO</a></h1>
        <div class="d-flex justify-content-end">
         <!--   <a href="JumpHome.php" class="btn btn-outline-light" style="margin-right:40px ">HOME</a>
-->    <a href="Index.php" class="btn btn-outline-danger">LOG OUT</a>
        </div>
    </nav>
    <nav>
  <!-- <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link disabled" href="#"><h4 style="color:#2487e3">Dashboard</h4></a>
    <a class="nav-item nav-link " id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
    <a class="nav-item nav-link active" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">My Quiz</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ranking</a>
    <a class="nav-item nav-link" id="nav-edit-tab" data-toggle="tab" href="#nav-edit" role="tab" aria-controls="nav-edit" aria-selected="false">Edit Profile</a>
  </div> -->
</nav>




<?php

// <-------------------timer------------------------------------->

$username= $_SESSION['username'];
$eid=@$_GET['eid'];
$res1 = mysqli_query($Connect, "SELECT `qtime` FROM create_quiz_details WHERE eid='$eid'"); 
$data =   mysqli_fetch_array($res1);
$qtime =  $data['qtime'] * 60;
mysqli_query($Connect,"INSERT INTO `time`(`username`, `eid`, `timeleft`) VALUES ('$username','$eid','$qtime')");
echo '<h2>

  <script typ e="text/javascript">
  var timeLeft= '.$qtime.';
  
  </script>
  
  <div id="time" style="float:center">timeout</div></h2> ';
?>
        <!----------------------quiz start-------------------------->
<?php

if(@$_GET['q']== 'create_quiz_details' && @$_GET['step']== 2) 
{
include('./Connect.php');
$user=$_GET['user'];
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$qno=$_GET['t'];
$qid='qid';
$q=mysqli_query($Connect,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn'" );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['questions'];
$qid=$row['qid']; 
$img=$row['qimage'];  
echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b><br /><br />

<div class="alb">
<img src="qimage/'.$img.'" onerror="removeElement(this);" >
</div>
';

}
$q=mysqli_query($Connect,"SELECT * FROM options WHERE qid='$qid' " );
echo '<form action="Start_quiz_back.php?user='.$user.'&eid='.$eid.'&n='.$sn.'&t='.$qno.'&qid='.$qid.'" method="POST"  class="form-horizontal">
<br />';

while($row=mysqli_fetch_array($q) )
{
$option=$row['option'];
$optionid=$row['optionid'];
echo'<input type="radio" name="ans" value="'.$optionid.'">'.$option.'<br /><br />';
}
echo'<br /><button name="submit" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
// header("location:Start_quiz_back.php?q=reate_quiz_details&step=2&eid=$eid&n=$total");
}


// quiz end
// if($_GET['user']=='admin' )
//  {
//      echo '<a type="submit" id="endtest" href="Admin_home.php" class="btn btn-danger btn-block ">End Test</button>';
//  }
// else if($_GET['user']=='student')
// {
//     echo '<a type="submit" id="endtest" href="Student_home.php" class="btn btn-danger btn-block ">End Test</button>';
// }
?>
<form method="post" id="endtest" name="endtest" action="Start_quiz_back.php?user='.$user.'&eid='.$eid.'&n='.$sn.'&t='.$qno.'&qid='.$qid.'">
<!-- <button type="submit" id="endtest" class="btn btn-danger btn-block ">End Test</button> -->
</form>
</body>
</html>