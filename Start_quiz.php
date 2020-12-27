<html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width , initial-scale=1 ">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark ">
      <!--  <img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80" class="d-inline-block align-top" alt="">
-->     <h1> <a href="Index.php" style="margin-left:30px ">QUIZZO</a></h1>
        <div class="d-flex justify-content-end">
         <!--   <a href="JumpHome.php" class="btn btn-outline-light" style="margin-right:40px ">HOME</a>
-->    <a href="Index.php" class="btn btn-outline-danger">LOG OUT</a>
        </div>
    </nav>
    <nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link disabled" href="#"><h4 style="color:#2487e3">Dashboard</h4></a>
    <a class="nav-item nav-link " id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
    <a class="nav-item nav-link active" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">My Quiz</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ranking</a>
    <a class="nav-item nav-link" id="nav-edit-tab" data-toggle="tab" href="#nav-edit" role="tab" aria-controls="nav-edit" aria-selected="false">Edit Profile</a>
  </div>
</nav>
</body>
        <!--quiz start-->
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
echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b><br /><br />';
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

//quiz end
if($_GET['user']=='admin' )
 {
     echo '<a href="Admin_home.php" class="btn btn-danger btn-block ">End Test</button>';
 }
else if($_GET['user']=='student')
{
    echo '<a href="Student_home.php" class="btn btn-danger btn-block ">End Test</button>';
}
?>
</body>
</html>