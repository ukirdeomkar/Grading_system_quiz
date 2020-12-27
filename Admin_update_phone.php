<?php
session_start();
include('./Connect.php');
    
if(isset($_POST['updatephone']))
{
    $username = $_SESSION['ausername'];
    $phone=$_POST['phone'];

    $query1="UPDATE `admin` SET `phonenumber`= '$phone' WHERE `username` = '$username'";
    $res1= mysqli_query($Connect,$query1);

    $_SESSION['aphonenumber']=$phone;
    session_destroy();

    echo("<script>alert('Phone Number Updated!')</script>");
    echo("<script> window.location = 'Admin_login.php' </script>");
}
else
{   
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");    
}
?>