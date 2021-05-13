<?php
session_start();
?>

<!----Quiz Details ---->
<html>
  <head>  
<meta name="viewport" content="width=device-width , initial-scale=1 ">
    <title>Quiz Details </title>
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
  <script id="MathJax-script" async
          src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
  </script>
    
     </head>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
       <h1><a href="Index.php" style="margin-left:30px; border:0px;">QUIZZO</a></h1>
        <div class="d-flex justify-content-end">
            <a href="Admin_home.php" class="btn btn-outline-primary" style="margin-right:40px; border:0px;">HOME</a>
            <a href="Admin_logout.php" class="btn btn-outline-danger" style="margin-right:40px; border:0px;">LOG OUT </a>
        </div>
</nav>

       <!----Quiz Form--->
        <div class="row">

        <div class="col-3">
            
        </div>

        <div class="col-6">

            <div class="card text-center" style="margin-top:40px;">

                <div class="card-header">
                   <h2> Enter Questions 
                </div>
                <br>
           
            <?php
                include('./Connect.php');
                $qtitle=$_SESSION['qtitle'];
                $qno=$_SESSION['qno'];
                $query1 = " SELECT * FROM `create_quiz_details` WHERE `qtitle` = '$qtitle' , `qno` = '$qno' ";
                $res1 = mysqli_query($Connect,$query1);
                    for($i=1; $i<=$qno; $i++)
                    {   
                      echo'
                        <div class="card-body">                         
                     
                      <div class="card-header">  Question No :  '.$i.'   </div>

                    <form method="POST" enctype="multipart/form-data" action="Create_quiz_que_back.php?n='.@$_GET['n'].'&eid='.@$_GET['eid'].'&ch=4 ">
                        <textarea class="form-control" placeholder="Enter the Question" name="qns'.$i.'" rows="4" cols="50"></textarea>
                        <br>
                        <label> Add an Image File </label>
                        <br> 
                        <input type="file" name="qimage'.$i.'" />
                        <br>
                        <br>';
                        
                        echo '
                        <input type="text" class="form-control" placeholder="Option 1" name="'.$i.'1" required>
                        <br>
                       <input type="text" class="form-control" placeholder="Option 2" name="'.$i.'2" required>
                          <br>
                        <input type="text" class="form-control" placeholder="Option 3" name="'.$i.'3" required>
                        <br>
                        <input type="text" class="form-control" placeholder="Option 4" name="'.$i.'4" required>
                        <br>
                        <select class="form-control" id="exampleFormControlSelect1" name="'.$i.'ans">
                               <option>Select correct option</option>
                                <option>1</option>
                               <option>2</option>
                               <option>3</option>
                                <option>4</option>
                        </select>
                        
                        <br>
                        </div> 
                        ';
                    }
                  
              ?>  
                 <button type="submit" class="btn btn-primary " name="submit" >SUBMIT</button>        
                 </form>
            </div>
            
        <div class="col-3">
        </div>


</div>

</body>
</html>
