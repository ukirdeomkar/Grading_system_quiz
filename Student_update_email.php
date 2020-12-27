<?php
session_start();
include('./Connect.php');

    
    
    if(isset($_POST['updateemail']))
    {
        $username = $_SESSION['username'];
        $email=$_POST['email'];
        
        $query1="UPDATE `user` SET  `email`='$email' WHERE `username` = '$username'";
        $res1= mysqli_query($Connect,$query1);

        $_SESSION['emailid']=$email;
        session_destroy();

        echo("<script>alert('Email Id Updated!')</script>");
        echo("<script> window.location = 'Student_login.php' </script>");
    }   
    else
    {   
        echo("<script>alert('Undefined Action!')</script>");
        echo("<script>window.location = 'Index.php'</script>");    
    }
    
?>