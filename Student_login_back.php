<?php	
session_start();        
include('./Connect.php');

if(isset($_POST['submit']))
{
	$username = $_POST['username'];
	$password = $_POST['password'];
	$query1 = " SELECT * FROM `user` WHERE `username` = '$username' ";
    $res1 = mysqli_query($Connect,$query1);

	if(mysqli_num_rows($res1)>0)
	{
		$data = mysqli_fetch_assoc($res1);
		if(strcmp($data['password'],$password)==0)
		{   
            $_SESSION['username']=$data['username'];
            $_SESSION['name']  =  $data['name'];
            $_SESSION['phonenumber']=$data['phonenumber'];
            $_SESSION['emailid']=$data['email'];
            echo("<script>window.location = 'Student_home.php'</script>");
		}
		else
		{
            echo("<script>alert('Password is Wrong! Please try again!')</script>");
            echo("<script>window.location = 'Student_login.php'</script>");
		}
	}
	else
	{
		echo("<script>alert('Please Sign Up! Username Not Found!')</script>");
        echo("<script>window.location = 'Student_login.php'</script>");
	}
}
else
{
    echo("<script>alert('Undefined Action!')</script>");
    echo("<script>window.location = 'Index.php'</script>");
}

?>