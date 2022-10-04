<!-- isi dari website -->
<?php
include("inc_header.php");
?>


<?php
$succes = "";
$katakunci = (isset($_GET["katakunci"])) ? $_GET["katakunci"] : "";
if (isset($_GET["op"])) {
    $op     = $_GET["op"];
} else {
    $op = "";
}
if ($op == "delete") {
    $id = $_GET["id"];
    $sql1   = "delete from halaman where id = '$id'";
    $q1   = mysqli_query($connection, $sql1);
    if ($q1) {
        $succes = "berhasil hapus data";
    }
}
?>


<h1>Halaman Admin</h1>
<p>
    <a href="halaman_input.php">
        <input type="button" class="btn btn-primary" value="Buat halaman baru">
    </a>
</p>

<?php
if ($succes) {
?>
    <div class="alert alert-success" role="alert">
        <?php echo $succes ?>
    </div>
<?php
}
?>

<form class="row g-3" method="GET">
    <div class="col-auto">
        <input type="text" class="form-control" name="katakunci" placeholder="Masukkan kata kunci" value="<?php echo $katakunci ?>">
    </div>
    <div class="col-auto">
        <input type="submit" class="btn btn-secondary" name="cari" value="Cari Tulisan">
    </div>
</form>

<table class="table table-stripped">
    <thead>
        <tr>
            <th class="col-1">Nomor</th>
            <th>Judul</th>
            <th>Kutipan</th>
            <th class="col-1">Aksi</th>
        </tr>
    </thead>
    <tbody>

        <?php
        $sql_tambahan = " ";
        if ($katakunci != "") {
            $array_katakunci = explode(" ", $katakunci);


            for ($i = 0; $i < count($array_katakunci); $i++) {
                $sql_cari[] = "(judul like '%" . $array_katakunci[$i] . "%' OR kutipan like '%" . $array_katakunci[$i] . "%' OR isi like '%" . $array_katakunci[$i] . "%')";
            }
            $sql_tambahan = "where" . implode("OR", $sql_cari);
        }
        $sql1   = "select * from halaman $sql_tambahan order by id desc";
        $q1     = mysqli_query($connection, $sql1);
        $nomor  = 1;
        while ($r1 = mysqli_fetch_array($q1)) {
        ?>
            <tr>
                <td><?php echo $nomor++ ?></td>
                <td><?php echo $r1["judul"] ?></td>
                <td><?php echo $r1["kutipan"] ?></td>
                <td>
                    <a href="halaman.php?op=delete&id=<?php echo $r1["id"] ?>" onclick="return confirm('apakah yakin mau hapus data ini?')">
                        <span class="badge bg-danger">Delete</span>
                    </a>
                    <a href="halaman_input.php?id=<?php echo $r1["id"];?>">
                    <span class="badge bg-warning text-dark">Edit</span>
                    </a>
                </td>
            </tr>
        <?php
        }
        ?>


    </tbody>
</table>


<?php
include("inc_footer.php");
?>