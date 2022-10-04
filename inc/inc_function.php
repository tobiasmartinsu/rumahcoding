<?php
function url_dasar(){
    //$_SERVER['SERVER_NAME'] : alamat website, misalkan websitemu.com
    // $_SERVER['SCRIPT_NAME'] : directory website, websitemu.com/blog/ $_SERVER['SCRIPT_NAME'] : blog
    $url_dasar  = "http://".$_SERVER['SERVER_NAME'].dirname($_SERVER['SCRIPT_NAME']);
    return $url_dasar;
}
function ambil_gambar($id_tulisan){
    global $connection;
    $sql1 = "select * from halaman where id = '$id_tulisan'";
    $q1   = mysqli_query($connection,$sql1);
    $r1   = mysqli_fetch_array($q1);
    $text = $r1['isi'];

    preg_match('/< *img[^>]*src *= *["\']?([^"\']*)/i', $text, $img);
    $gambar = $img[1]; // ../gambar/filename.jpg
    $gambar = str_replace("../gambar/",url_dasar()."/gambar/",$gambar);
    return $gambar;
}

function ambil_kutipan($id_tulisan){
    global $connection;
    $sql1   = "select * from halaman where id = '$id_tulisan'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $text   = $r1['kutipan'];
    return $text;
}

function ambil_judul($id_tulisan){
    global $connection;
    $sql1   = "select * from halaman where id = '$id_tulisan'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $text   = $r1['judul'];
    return $text;
}

function ambil_isi($id_tulisan){
    global $connection;
    $sql1   = "select * from halaman where id = '$id_tulisan'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $text   = strip_tags($r1['isi']);
    return $text;
}


function bersihkan_judul($judul){
    $judul_baru = strtolower($judul);
    $judul_baru = preg_replace("/[^a-zA-Z0-9\s]/","",$judul_baru);
    $judul_baru = str_replace(" ","-", $judul_baru);
    return $judul_baru;
}

function buat_link_halaman($id){
    global $connection;
    $sql1   = "select * from halaman where id = '$id'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $judul  = bersihkan_judul($r1['judul']);
    return url_dasar(). "/halaman.php/$id/$judul";
}

function dapatkan_id(){
    $id     ="";
    if(isset($_SERVER['PATH_INFO'])){
        $id = dirname($_SERVER['PATH_INFO']);
        $id = preg_replace("/[^0-9]/","",$id);
    }
    return $id;
}

function set_isi($isi){
    $isi = str_replace("../gambar/", url_dasar()."/gambar/",$isi);
    return $isi;
}

function max_kata($isi, $max){
    $array_isi  = explode(" ",$isi);
    $array_isi  = array_slice($array_isi,0,$max);
    $isi        =implode(" ",$array_isi);
    return $isi;
}

function tutors_foto($id){
    global $connection;
    $sql1   = "select * from tutors where id = '$id'";
    $q1     = mysqli_query($connection, $sql1);
    $r1     = mysqli_fetch_array($q1);
    $foto   = $r1['foto'];

    return $foto;
}


function buat_link_tutors($id){
    global $connection;
    $sql1   = "select * from tutors where id = '$id'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $nama  = bersihkan_judul($r1['nama']);
    return url_dasar(). "/tutors.php/$id/$nama";
}

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

function kirim_email($email_penerima, $nama_penerima, $judul_email, $isi_email ){
$email_pengirim     = "tobiasmartin05@gmail.com";
$nama_pengirim      = "noreply";
//Load Composer's autoloader
require getcwd(). '/vendor/autoload.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 0;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = $email_pengirim;                     //SMTP username
    $mail->Password   = 'fzmvsfalagznauth';                               //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom($email_pengirim, $nama_pengirim);
    $mail->addAddress($email_penerima, $nama_penerima);     //Add a recipient
    

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = $judul_email;
    $mail->Body    = $isi_email;

    $mail->send();
    return "sukses";
} 
catch (Exception $e) {
    return "gagal: {$mail->ErrorInfo}";
}
}