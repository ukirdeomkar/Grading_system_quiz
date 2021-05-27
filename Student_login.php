<html>
<head>
    <title>Log In</title>

     <!-- bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">

    <style>

    .card-header {

        /* google font */
        font-family: 'Roboto Slab', serif;
        font-size: 30px;

        }
        body {
        overflow: hidden; /* Hide scrollbars */
        }   
    </style>

</head>

<body>
    <nav class="navbar navbar-light bg-dark">
      <!--  <img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80" class="d-inline-block align-top" alt="">
      --> <h1><a href="Index.php" style="margin-left:30px; border:0px;">QUIZZO </a></h1>  
        <div class="d-flex justify-content-end">
           <!-- <a href="Index.php" class="btn btn-outline-primary" style="margin-right:40px; border:0px;">HOME</a>
    -->        <a href="Student_signup.php" class="btn btn-outline-light" style="margin-right:40px; border:0px;">STUDENT SIGN UP </a>
                <a href="Admin_login.php"class="btn btn-outline-danger" style="border:0px;">ADMIN LOGIN</a>

        </div>
</nav>

<div  class="row">
        <div class="col-5">
            <img src="IMG\Student_login.png" style="margin-left:70px; margin-top:60px;" width="400">
        </div>

        <div class="col-6">

            <div class="card text-center" style="margin-top:70px;">

                <div class="card-header">
                    STUDENT LOG IN
                </div>
                <br>
            

                <div class="card-body">
                    <form method="POST" action="Student_login_back.php">
                        <input type="text" class="form-control" placeholder="Username" name="username" required>
                        <br>
                        <input type="password" class="form-control" placeholder="Password" name="password" required>
                        <br>
                        <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Log In</button>
                    </form>
                </div>

                <div class="card-footer text-muted">
                    <a href="Student_signup.php"> New Student?Sign Up </a>           
                </div>
            <!--    <div class="card-footer text-muted">
                    
                    <a href="SignUp.php" type="submit" class="btn btn-danger btn-lg btn-block "> Admin Login </a>           
                </div>   -->
            </div>

        </div>

        <div class="col-2">
        </div>


</div>

</body>

</html>