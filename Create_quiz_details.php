<!----Quiz Details ---->
<html>
    <meta name="viewport" content="width=device-width , initial-scale=1 ">
    <title>Quiz Details </title>
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
     </head>
<head>
<body>
<nav class="navbar navbar-dark bg-dark">
       <h1><a href="Index.php" style="margin-left:45px; border:0px;">QUIZZO</a></h1>
        <div class="d-flex justify-content-end">
            <a href="Admin_home.php" class="btn btn-outline-primary" style="margin-right:40px; border:0px;">HOME</a>
            <a href="Admin_logout.php" class="btn btn-outline-danger" style="margin-right:40px; border:0px;">LOG OUT </a>
        </div>
</nav>
       <!----Quiz Details Start--->
        <div class="row">

        <div class="col-3">
            
        </div>

        <div class="col-6">

            <div class="card text-center" style="margin-top:40px;">

                <div class="card-header">
                   <h2> Enter Quiz Details
                </div>
                <br>
            

                <div class="card-body">
                    <form method="POST" action="Create_quiz_details_back.php">
                        <input type="text" class="form-control" placeholder="Enter Quiz Title" name="qtitle" required>
                        <br>
                        <input type="Number" class="form-control" placeholder="Enter Total No of Questions" name="qno" required>
                        <br>
                       <input type="Number" class="form-control" placeholder="Enter Marks On Right Answer" name="qright" required>
                          <br>
                        <input type="Number" class="form-control" placeholder="Enter Marks on Wrong ANSWER (WITHOUT SIGN)" name="qwrong" required>
                        <br>
                        <input type="Number" class="form-control" placeholder="Enter Time Limit (In Minutes)" name="qtime" required>
                        <br>
                          <textarea class="form-control" placeholder="Enter Description of the quiz" name="qdescription" rows="4" cols="50" required></textarea>
                         <br>
                        <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Submit</button>
                    </form>
                </div>

            </div>

        </div>

        <div class="col-2">
        </div>


</div>

</body>
</head>
</html>

