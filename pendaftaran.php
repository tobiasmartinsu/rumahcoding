<?php include_once("inc_header.php")?>
<?php
if(isset($_SESSION['members_email']) != ""){ //udh dlm keadaan login
    header('location:index.php');
    exit();
}

?>
<h3>PENDAFTARAN</h3>
<?php
    $email  = "";
    $nama_lengkap   = "";
    $error = "";
    $success = "";
    $password ="";
    $konfirmasi_password = "";


    if(isset($_POST['simpan'])){
        $email = $_POST['email'];
        $nama_lengkap = $_POST['nama_lengkap'];
        $password = $_POST["password"];
        $konfirmasi_password = $_POST["konfirmasi_password"];

    }

    if($email == "" OR $nama_lengkap == "" OR $password == "" OR $konfirmasi_password == ""){
        $error .= "<li>Silakan isi data dengan lengkap!</li>";
    }

    //cek d bagian db apakah sudah ada email terdaftar atau belum
    if($email != ""){
        $sql1   = "select email from members where email = '$email'";
        $q1 = mysqli_query($connection,$sql1);
        $n1 = mysqli_num_rows($q1);

        if($n1 > 0){
            $error .= "<li>email yang kamu masukan sudah terdaftar</li>";
        }

        if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            $error .= "<li>email yang kamu masukan tidak valid</li>";
        }

    }

    if($password != $konfirmasi_password){
        $error .= "<li>Password tidak sesuai dengan konfirmasi password</li>";
    }

    if(strlen($password)<6){
        $error .="<li>Password yang diijinkan harus lebih dari 6 karakter</li>";
    }

    if(empty($error)){
        $status = md5(rand(0,1000));
        $judul_email = "Halaman Konfirmasi Pendaftaran";
        $isi_email = "akun yang anda miliki dengam email <b>$email</b> telah siap digunakan. <br>";
        $isi_email .= url_dasar() ."/verifikasi.php?email=$email&kode=$status";


        kirim_email($email,$nama_lengkap,$judul_email,$isi_email);

        $sql1 = "insert into members(email, nama_lengkap, password, status) values ('$email', '$nama_lengkap', md5($password), '$status')";
        $q1 = mysqli_query($connection,$sql1);
        if($q1){
            $success = "Proses berhasil. Silakan cek email untuk verifikasi.";
        }

       
    }

?>
<?php if($error){echo "<div class = 'error'><ul>$error</ul></div> ";}?>
<?php if($success){echo "<div class = 'success'><ul>$success</ul></div>";}?>
<form action="" method="POST">
    <table>
        <tr>
            <td class="label">Email</td>
            <td>
                <input type="text" name="email" class="input" value="<?php echo $email?>">
            </td>
        </tr>
        <tr>
            <td class="label">Nama Lengkap</td>
            <td>
                <input type="text" name="nama_lengkap" class="input" value="<?php echo $nama_lengkap?>">
            </td>
        </tr>
        <tr>
            <td class="label">Password</td>
            <td>
                <input type="password" name="password" class="input">
            </td>
        </tr>
        <tr>
            <td class="label">Konfirmasi Password</td>
            <td>
                <input type="password" name="konfirmasi_password" class="input">
                <br>
                Sudah punya akun? silakan <a href='<?php echo url_dasar()?>/login.php'>Login</a>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="simpan" value="simpan" class="tbl-biru">
            </td>
        </tr>
    </table>

</form>
<?php include("inc_footer.php")?>