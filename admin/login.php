<?php session_start();?>
<?php include_once("../inc/inc_connection.php");

$username = "";
$password = "";
$error    = "";

if(isset($_POST["login"])){
    $username = $_POST["username"];
    $password = $_POST["password"];

    if($username == "" OR $password == ""){
        $error = "Silakan masukkan semua isian";
    }
    else{
        $sql1 = "select * from admin where username = '$username'";
        $q1    = mysqli_query($connection,$sql1);
        $r1   = mysqli_fetch_array($q1);
        $n1   = mysqli_num_rows($q1);

        if($n1<1){
            $error = "username tidak ditemukan";
        }elseif($r1['password'] != md5($password)){
            $error = "password yang anda masukkan salah";
        }else{
            $_SESSION['admin_username'] = $username;
            header("location:index.php");
            exit();
        }
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login Admin</title>
</head>
<body style="width:100%; max-width:330px; margin:auto;padding:15px">
    <form action="" method="POST">
        <h1>Login Admin</h1>
        <?php
        if($error){
        ?>
        <div class="alert alert-danger"><?php echo $error;?></div>
        <?php
        }
        
        ?>
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="masukkan username" value="<?php echo $username;?>">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <button type="submit" class="btn btn-primary" name="login">Login</button>

    </form>
</body>
</html>