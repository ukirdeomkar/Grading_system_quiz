<?php
session_start();
include('./Connect.php');

if(isset($_POST['delete']))
{   
    $username = $_SESSION['ausername'];
    $password=$_POST['confirm_password'];
    
	$query1 = " SELECT * FROM `admin` WHERE `username` = '$username' ";
    $res1 = mysqli_query($Connect,$query1);
    $data = mysqli_fetch_assoc($res1);
    
    if(strcmp($data['password'],$password)==0)
    {   
        $query = "DELETE FROM `admin` WHERE `username` = '$username'";
        $res1 = mysqli_query($Connect,$query);
        session_destroy();

        echo("<script>alert('User Account Deleted!')</script>");
        echo("<script>window.location = 'Index.php'</script>");
    }
    else
    {   
        echo("<script>alert('Password Wrong! Please try again!')</script>");
        echo("<script>window.location = 'Admin_home.php'</script>");  
    }

}
else
{   
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");    
}

?>