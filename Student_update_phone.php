<?php
session_start();
include('./Connect.php');
    
if(isset($_POST['updatephone']))
{
    $username = $_SESSION['username'];
    $phone=$_POST['phone'];

    $query1="UPDATE `user` SET `phonenumber`= '$phone' WHERE `username` = '$username'";
    $res1= mysqli_query($Connect,$query1);

    $_SESSION['phonenumber']=$phone;
    session_destroy();

    echo("<script>alert('Phone Number Updated!')</script>");
    echo("<script> window.location = 'Student_login.php' </script>");
}
else
{   
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");    
}
?>