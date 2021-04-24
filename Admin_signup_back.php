
<?php
 
 include('./Connect.php');
 
 if(isset($_POST['submit']))
  {
     $admin_id = uniqid();
     $username= $_POST['username'];
     $name=$_POST['name'];
     $phone=$_POST['phonenumber'];
     $email=$_POST['emailid'];                                                                                          
     $password=$_POST['password'];
     
     $query1 = " SELECT * FROM `admin` WHERE `username` = '$username' ";
     $res1 = mysqli_query($Connect,$query1);
     $data = mysqli_fetch_assoc($res1);
 
     if(strcmp($data['username'],$username)==0  )
     {
       echo("<script>alert('You have Already Registred!')</script>");
       echo("<script>window.location = 'Admin_signup.php'</script>");
     }
     else if(strcmp($data['emailid'],$email)==0 )
     {
       echo("<script>alert('Email ID is Already Registred!')</script>");
       echo("<script>window.location = 'Student_signup.php'</script>");
     }
     else
     {
       $query1 = "INSERT INTO `admin`(`admin_id`,`username`, `name`, `emailid`, `phonenumber`, `password`) VALUES ('$admin_id','$username','$name','$email','$phone','$password')";
       $res1 = mysqli_query($Connect,$query1);
   
       echo("<script>alert('You have Sucessfully Registred!')</script>");
       echo("<script>window.location = 'Admin_login.php'</script>");
     }
  }
  else
  {
     echo("<script>alert('Undefined action!')</script>");
     echo("<script>window.location = 'Index.php'</script>");
  }
 
 
 
 
 ?>         