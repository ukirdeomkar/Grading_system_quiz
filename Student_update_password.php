<?php
session_start();
include('./Connect.php');

if(isset($_POST['updatepassword']))
{   
    $username = $_SESSION['username'];
    $password=$_POST['confirm_password'];
    $newpassword=$_POST['new_password'];
    
	$query1 = " SELECT * FROM `user` WHERE `username` = '$username' ";
    $res1 = mysqli_query($Connect,$query1);
    $data = mysqli_fetch_assoc($res1);
    
    if(strcmp($data['password'],$password)==0)
    {   
        
        $query1="UPDATE `user` SET `password`= '$newpassword' WHERE `username` = '$username'";
        $res1= mysqli_query($Connect,$query1);
        session_destroy();

        echo("<script>alert('Password is Updated SuccesFully!')</script>");
        echo("<script>window.location = 'Student_login.php'</script>");
    }
    else
    {   
        echo("<script>alert('Please check the password again')</script>");
        echo("<script>window.location = 'Student_home.php'</script>");  
    }

}
else
{   
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");    
}

?>
