<?php
include_once("inc_header.php");
?>
<div class="wrapper">
    <!-- untuk home -->
    <section id="home">

        <img src="<?php echo ambil_gambar('15'); ?>" />
        <div class="kolom">
            <p class="deskripsi"><?php echo ambil_kutipan('15') ?></p>
            <h2><?php echo ambil_judul('15') ?></h2>
            <p><?php echo max_kata(ambil_isi('15'),40) ?></p>
            <p><a href="<?php echo buat_link_halaman('15') ?>" class="tbl-pink">Pelajari Lebih Lanjut</a></p>
        </div>
    </section>

    <!-- untuk courses -->
    <section id="courses">
        <div class="kolom">
            <p class="deskripsi"><?php echo ambil_kutipan('16') ?></p>
            <h2><?php echo ambil_judul('16') ?></h2>
            <?php echo max_kata(ambil_isi('16'),40) ?>
            <p><a href="<?php echo buat_link_halaman('16') ?>" class="tbl-biru">Pelajari Lebih Lanjut</a></p>
        </div>
        <img src="<?php echo ambil_gambar('16'); ?>" />
    </section>

    <!-- untuk tutors -->
    <section id="tutors">
        <div class="tengah">
            <div class="kolom">
                <p class="deskripsi">Our Top</p>
                <h2>Tutors</h2>

            </div>

            <div class="tutor-list">
                <?php
                $sql1   = "select * from tutors order by id desc";
                $q1   = mysqli_query($connection, $sql1);
                while($r1   = mysqli_fetch_array($q1)){
                ?>
                 <div class="kartu-tutor">
                    <a href="<?php echo buat_link_tutors($r1['id'])?>">
                    <img src="<?php echo url_dasar()."/gambar/". tutors_foto($r1['id'])?>" />
                    <p><?php echo $r1['nama']?></p>
                    </a>
                </div>
                <?php
                }
                ?> 
            </div>
        </div>
    </section>

    <!-- untuk partners -->
    <section id="partners">
        <div class="tengah">
            <div class="kolom">
                <p class="deskripsi">Our Top Partners</p>
                <h2>Partners</h2>
                <p>Didukung oleh partner partner terkenal</p>
            </div>

            <div class="partner-list">
                <div class="kartu-partner">
                    <img src="https://www.designevo.com/res/templates/thumb_small/black-wheat-and-mortarboard.png" />
                </div>
                <div class="kartu-partner">
                    <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-63.jpg" />
                </div>
                <div class="kartu-partner">
                    <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-62.jpg" />
                </div>
                <div class="kartu-partner">
                    <img src="https://www.designevo.com/res/templates/thumb_small/encircled-branches-and-book.png" />
                </div>
                <div class="kartu-partner">
                    <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-64.jpg" />
                </div>
            </div>
        </div>
    </section>
    <?php
    include_once("inc_footer.php");
    ?>