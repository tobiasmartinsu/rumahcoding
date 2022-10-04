<?php
session_start();
include_once("inc/inc_connection.php");
include_once("inc/inc_function.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bootcamp</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <nav>
        <div class="wrapper">
            <div class="logo"><a href='<?php echo url_dasar()?>'>RumahCoding</a></div>
            <div class="menu">
                <ul>
                    <li><a href="<?php echo url_dasar()?>#home">Home</a></li>
                    <li><a href="<?php echo url_dasar()?>#courses">Courses</a></li>
                    <li><a href="<?php echo url_dasar()?>#tutors">Tutors</a></li>
                    <li><a href="<?php echo url_dasar()?>#partners">Partners</a></li>
                    <li><a href="<?php echo url_dasar()?>#contact">Contact</a></li>
                    <li>
                    <?php if(isset($_SESSION['members_nama_lengkap'])){
                        echo $_SESSION['members_nama_lengkap']." | <a href ='".url_dasar()."/logout.php'>Logout</a>";
                    }else{?>
                        <a href="pendaftaran.php" class="tbl-biru">Sign Up</a>
                        <?php }?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">
