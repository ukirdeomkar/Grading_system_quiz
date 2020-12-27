<?php
session_start();
include('./Connect.php');


// Admin Deleting the account of a student

if ($_GET['q']=='delUser')
 {   
	$username=$_GET['username'];
	$q=mysqli_query($Connect,"DELETE FROM `user` WHERE `username` = '$username' ") or die('Error'); 
	echo("<script>alert('Student`s Account has been Deleted!')</script>");
	echo("<script>window.location = 'Admin_home.php'</script>");
 }
 
 

// Student Deleting their own Account

else if(isset($_POST['delete']))
{   
    $username = $_SESSION['username'];
    $password=$_POST['confirm_password'];
    
	$query1 = " SELECT * FROM `user` WHERE `username` = '$username' ";
    $res1 = mysqli_query($Connect,$query1) or die('Error');
    $data = mysqli_fetch_assoc($res1);
    
    if(strcmp($data['password'],$password)==0)
    {   
        $query = "DELETE FROM `user` WHERE `username` = '$username'";
        $res1 = mysqli_query($Connect,$query);
        session_destroy();

        echo("<script>alert('User Account Deleted!')</script>");
        echo("<script>window.location = 'Index.php'</script>");
    }
    else
    {   
        echo("<script>alert('Password Wrong! Please try again!')</script>");
        echo("<script>window.location = 'Student_home.php'</script>");  
    }

}




?>



