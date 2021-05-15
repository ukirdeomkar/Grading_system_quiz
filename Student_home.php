<?php
session_start();
include('./Connect.php');
?>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width , initial-scale=1 ">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <script>
$(document).ready(function(){
    $('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
        localStorage.setItem('activeTab', $(e.target).attr('href'));
    });
    var activeTab = localStorage.getItem('activeTab');
    if(activeTab){
        $('#nav-tab a[href="' + activeTab + '"]').tab('show');
    }
});
</script>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark ">
      <!--  <img src="https://cdn11.bigcommerce.com/s-fkkokiv406/images/stencil/800x600/uploaded_images/quizzo.jpg?t=1525706940" style="margin-left:10px" width="200" height="80" class="d-inline-block align-top" alt="">
-->     <h1> <a href="Index.php" style="margin-left:30px ">QUIZZO</a></h1>
        <div class="d-flex justify-content-end">
         <!--   <a href="JumpHome.php" class="btn btn-outline-light" style="margin-right:40px ">HOME</a>
-->    <a href="Student_logout.php" class="btn btn-outline-danger">LOG OUT</a>
        </div>
    </nav>
    <nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link disabled" href="#"><h4 style="color:#2487e3">Dashboard</h4></a>
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-quiz" role="tab" aria-controls="nav-quiz" aria-selected="false">My Quiz</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-history" role="tab" aria-controls="nav-history" aria-selected="false">History</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-rank" role="tab" aria-controls="nav-rank" aria-selected="false">Ranking</a>
    <a class="nav-item nav-link" id="nav-edit-tab" data-toggle="tab" href="#nav-edit" role="tab" aria-controls="nav-edit" aria-selected="false">Edit Profile</a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
    <!-------------  Home   -------------------->
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
    <div id="nav-home-tab">
      <div class="jumbotron">
        <h4 class="display-4">Welcome, <?php echo($_SESSION['name']); ?></h4>
        <h5 class="lead">Username- <?php echo($_SESSION['username']); ?></h5>
        <p class="lead">Contact-<?php echo($_SESSION['phonenumber']); ?></p>
        <hr class="my-4">
        <p>Email-<?php echo($_SESSION['emailid']); ?></p>
      </div>
    </div>


  </div>





    <!--------------------My quiz ------------->

    <div class="tab-pane fade" id="nav-quiz" role="tabpanel" aria-labelledby="nav-quiz-tab">
  <?php 
    include('./Connect.php');
    $query1 = " SELECT * FROM `create_quiz_details`";
    $res1 = mysqli_query($Connect,$query1);
  ?>
    
    <div class="container">
	<p id="success"></p> 
        <div class="table-wrapper">
            <div class="table-title">
               
                   
                    <h2 class="card-title" style="text-align:center"> <b> <div class="card-head"> Quizzes</div></b></h2>
				
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
						<th>SL NO</th>
                        <th>QUIZ TITLE</th>
                        <th>Author</th>
                        <th></th>
                        <th>ACTION</th>
                    </tr>
                </thead>
				<tbody>
				
				<?php
   
        $result = mysqli_query($Connect,"SELECT * FROM `create_quiz_details`");
					$i=1;
					while($row = mysqli_fetch_array($result)) {
				?>
				<tr eid="<?php echo $row["eid"]; ?>"> 

					<td><b><h3><?php echo $i; ?>.</h3></b></td>
					<td>
          <h3><b><i>
          <?php echo $row["qtitle"]; ?> </i></b></h3>
          <br>
          <b>Description : </b><?php echo $row['qdescription'] ?>
          </td>
          <td><?php echo $row["author"];?></td>
          <td>             </td>
          
         <!-- echo("<script>window.location = 'Create_quiz_que.php?eid=$eid&n=$qno'</script>"); -->
        <?php  
                $eid=$row['eid'];
                $email=$_SESSION['emailid'];
        
                $q12=mysqli_query($Connect,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
                $rowcount=mysqli_num_rows($q12);	
                if($rowcount == 0)
                {
                  echo ' <td> <a href="Time.php?q=start_quiz&user=student&step=2&qtitle='.$row['qtitle'].'&eid='.$row['eid'].'&n=1&t='.$row["qno"].'" class="btn btn-warning" >Start</a> &nbsp;&nbsp; </td>
                  ';
                }
                else
                {
                echo' <td> <label> Completed </label > </td>';
                }
         ?>
                    </td>
				</tr>
				<?php
				$i++;
				}
				?>
				</tbody>
			</table>
			
        </div>
      </div>
    </div>
    

      <!-------------------History------------------>


  <div class="tab-pane fade" id="nav-history" role="tabpanel" aria-labelledby="nav-history-tab">
    
  <div class="container">
	<p id="success"></p>
        <div class="table-wrapper">
						              <h2 class="card-title" style="text-align:center"> <b> <div class="card-head"> History </div></b></h2>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
						<th>SL NO</th>
                        <th>Quiz Title</th>
                        <th>SCORE</th>
                        <th>WRONG </th>
                        <th>Right</th>
                        <th>Questions Solved </th>
                       
                    </tr>
                </thead>
				<tbody>
				
        <?php
        $email=$_SESSION['emailid'];
				$result = mysqli_query($Connect,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC");
					$i=1;
					while($row = mysqli_fetch_array($result)) {
				?>
          <?php
            $eid= $row['eid'];
            $score=$row['score'];
            $qwrong=$row['qwrong'];
            $qright=$row['qright'];
            $level=$row['level'];
          ?>
					<td><?php echo $i; ?></td>

          <?php $q23=mysqli_query($Connect,"SELECT qtitle FROM create_quiz_details WHERE  eid='$eid' " )or die('Error208');
              while($row=mysqli_fetch_array($q23) )
                {
                $qtitle=$row["qtitle"];
                }?>

          <td><?php echo $qtitle ?></td>
          <td><?php echo $score ?></td>
          <td><?php echo $qwrong ?></td>
          <td><?php echo $qright ?></td>
          <td><?php echo $level ?></td>
          <td>             </td>
          <td> &nbsp;&nbsp;
          
                    </td>
				</tr>
				<?php
				$i++;
				}
				?>
				</tbody>
			</table>
			
        </div>




  </div>


    <!-------------------Ranking------------------>


  <div class="tab-pane fade" id="nav-rank" role="tabpanel" aria-labelledby="nav-rank-tab">

  
  <div class="container">
	<p id="success"></p> 
        <div class="table-wrapper">
            <div class="table-title">
               
                   
                    <h2 class="card-title" style="text-align:center"> <b> <div class="card-head"> Ranking</div></b></h2>
				
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
						<th>SL NO</th>
                        <th>QUIZ TITLE</th>
                        <th>Author</th>
                        <th></th>
                        <th> </th >
                        <th>ACTION</th>
                    </tr>
                </thead>
				<tbody>
				
				<?php
   
        $result = mysqli_query($Connect,"SELECT * FROM `create_quiz_details`");
					$i=1;
					while($row = mysqli_fetch_array($result)) {
				?>
				<tr eid="<?php echo $row["eid"]; ?>"> 

					<td><?php echo $i; ?></td>
					<td>
          
          <?php echo $row["qtitle"]; ?>
          <!-- <br> -->
          <!-- <b>Description : </b><?php echo $row['qdescription'] ?> -->
          </td>
          <td><?php echo $row["author"];?></td>
          <td>             </td>
          
         <!-- echo("<script>window.location = 'Create_quiz_que.php?eid=$eid&n=$qno'</script>"); -->
        <?php  
                $eid=$row['eid'];
                
                $email=$_SESSION['emailid'];
        
                $q12=mysqli_query($Connect,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
                $rowcount=mysqli_num_rows($q12);	
              
                ?>
                 <td>               
                </td>   
                <td>
                   <!-- <td> <a href="View_rank.php?&user=student&eid='.$row['eid'].'" class="btn btn-danger" >View Rank</a> &nbsp;&nbsp; -->
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#viewrank<?php echo $eid ?>">
                      View Rank
                 </button>
                </td>
        
           </td>      
                    
				</tr>

        
				<?php
				$i++;
				}
				?>
				</tbody>
			</table>
			
        </div>
      </div>
  
  <!----------------------------------Rank POP UP -------------------------------------------------->
  <?php 

 $result = mysqli_query($Connect,"SELECT * FROM `create_quiz_details`");
 $array = array();
while($row = mysqli_fetch_array($result)){
  array_push($array,$row);
}
// Set the increment variable
foreach( $array as $row ):  

?>

<!-- Modal -->
<div class="modal fade " id="viewrank<?php echo $row['eid']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 style="text-align: center" class="col-12 modal-title text-center" id="exampleModalLabel" ><b>Ranking (<?php echo $row['qtitle'] ?>)</b></h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="container">
	<p id="success"></p>
        <div class="table-wrapper">
						              <!-- <h2 class="card-title" style="text-align:center"> <b> <div class="card-head"> Ranking</div></b></h2> -->
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
						            <th>Rank</th>
                        <th>Name</th>
                        <th>Email Id</th>
                        <th>Quiz Title</th>
                        <th>Score</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
				<tbody>
        
				
       <?php 
       $eid = $row['eid'];
       $q=mysqli_query($Connect,"SELECT * FROM ranking  WHERE `eid` = '$eid'  ORDER BY score DESC  " )or die('Error223');
       $c=1;
            while($row=mysqli_fetch_array($q) )
            {
            $e=$row['email'];
            $s=$row['score'];
            $eid=$row['eid'];
            $q12=mysqli_query($Connect,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
            while($row=mysqli_fetch_array($q12) )
            {
            $name=$row['name'];
            $username=$row['username'];

              $result=mysqli_query($Connect,"SELECT * FROM create_quiz_details WHERE eid='$eid' " )or die('Error231');
              while($row=mysqli_fetch_array($result) )
              {
                $qtitle=$row['qtitle'];
              }
            
            }
            ?>
			
					<td><?php echo $c; ?></td>
          <td><?php echo $name?></td>
          <td><?php echo $e ?></td>
          <td><?php echo $qtitle  ?></td>
          <td><?php echo $s ?></td>
          <td>             </td>
          <td> 
             &nbsp;&nbsp;
          </td>
				</tr>
				<?php
				$c++;
				}
				?>
				</tbody>
			</table>
			
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>

<?php  

endforeach; //End the loop ?>
<!---------------------------------------rank pop up end ------------------------------------>


<!-- Ranking Old vala  -->
<?php /*
  <?php 
    
    $q=mysqli_query($Connect,"SELECT * FROM ranking  ORDER BY score DESC " )or die('Error223');
  ?>
    
    <div class="container">
	<p id="success"></p>
        <div class="table-wrapper">
						              <h2 class="card-title" style="text-align:center"> <b> <div class="card-head"> Ranking</div></b></h2>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
						<th>SL NO</th>
                        <th>Name</th>
                        <th>Email Id</th>
                        <th>Quiz Title</th>
                        <th>Score</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
				<tbody>
        
				
       <?php 
       $q=mysqli_query($Connect,"SELECT * FROM ranking  ORDER BY score DESC " )or die('Error223');
       $c=1;
            while($row=mysqli_fetch_array($q) )
            {
            $e=$row['email'];
            $s=$row['score'];
            $eid=$row['eid'];
            $q12=mysqli_query($Connect,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
            while($row=mysqli_fetch_array($q12) )
            {
            $name=$row['name'];
            $username=$row['username'];

              $result=mysqli_query($Connect,"SELECT * FROM create_quiz_details WHERE eid='$eid' " )or die('Error231');
              while($row=mysqli_fetch_array($result) )
              {
                $qtitle=$row['qtitle'];
              }
            
            }
            ?>
			
					<td><?php echo $c; ?></td>
          <td><?php echo $name?></td>
          <td><?php echo $e ?></td>
          <td><?php echo $qtitle  ?></td>
          <td><?php echo $s ?></td>
          <td>             </td>
          <td> 
             &nbsp;&nbsp;
          </td>
				</tr>
				<?php
				$c++;
				}
				?>
				</tbody>
			</table>
			
        </div>
*/ ?>

  </div>



  <!--------------------Edit profile--------------->



  <div class="tab-pane fade" id="nav-edit" role="tabpanel" aria-labelledby="nav-edit-tab">
  <br>
  <div class="row row-cols-1 row-cols-md-2">
  <div class="col mb-4">
    <div class="card">
     <h5 align="center" class="card-header">UPDATE PROFILE</h5>
      <div class="card-body">

      <form method="POST" action="Student_update_phone.php">
            <input type="" class="form-control" name="phone" placeholder="Update Phone Number">
            <br>
            <button type="submit" class="btn btn-primary" name="updatephone">UPDATE</button>
        </form>
        <form method="POST" action="Student_update_email.php">
            <input type="email" class="form-control" name="email" placeholder="Update Email Id">
            <br>
            <button type="submit" class="btn btn-primary" name="updateemail">UPDATE</button>
        </form>
      </div>
    </div>
  </div>

  <div class="col mb-4">
    <div class="card">
     <h5 align="center" class="card-header"> UPDATE PASSWORD </h5>
      <div class="card-body">
      <form method="POST" action="Student_update_password.php">
          <label align="center"> Update Password </label>
            <input type="password" class="form-control" name="confirm_password" placeholder="Enter old Password">
            <br>
            <input type="password" class="form-control" name="new_password" placeholder="Enter New Password">
            <br>
            <button type="submit" class="btn btn-danger" name="updatepassword">UPDATE</button>
        </form>
      </div>
    </div>
  </div>
  </div>
<div class="col mb-4">
  <div class="card">
     <h5 align="center" class="card-header"> DELETE ACCOUNT </h5>
  <div class="card-body">
    <form method="POST" action="Student_delete.php">
            <input type="password" class="form-control" name="confirm_password" placeholder="Confirm password">
            <br>
            <button type="submit" class="btn btn-danger" name="delete">DELETE</button>
        </form>
  </div>
</div>
</div>
</div>

</body>
</html>
  