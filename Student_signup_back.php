
<?php
 
 include('./Connect.php');
 
 if(isset($_POST['submit']))
  {
     $username= $_POST['username'];
     $name=$_POST['name'];
     $phone=$_POST['phonenumber'];
     $email=$_POST['emailid'];                                                                                          
     $password=$_POST['password'];
     
     $query1 = " SELECT * FROM `user` WHERE `username` = '$username' ";
     $res1 = mysqli_query($Connect,$query1);
     $data = mysqli_fetch_assoc($res1);
 
     if(strcmp($data['username'],$username)==0)
     {
       echo("<script>alert('Username is Already Registred!')</script>");
       echo("<script>window.location = 'Student_signup.php'</script>");
     }
     else if(strcmp($data['email'],$email)==0 )
     {
       echo("<script>alert('Email ID is Already Registred!')</script>");
       echo("<script>window.location = 'Student_signup.php'</script>");
     }
     
     else
     {
       $query1 = "INSERT INTO `user`(`username`, `name`, `email`, `phonenumber`, `password`) VALUES ('$username','$name','$email','$phone','$password')";
       $res1 = mysqli_query($Connect,$query1);
   
       echo("<script>alert('You have Sucessfully Registred!')</script>");
       echo("<script>window.location = 'Student_login.php'</script>");
     }
  }
  else
  {
     echo("<script>alert('Undefined action!')</script>");
     echo("<script>window.location = 'Index.php'</script>");
  }
 
 
 
 
 ?>