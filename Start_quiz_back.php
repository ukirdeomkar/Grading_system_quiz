<?php
 include('./Connect.php');
 session_start();
 $status = $_GET['status'];
 echo $status;

if(isset($_POST['submit']) or $status='expired')
{
    $user=$_GET['user'];
    $eid=@$_GET['eid'];
    $sn=@$_GET['n'];    
    $qno=@$_GET['t'];
    $ans=$_POST['ans'];
    echo $ans;
    $qid=@$_GET['qid'];
    $emailid=$_SESSION['emailid'];
    $username = $_SESSION['username'];

$res1 = mysqli_query($Connect," SELECT * FROM `user` WHERE `username` = '$username' ");
while($row=mysqli_fetch_array($res1) )
{
$username=$_SESSION['username'];
}

$q=mysqli_query($Connect,"SELECT * FROM answer WHERE qid='$qid' " );
while($row=mysqli_fetch_array($q) )
{
$ansid=$row['ansid'];
}
}

if($ans == $ansid)
{ 
   
$q=mysqli_query($Connect,"SELECT * FROM create_quiz_details WHERE eid='$eid' " );
while($row=mysqli_fetch_array($q) )
{
$qright=$row['qright'];
}
if($sn == 1)
{
    
$q=mysqli_query($Connect,"INSERT INTO history VALUES('$emailid','$eid' ,'0','0','0','0',NOW())")or die('Error');
}
$q=mysqli_query($Connect,"SELECT * FROM history WHERE eid='$eid' AND email='$emailid' ")or die('Error115');

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$r=$row['qright'];
}
$r++;
$s=$s+$qright;
$q=mysqli_query($Connect,"UPDATE `history` SET `score`=$s,`level`=$sn,`qright`=$r, date= NOW()  WHERE  email = '$emailid' AND eid = '$eid'")or die('Error124');
} 


else
{  
$q=mysqli_query($Connect,"SELECT * FROM create_quiz_details WHERE eid='$eid' " )or die('Error129');
while($row=mysqli_fetch_array($q) )
{
$qwrong=$row['qwrong'];
}
if($sn == 1)
{

$q=mysqli_query($Connect,"INSERT INTO history VALUES('$emailid','$eid' ,'0','0','0','0',NOW() )")or die('Error137');
}
$q=mysqli_query($Connect,"SELECT * FROM history WHERE eid='$eid' AND email='$emailid' " )or die('Error139');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['qwrong'];
}
$w++;
$s=$s-$qwrong;
$q=mysqli_query($Connect,"UPDATE `history` SET `score`=$s,`level`=$sn,`qwrong`=$w, date=NOW() WHERE  email = '$emailid' AND eid = '$eid'")or die('Error147');
}

if($sn!= $qno  AND $status!='expired') 
{   
    echo("<script>alert('Questions Saved Succesfully ')</script>");

$sn++;
header("location:Start_quiz.php?q=start_quiz&user=$user&step=2&eid=$eid&n=$sn&t=$qno")or die('Error152');
}


//Edit line 87 else if statement to not include admin in the ranking system
else if( $_GET['user']=='student' AND $status=='expired' )
{    

$q=mysqli_query($Connect,"SELECT score FROM history WHERE eid='$eid' AND email='$emailid'" )or die('Error156');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($Connect,"SELECT * FROM ranking WHERE eid='$eid' AND email='$emailid'" )or die('Error161');
$rowcount=mysqli_num_rows($q);
if($rowcount == 0)
{
$q=mysqli_query($Connect,"INSERT INTO ranking VALUES('$emailid','$eid','$s',NOW())")or die('Error165');
}

else
{
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$s+$sun;
$q=mysqli_query($Connect,"UPDATE `ranking` SET `score`=$sun ,time=NOW() WHERE email= '$emailid'")or die('Error174');
}

header("location:Result.php?q=result&user=$user&eid=$eid");
}

else
{
header("location:Result.php?q=result&user=$user&eid=$eid");
}

?> 