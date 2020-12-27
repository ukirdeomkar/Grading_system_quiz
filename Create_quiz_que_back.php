
<?php
include('./Connect.php');
 if(isset($_POST['submit']))
  {
    $n=@$_GET['n'];
    $eid=@$_GET['eid'];
    $ch=@$_GET['ch'];  
    
    for($i=1;$i<=$n;$i++)
     {
     $qid=uniqid();
     $qns=$_POST['qns'.$i];
    $q3=mysqli_query($Connect,"INSERT INTO questions VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')");
    $oaid=uniqid();
    $obid=uniqid();
    $ocid=uniqid();
    $odid=uniqid();
    $a=$_POST[$i.'1'];
    $b=$_POST[$i.'2'];
    $c=$_POST[$i.'3'];
    $d=$_POST[$i.'4'];
    $e=$_POST[$i.'ans'];
    
    $qa=mysqli_query($Connect,"INSERT INTO options VALUES  ('$qid','$a','$oaid')") or die('Error61');
    $qb=mysqli_query($Connect,"INSERT INTO options VALUES  ('$qid','$b','$obid')") or die('Error62');
    $qc=mysqli_query($Connect,"INSERT INTO options VALUES  ('$qid','$c','$ocid')") or die('Error63');
    $qd=mysqli_query($Connect,"INSERT INTO options VALUES  ('$qid','$d','$odid')") or die('Error64');
    
    switch($e)
    {
    case '1':
    $ansid=$oaid;
    break;
    case '2':
    $ansid=$obid;
    break;
    case '3':
    $ansid=$ocid;
    break;
    case '4':
    $ansid=$odid;
    break;
    default:
    echo 'answer not stored';
    }
    
    
    $qans=mysqli_query($Connect,"INSERT INTO answer VALUES  ('$qid','$ansid')");
  
     }
     echo("<script>alert('Questions Saved Succesfully ')</script>");
     echo("<script>window.location = 'Admin_home.php'</script>");
  
    }  
      
     
     

  
  else
  {
     echo("<script>alert('Error !!! Undefined action!')</script>");
     echo("<script>window.location = 'Index.php'</script>");
  }
 
 
 
 
 ?>         