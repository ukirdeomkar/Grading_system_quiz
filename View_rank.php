

<?php 
include('./Connect.php');
session_start();
    
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