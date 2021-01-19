<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <style>
    .logo-text{
	  font-size:40px;
    padding-left:-10%;

      color: #ff0080;
      padding-top: 5px;

	  
    }
	 .nav-link1{
      color: white;
     	  
    }
    .list-customer{
      padding-left: 1100px;
    }

    .nav-link1:hover{
      color: yellow;
      text-decoration: none;
    }
    h2{
      text-align: center;
      border: 20px;
      margin-top: 10px;
      text-decoration-line: underline;
      font-family: Arial, Helvetica, sans-serif;
      color: #2626d9;
      font-weight: bold;
    }

    </style>
</head>
<body style="background-image: url(https://biztechmagazine.com/sites/biztechmagazine.com/files/styles/cdw_hero/public/articles/201904/BT_EquITy_SDWAN_GettyImages-1005716838%20%281%29.jpg?itok=YnBz3k_7);">

  <nav class="navbar navbar-light" style="background-color: #4646b5">

  <p class="logo-text"><b style="font-family: arial;">DSB</b><i><sup style="color: #00ff00; font-family:monospace;">BANK</sup></i><sub><small style="font-size: 30px; color: yellow;">
   
<ul class="navbar-nav">
<li class="list-customer">
<a class="nav-link1" href="index.php">Home Page</a>
</li>
</ul>
</nav>
        <div class="container divStyle" >
        <h2>Transaction History</h2>

       <br>
       <div class="table-responsive">
    <table class="table table-dark table-striped">
        <thead>
            <tr style="color:cyan; font-style:normal">
                <th>Sender</th>
                <th>Receiver</th>
                <th> Transferred Amount</th>
            </tr>
        </thead>
        <tbody>
        <?php

            include 'config.php';
			

            $sql ="select * from transaction";

            $query =mysqli_query($conn, $sql);

            while($rows = mysqli_fetch_array($query))
            {
        ?>
            <tr>
            <td><?php echo $rows['sender']; ?></td>
            <td><?php echo $rows['receiver']; ?></td>
            <td><?php echo $rows['credits']; ?> </td>

        <?php
            }

        ?>
        </tbody>
    </table>

    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>
</html>