<?php include_once('inc_header.php')?>
<?php
if($_SESSION['members_email']==""){
    header("location:login.php");
    exit(); 
}
?>
<div style="background-color: red; font-size:large; padding:50px">
Selamat datang di halaman rahasia <?php echo $_SESSION['members_nama_lengkap'];?>
</div>








<?php include_once('inc_footer.php')?>