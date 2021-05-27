
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
<?php
 include('./Connect.php');
 session_start(); 
 $emailid=@$_SESSION['emailid'];

//result display

if(@$_GET['q']== 'result' && @$_GET['eid']) 
{
$eid=@$_GET['eid'];
$q=mysqli_query($Connect,"SELECT * FROM history WHERE eid='$eid' AND email='$emailid' " )or die('Error157');
echo  '<div class="panel">
<center><br><h1 class="title" style="color:#660033">Result</h1><center><br><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['qwrong'];
$r=$row['qright'];
$qa=$row['level'];
$qNA=$row['qNA'];

}
echo '<tr style="color:#00b7eb"><td>Total Questions</td><td>'.$qa.'</td></tr>
<tr style="color:#00ff00"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
<tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
<tr style="color:#708090"><td>Not Attempted&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$qNA.'</td></tr>
<tr style="color:#990000"><td>Total Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$s.'</td></tr>
';

// $q=mysqli_query($Connect,"SELECT * FROM ranking  WHERE  email='$emailid' " )or die('Error157');
//  while($row=mysqli_fetch_array($q) )
//  {

//echo '<tr style="color:#990000"><td>Overall Score&nbsp;<span class="glyphicon glyphicon-stats" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
// }
 echo '</table></div>';
}


if($_GET['user']=='admin' )
 {
     echo '<center><a href="Admin_home.php" class="btn btn-primary btn-lg ">OK</button>';
 }
else if($_GET['user']=='student')
{
    echo '<center><a href="Student_home.php" class="btn btn-primary btn-lg ">OK</button>';
}
?>