<?php
session_start();
if (isset($_GET['book']))
  {
    $book = $_GET['book'];
    $_SESSION['buyBook'] = $book;
    header("Location: checkout.php");
    exit();
  }
?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Book Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="main.css">
</head>

<body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a href="index.html" class="navbar-brand">Home</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="store.php" class="nav-link">Book Store</a>
                </li>
            </ul>
        </div>
    </nav>
    <main class="overflow">
            <h1>Books that are available</h1>
            <form action="store.php" method="POST">
            <?php
                require("mysqli_connect.php");
                $q1="SELECT * FROM books";
                $r1=mysqli_query($connection,$q1);
                if (mysqli_num_rows($r1) > 0) {
                    while($row = mysqli_fetch_assoc($r1)){
                        ?>
                        <div class="col-md-5">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="card-title"> <?php echo $row['Name'] ?> </h2>
                                    <img src="images/<?php echo $row['Image']; ?>" class="card-img-top" width="100px" height="400">
                                    <p class="card-text">
                                    <?php echo "PRICE: USD {$row['Price']}" ?>     
                                    </p>        
                                    <?php echo '<a href="?book='. $row["PId"].'" class="cart"><b> Buy Now</a>';?> </p>
                                </div>
                            </div>
                    </div>
                    <?php                    
                    }
                }
                else {
                    echo "0 results";
                }
            ?>
            </form>
        </main>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>


</html