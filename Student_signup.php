<html>
<head>
    <title>Sign Up</title>

     <!-- bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">

    <style>

    
    
    .card-header {

        /* google font */
        font-family: 'Roboto Slab', serif;
        font-size: 30px;

        /* sign up column gradient */
       /* background: #e1eec3;  /*    /* fallback for old browsers */
       /* background: -webkit-linear-gradient(to right, #f05053, #e1eec3); /*     /* Chrome 10-25, Safari 5.1-6 */
       /* background: linear-gradient(to right, #f05053, #e1eec3); /*         /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

    }
    body {
    overflow: hidden; /* Hide scrollbars */
    }
    </style>

</head>

<body>

<nav class="navbar navbar-light bg-dark">
       <!--<img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80"></img>
--> <h1><a href="Index.php"  style="margin-left:30px; border:0px">QUIZZO</a></h1>
    <div class="d-flex justify-content-end">
            <a href="Student_login.php" class="btn btn-outline-light" style="margin-right:40px; border:0px">STUDENT LOGIN</a>
            <a href="Admin_login.php" class="btn btn-outline-danger" style="margin-right:0px; border:0px">ADMIN LOGIN </a>
        </div>
</nav>

<div class="row">

    <div class="col-1">
    <!--blank column-->
    </div>

    <div class="col-6">

        <div class="card text-center" style="margin-top:40px;" >
            <div class="card-header">
             BECOME A PART !
            </div>

                <div class="card-body">
                    
                    <form method="POST" action="Student_signup_back.php">
                        <input type="text" class="form-control" placeholder="Enter Username" name="username" required>
                        <br> 
                        <input type="text" class="form-control" placeholder="Enter Your Name" name="name" required>
                        <br>
                        <input type="email" class="form-control" placeholder="Enter Email id" name="emailid" required>
                        <br>
                        <input type="tel" class="form-control" placeholder="Enter Phone Number" name="phonenumber" required>
                        <br>
                        <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                        <br>
                        <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block">Sign Up</button>
                    </form>

                </div>

                <div class="card-footer text-muted">
                    <a href="Student_login.php" style="text-decoration: none;"> Already have an account?Log in </a>
                </div>

        </div>
    </div>

    <div class="col-5">
        <img src="IMG/Student_signup.jpg" style="margin-right:20px; margin-top:80;" width="500">
   </div>


</div>


</body>


</html>