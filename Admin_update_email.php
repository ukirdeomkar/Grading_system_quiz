<?php
session_start();
include('./Connect.php');

    
    
    if(isset($_POST['updateemail']))
    {
        $username = $_SESSION['ausername'];
        $email=$_POST['email'];
        
        $query1="UPDATE `admin` SET  `emailid`='$email' WHERE `username` = '$username'";
        $res1= mysqli_query($Connect,$query1);

        $_SESSION['aemailid']=$email;
        session_destroy();

        echo("<script>alert('Email Id Updated!')</script>");
        echo("<script> window.location = 'Admin_login.php' </script>");
    }   
    else
    {   
        echo("<script>alert('Undefined Action!')</script>");
        echo("<script>window.location = 'Index.php'</script>");    
    }
    
?>