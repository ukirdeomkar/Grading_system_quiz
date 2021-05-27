<?php
session_start();
include('./Connect.php');
?>

<?php
$userType = $_GET['user'];
$qtitle = $_GET['qtitle'];
$eid = $_GET['eid'];
$qno = $_GET['t'];

if($userType== 'student')
{  
    $username= $_SESSION['username'];
    $eid=@$_GET['eid'];
    $res1 = mysqli_query($Connect, "SELECT `qtime`,`qtitle` FROM create_quiz_details WHERE eid='$eid'"); 
    $data =   mysqli_fetch_array($res1);
    $qtime =  $data['qtime'] * 60;
    $qtitle = $data['qtitle'];
    $futureTime = time()+$qtime;
    mysqli_query($Connect,"INSERT INTO `time`(`username`, `eid`, `qtitle`, `date`, `hour`, `min`, `sec`, `timeleft`) VALUES ('$username','$eid','$qtitle',NOW(),'0','0','0','$futureTime')");
    
    echo("<script>window.location = 'Start_quiz.php?q=start_quiz&user=$userType&status=resume&step=2&qtitle=$qtitle&eid=$eid&n=1&t=$qno '</script>");

}
 ?>