<?php include_once("inc_header.php") ?>




<?php
$error = "";
$success = "";

if (!isset($_GET["email"]) or !isset($_GET['kode'])) {
    $error = "Data yang diperlukan untuk verifikasi tidak tersedia";
} else {
    $email  = $_GET['email'];
    $kode   = $_GET['kode'];

    $sql1 = "select * from members where email = '$email'";
    $q1 = mysqli_query($connection, $sql1);
    $r1 = mysqli_fetch_array($q1);

    if ($r1['status'] == $kode) {
        $sql2 = "update members set status = '1' where email = '$email'";
        mysqli_query($connection, $sql2);
        $success = "akun telah sukses, silakan login di halaman login";
    } else {
        $error = "kode tidak valid";
    }
}

?>
<h3>Halaman Verifikasi</h3>
<?php if ($error) {
    echo "<div class='error'>$error</div>";
} ?>
<?php if ($success) {
    echo "<div class='success'>$success</div>";
} ?>








<?php include("inc_footer.php") ?>