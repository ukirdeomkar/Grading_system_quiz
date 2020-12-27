 <?php
 session_start();
include('./Connect.php');

if ($_GET['q'] == 'del') {
	$eid = $_GET['eid'];
	mysqli_query($Connect,"DELETE FROM `create_quiz_details` WHERE `eid` = '$eid' ") or die('Error1'); 
	 $result = mysqli_query($Connect,"SELECT * FROM questions WHERE eid='$eid' ") or die('Error2');
	 while($row = mysqli_fetch_array($result)) 
{
	$qid = $row['qid'];
    $r1 = mysqli_query($Connect,"DELETE FROM options WHERE qid='$qid'") or die('Error3');
    $r2 = mysqli_query($Connect,"DELETE FROM answer WHERE qid='$qid' ") or die('Error4');
}

	$r3 = mysqli_query($Connect,"DELETE FROM questions WHERE eid='$eid' ") or die('Error5');
	$r4 = mysqli_query($Connect,"DELETE FROM history WHERE eid='$eid' ") or die('Error6');

	echo("<script>function myFunction()
	{
	
	
	</script>");
	echo("<script>window.location = 'Admin_home.php'</script>");
 } ?>



