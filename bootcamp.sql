-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 05:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootcamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(15, 'Belajar Programming yuk ..', '#darirumahsaja', '<p><img src=\"../gambar/38b3eff8baf56627478ec76a704e9b52.jpg\" style=\"width: 626px;\"><span style=\"color: rgb(114, 115, 119); font-family: \" nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\"><br></span></p><p><span style=\"color: rgb(114, 115, 119); font-family: \" nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\"><br></span></p><p><span nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"color: rgb(114, 115, 119);\"><span nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\">Untuk mengatasi persoalan tersebut, beberapa sekolah dan institusi pendidikan mulai memberlakukan sistem pembelajaran online atau remote untuk terus menciptakan talenta-talenta yang siap berkarir di industri saat ini. Bagi kamu yang ingin menjadi seorang developer, kamu bisa mengikuti pelatihan yang kredibel dalam membentuk soft skill dan hard skill dalam diri seseorang untuk menjadi web developer. Dengan mengikuti sistem pembelajaran remote, kamu bisa belajar di mana saja, bahkan dari rumah sekalipun. Berikut beberapa karir dalam bidang pemrograman yang dapat kamu tekuni.</span><br></span></p><h3 id=\"front-end-developer\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Front End Developer</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\"><a href=\"https://hacktiv8.com/frontend/jakarta/\" style=\"color: var(--color-link); text-decoration-line: none; background-color: transparent; transition: all 0.3s ease 0s;\">Front End Developer</a>&nbsp;adalah orang yang merancang tampilan pada suatu website. Pekerjaan Front End Developer tidak luput dari UI (<em>User Interface</em>), seperti mempercantik tampilan website, membuat tampilan website yang dinamis, menarik, dan interaktif.</p><h3 id=\"back-end-developer\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Back End Developer</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Back End Developer adalah orang yang bekerja mengembangkan sistem yang bekerja dari balik layar suatu website. Tugas&nbsp;<a href=\"https://hacktiv8.com/intro-to-programming/jakarta/\" style=\"color: var(--color-link); text-decoration-line: none; background-color: transparent; transition: all 0.3s ease 0s;\">Back End Developer</a>&nbsp;adalah memastikan fungsi dan sistem dalam sebuah website dapat berjalan dengan baik.</p><h3 id=\"full-stack-developer\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Full Stack Developer</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\"><a href=\"https://hacktiv8.com/fullstack/\" style=\"color: var(--color-link); text-decoration-line: none; background-color: transparent; transition: all 0.3s ease 0s;\">Full Stack Developer</a>&nbsp;adalah orang yang memiliki skill baik sebagai Front End Developer atau Back End Developer. Menjadi Full Stack Developer atau Web Developer memiliki tugas merancang, mengembangkan, hingga mendesain tampilan suatu website atau mobile app.</p><h2 id=\"keuntungan-berkarir-sebagai-developer\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 28px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Keuntungan Berkarir Sebagai Developer</h2><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Masing-masing profesi dalam bidang pemrograman tentu memiliki keuntungan sendiri-sendiri. Kunci untuk dapat membangun karir sebagai seorang developer adalah memiliki kemauan dan keseriusan untuk terus belajar dan berkembang. Berikut beberapa keuntungan yang akan kamu dapatkan jika berkarir di bidang pemrograman.</p><h3 id=\"gaji-besar\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Gaji Besar</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Pesatnya pertumbuhan perusahaan rintisan atau&nbsp;<em>startup</em>&nbsp;membuat kebutuhan akan developer di Indonesia diproyeksikan masih akan tetap stabil meski&nbsp;<a href=\"https://blog.hacktiv8.com/new-normal-babak-baru-kehidupan-di-tengah-pandemi/\" style=\"color: var(--color-link); text-decoration-line: none; background-color: transparent; transition: all 0.3s ease 0s;\">pandemi</a>&nbsp;belum berakhir. Maka tidak heran kalau beberapa perusahaan teknologi rela memberikan gaji besar bagi para developer, termasuk untuk level junior. Menurut laporan dari situs pencarian kerja, Neuvoo, gaji rata-rata Front End Developer di Indonesia adalah 7,5 juta rupiah/bulan, sedangkan untuk Back End Developer berada di kisaran 8,5 juta rupiah/bulan, dan penghasilan Web Developer atau Full Stack Developer mencapai 10-25 juta rupiah per bulannya. Hal ini tentu menarik perhatian banyak orang dari berbagai latar belakang untuk bisa&nbsp;<em>upgrade skill</em>, khususnya di saat kondisi yang tidak menentu akibat diterpa pandemi.</p><h3 id=\"peluang-kerja-terbuka\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Peluang Kerja Terbuka</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Semakin besar kebutuhan akan developer, maka akan semakin banyak peluang kerja yang terbuka untuk mereka. Hal ini tentu akan memudahkan mereka yang memilih karir sebagai developer dalam mendapatkan pekerjaan yang mereka inginkan.</p><h3 id=\"masa-depan-cerah\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Masa Depan Cerah</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Memilih karir sebagai developer merupakan investasi jangka panjang karena skill yang dibutuhkan merupakan skill yang akan terus mengikuti relevansi seiring dengan berkembangnya teknologi. Selama kamu terus belajar dan mengembangkan skill pemrograman kamu, maka peluang karir yang lebih progresif akan terbuka di masa depan.</p><h3 id=\"membangun-perusahaan-sendiri\" style=\"margin: 27.2px 0px 13.6px; font-weight: 700; line-height: 1.4; font-size: 24px; color: var(--color-font-primary); font-family: var(--font-family-title); text-rendering: optimizelegibility;\">Membangun Perusahaan Sendiri</h3><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Tidak sedikit dari para developer yang lebih memilih membangun usaha sendiri ketimbang bekerja di sebuah perusahaan. Ada pula dari mereka yang berkolaborasi dengan rekan-rekannya yang lebih dulu menggeluti dunia bisnis untuk bisa mendirikan perusahaan sendiri. Hal ini membuktikan dengan menjadi developer akan dapat menciptakan banyak prospek dalam karir seseorang.<br></p><p nunito=\"\" sans\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 20.4px; margin-left: 0px; color: rgb(114, 115, 119);\">Meski sekarang kamu belum bisa belajar pemrograman secara tatap muka, kamu bisa mengikuti pelatihan seputar pemrograman dengan sistem remote yang memungkinkan kamu untuk belajar dari rumah. Pastikan kamu memilih pelatihan yang tidak hanya memberikan pemahaman tentang pemrograman, tapi juga memberikan praktik seperti membuat projek dalam dunia kerja. Siap untuk belajar pemrograman secara intensif dari rumah?</p>', '2022-10-03 02:24:49'),
(16, 'Online Courses', 'You Will Need This', '<p style=\"margin: 10px 0px; padding: 10px 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><img src=\"../gambar/2a79ea27c279e471f4d180b08d62b00a.jpg\" style=\"width: 626px; float: left;\" class=\"note-float-left\"></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh ipsum consequat nisl vel pretium lectus quam. Molestie a iaculis at erat. Id neque aliquam vestibulum morbi blandit cursus risus at. Lorem sed risus ultricies tristique nulla aliquet enim. Mauris sit amet massa vitae tortor. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Elit eget gravida cum sociis natoque. Turpis tincidunt id aliquet risus feugiat in. Non odio euismod lacinia at quis risus sed vulputate. Condimentum id venenatis a condimentum vitae sapien pellentesque. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Suspendisse in est ante in nibh mauris cursus mattis molestie. Dignissim sodales ut eu sem.</font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\"><br></font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Blandit massa enim nec dui nunc mattis. Ac ut consequat semper viverra nam libero justo laoreet sit. Non tellus orci ac auctor augue mauris augue neque. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit. Sit amet mattis vulputate enim. Massa placerat duis ultricies lacus sed turpis tincidunt. Pellentesque massa placerat duis ultricies lacus. Purus gravida quis blandit turpis cursus in hac habitasse platea. Lectus mauris ultrices eros in. Ut morbi tincidunt augue interdum velit. Sapien nec sagittis aliquam malesuada bibendum arcu. In eu mi bibendum neque egestas congue. Amet purus gravida quis blandit turpis cursus in. Velit dignissim sodales ut eu sem. Turpis egestas sed tempus urna. Rutrum quisque non tellus orci ac auctor. Velit dignissim sodales ut eu sem integer vitae justo eget. Feugiat in fermentum posuere urna nec tincidunt.</font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\"><br></font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Eros donec ac odio tempor. Mauris vitae ultricies leo integer malesuada. Enim praesent elementum facilisis leo vel fringilla. Aliquam purus sit amet luctus venenatis lectus magna. Vestibulum sed arcu non odio euismod. Id aliquet lectus proin nibh nisl condimentum id. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Vivamus at augue eget arcu dictum varius. Et tortor at risus viverra adipiscing at in tellus. Sed turpis tincidunt id aliquet risus feugiat in. Sollicitudin aliquam ultrices sagittis orci a.</font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\"><br></font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Quam quisque id diam vel quam elementum pulvinar etiam non. Purus semper eget duis at tellus at urna condimentum. Donec massa sapien faucibus et molestie ac. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Aenean et tortor at risus viverra. Ipsum a arcu cursus vitae congue mauris rhoncus. Amet facilisis magna etiam tempor orci eu lobortis elementum nibh. Congue eu consequat ac felis donec et odio pellentesque. In nibh mauris cursus mattis molestie. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Mollis nunc sed id semper risus in.</font></p>', '2022-09-23 03:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `tgl_isi` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `tgl_isi`) VALUES
(2, 'tobiasmartin05@gmail.com', 'tobias martin suena', 'e10adc3949ba59abbe56e057f20f883e', '1', '2022-10-03 12:40:43'),
(3, 'tobiasmartin13@gmail.com', 'Tobias', 'e10adc3949ba59abbe56e057f20f883e', '1', '2022-10-03 14:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_bootcamp`
--

CREATE TABLE `peserta_bootcamp` (
  `id` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `link_upload` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `isi`, `foto`, `tgl_isi`) VALUES
(7, 'Tobias Martin Suena', '<p><b>Nama</b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Tobias Martin Suena</p><p><b>Tanggal Lahir</b>&nbsp; : 5 Maret 2002</p><p><b>Status&nbsp; </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Mahasiswa Universitas Diponergoro Semarang</p>', 'tutors_1664755943_Tobias Martin Suena.jpg', '2022-10-03 01:59:33'),
(8, 'Angelica Debby Frandina', '<p><span style=\"font-weight: bolder;\">Nama</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Angelica Debby Frandina</p><p><span style=\"font-weight: bolder;\">Tanggal Lahir</span>&nbsp; : 12 Desember 2001</p><p><span style=\"font-weight: bolder;\">Status&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Mahasiswa Universitas Diponergoro Semarang</p>', 'tutors_1664756113_Angelica Debby Frandina.jpeg', '2022-10-03 02:00:03'),
(9, 'Maharani Swastika', '<p>Maharani Swastika<br></p>', 'tutors_1664756144_Maharani Swastika.jpeg', '2022-10-03 00:15:44'),
(10, 'Nikolas Widad Arrauf Hardiyanto', '<p>Nikolas Widad Arrauf Hardiyanto<br></p>', 'tutors_1664809395_WhatsApp Image 2022-10-03 at 12.42.01 PM.jpeg', '2022-10-03 15:03:15'),
(11, 'Naufal Taufiqi Akbar', '<p>Nikolas Widad Arrauf Hardiyanto<br></p>', 'tutors_1664756205_Naufal Taufiqi.jpeg', '2022-10-03 00:16:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
