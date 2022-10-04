<!-- membuat file untuk input data -->
<?php
include("inc_header.php")
?>

<?php
$judul      = "";
$isi        = "";
$kutipan    = "";
$succes     = "";
$error      = "";

if(isset($_GET["id"])){
    $id = $_GET["id"];
}else{
    $id = "";
}
if($id != ""){
    $sql1   = "select * from halaman where id = '$id'";
    $q1     = mysqli_query($connection,$sql1);
    $r1     = mysqli_fetch_array($q1);
    $judul  =$r1["judul"];
    $kutipan = $r1["kutipan"];
    $isi    = $r1["isi"];
    
    if($isi == ""){
        $error = "data tidak ditemukan";
    }

}

if (isset($_POST["simpan"])) {
    $judul      = $_POST["judul"];
    $kutipan    = $_POST["kutipan"];
    $isi        = $_POST["isi"];

    if ($judul == "" || $isi == "") {
        $error = "Masukkan data judul dan isi";
    }

    if (empty($error)){
        if($id != ""){
            $sql1 = "update halaman set judul = '$judul', kutipan = '$kutipan', isi = '$isi', tgl_isi =now() where id = '$id'";
        }
        else{
            $sql1   = "insert into halaman(judul, kutipan, isi) values ('$judul','$kutipan','$isi')";
        }
      
        $q1     = mysqli_query($connection, $sql1);

        if ($q1) {
            $succes = "sukses memasukkan data";
        } else {
            $error = "gagal measukkan data";
        }
    }
}
?>

<h1>Halaman Admin Input Data</h1>
<div class="mb-3 row">
    <a href="halaman.php">
        < < Kembali ke Halaman Utama</a>
</div>

<?php
if ($error) {
?>
    <div class="alert alert-danger" role="alert">
        <?php echo $error; ?>
    </div>
<?php
}
?>


<?php
if ($succes) {
?>
    <div class="alert alert-success" role="alert">
        <?php echo $succes; ?>
    </div>
<?php
}
?>


<form action="" method="POST">
    <div class="mb-3 row">
        <label for="judul" class="col-sm-2 col-form-label">Judul</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="judul" id="judul" value="<?php echo $judul; ?>">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="kutipan" class="col-sm-2 col-form-label">Kutipan</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="kutipan" id="kutipan" value="<?php echo $kutipan; ?>">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="isi" class="col-sm-2 col-form-label">Isi</label>
        <div class="col-sm-10">
            <textarea class="form-control" name="isi" id="summernote"><?php echo $isi; ?></textarea>
        </div>
    </div>
    <div class="mb-3">
        <div class="col-sm-2"></div>
        <input type="submit" class="btn btn-primary" name="simpan" value="simpan data"> 
    </div>

</form>





<?php
include("inc_footer.php")
?>