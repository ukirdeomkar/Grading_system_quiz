
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width , initial-scale=1 ">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>

<body>
<?php 
include('./Connect.php');
session_start();
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
       
       $eid = $_GET['eid'];
       
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

</body>