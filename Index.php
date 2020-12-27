<html>
<head>
 <meta name="viewport" content="width=device-width , initial-scale=1 ">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<style>

    .name {

        /* google font */
        font-family: 'Pacifico', cursive;
        font-size: 30px;

        }
    .p {

        /* google font */
        font-family: 'Satisfy', cursive;
        font-size: 20px;

        }
    
    </style>
</head>
<body>
<nav class="navbar navbar-light bg-dark">
       <!--<img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80"></img>
--> <h1><a href="Index.php"  style="margin-left:30px; border:0px">QUIZZO</a></h1>
    <div class="d-flex justify-content-end">
            <a href="Student_login.php" class="btn btn-outline-light" style="margin-right:40px; border:0px">STUDENT</a>
            <a href="Admin_login.php" class="btn btn-outline-danger" style="margin-right:0px; border:0px">ADMIN  </a>
        </div>
</nav>
                 
                     
                        <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                              <div class="carousel-item active" data-interval="10000">
                                <img src="IMG/m4.jpg" class="d-block w-100" width=500 alt="...">
                              </div>
                              <div class="carousel-item" data-interval="2000">
                                <img src="IMG/m7.jpg" class="d-block w-100" alt="...">
                              </div>
                              <div class="carousel-item">
                                <img src="IMG/m8.jpg" class="d-block w-100" alt="...">
                              </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                          </div>

<!-- Button trigger modal -->
<button type="button" style="background-color:black;"class="btn btn-block" data-toggle="modal" data-target="#staticBackdrop">
<div style=" background:black;" align="center">
       <h2><a  style="color:white" >About Us </a></h2>
       </div>
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">About Us</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h5> <div class="container my-4">
          <div class="p" >
          <p align="justify"> IN the year 2020 due to the Coronavirus and the boost for Online Education System motivated us for developing a fully functional website (QUIZZO) through which we can create, attempt, get immediate result, ranking, student performance and individual history for an online quiz.</p>
      <br>
        This project was developed by team QUIZZO ,
        <br>
         For Which the Team Members are : 
         </div>
         <br>
         <br><br> 
           

            <!--Grid row-->
            <div class="row text-center">

              <!--Grid column-->
              <div class="col-md-6 mb-4">
              <br>
              <br>
              <br>
               <div class="name">
               <b> <h2 class="my-5  h2"> <a  href="https://github.com/tejas-veer" target="_blank"> Tejas Veer </a></h2> </b>
                </div>
                <br>
                <br>
                <br>
                
                <img class="rounded-circle" alt="Omi" src="https://i.ibb.co/z8sc1GL/PNJ-7424-1.jpg" 
                  data-holder-rendered="true">

              </div>
              <!--Grid column-->
              
              <!--Grid column-->
              <div class="col-md-6 mb-4">

               

                <img class="rounded-circle z-depth-" alt="Teja" src="https://i.ibb.co/PhVpcGN/IMG20200208180821.jpg" 
                  data-holder-rendered="true">
                  <br>
                  <br>
                  <br>
                  <br>
                  <div class="name">
                  <b> <h2 class="my-5 h2" ><a href="https://github.com/ukirdeomkar" target="_blank" >Omkar Ukirde </a> </h2 > </b>
                  </div>
              </div>
              <!--Grid column-->

            </div>
            <!--Grid row-->

            </div>
            <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>
