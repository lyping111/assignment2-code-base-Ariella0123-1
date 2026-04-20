<?php
session_start();
include 'db.php';

if($_SERVER["REQUEST_METHOD"]=="POST"){
        $username=$_POST["username"];
        $password=$_POST["password"];
        
        $qry=$conn->prepare("SELECT * FROM login WHERE username=?");
        $qry->bind_param("s",$username);
        $qry->execute();
        $result=$qry->get_result();
        // if($result->num_rows>0){
            $user = $result->fetch_assoc();
            
            if (password_verify($password, $user['password'])) {
                $_SESSION["username"]=$user["username"];

                $_SESSION["user_id"]=$user["id"];
                
                echo "<script>alert('Login successful');
                    window.location.href='#';
                </script>";
            } else {
                echo"<script>alert('Login successful');
                </script>";
            }
        }
    // }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <div class="card">
            <form action="login.php" method="POST">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                </div>
                <a href="register.php">did not have account, click me for register</a><br>
                <button type="submit" name="login">Login</button>
            </form>
        </div>
    </div>
</body>
</html>