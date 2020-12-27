<?php	
session_start();        
include('./Connect.php');

if(isset($_POST['submit']))
{
	$username = $_POST['username'];
	$password = $_POST['password'];
	$query1 = " SELECT * FROM `admin` WHERE `username` = '$username' ";
    $res1 = mysqli_query($Connect,$query1);

	if(mysqli_num_rows($res1)>0)
	{
		$data = mysqli_fetch_assoc($res1);
		if(strcmp($data['password'],$password)==0)
		{   
            $_SESSION['ausername']=$data['username'];
            $_SESSION['aname']  =  $data['name'];
            $_SESSION['aphonenumber']=$data['phonenumber'];
            $_SESSION['aemailid']=$data['emailid'];
            echo("<script>window.location = 'Admin_home.php'</script>");
		}
		else
		{
            echo("<script>alert('Password is Wrong! Please try again!')</script>");
            echo("<script>window.location = 'Admin_login.php'</script>");
		}
	}
	else
	{
		echo("<script>alert('Please Sign Up! Username Not Found!')</script>");
        echo("<script>window.location = 'Admin_login.php'</script>");
	}
}
else
{
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");
}

?>