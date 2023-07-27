-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2022 pada 11.05
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_modul`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `kd_jabatan` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `tugas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`kd_jabatan`, `jabatan`, `tugas`) VALUES
(1, 'IT Support', 'Memastikan komputer yang digunakan dapat berfungsi normal/berjalan seperti seharusnya, Harus memastikan bahwa semua komputer yang digunakan oleh pengguna terhubung ke jaringan, Melakukan pengecekan jika aplikasi-aplikasi yang dipakai berfungsi.'),
(2, 'Programmer', 'Menciptakan program adalah tugas utama seorang programmer. Tugas ini memaksa mereka memahami dan mampu menulis bahasa pemrograman seperti C++ dan Java. Dari tulisan kode mereka, terciptalah program yang dapat dimengerti dan diikuti oleh komputer.'),
(3, 'UI/UX Designer', 'UI Designer memiliki tugas menentukan tampilan aplikasi dan/atau situs. Nah kalau UX Designer menentukan bagaimana suatu aplikasi dan/atau situs bisa beroperasi dengan mudah. Tapi dalam bekerja, keduanya harus berlandaskan pada hasil riset supaya aplikasi dan/atau situs yang dirancang benar-benar efektif.'),
(4, 'Database Administrator', 'Database Administrator adalah sosok yang bertanggung jawab untuk kinerja, keamanan dan integritas database. Posisi ini juga terlibat untuk merencanakan dan mengembangkan database serta memecahkan masalah yang berkaitan dengan database atas nama pengguna database itu sendiri. Seorang admin database bukan hanya memahami sisi teknis untuk mengelola, memelihara an juga menciptakan database saja. Namun juga harus tahu organisasi di belakangnya serta fungsi setiap database dengan baik.'),
(5, 'System Analyst', 'Seorang System Analist mempunyai tugas melakukan analisis sistem, merancang sistem kemudian diimplementasikan pada Perusahaan serta bertanggung jawab terhadap hasil yang ingin di capai oleh Perusahaan.'),
(6, 'Project Manager', 'Project Manager adalah seseorang yang mempunyai tanggung jawab penuh terhadap tercapainya tujuan dan sasaran proyek dengan mempimpin, merencanakan, mengkoordinasi, dan mengendalikan sumber daya yang ada.'),
(7, 'Business Analyst', 'Business Analyst dibutuhkan karena perusahaan harus melakukan pengkajian yang benar dan akurat akan rencana strategis, model bisnis, dinamika, masalah, dan potensi yang ada. Seorang business analyst diharapkan mampu menjalankan tugas-tugas utamanya agar perusahaan bisa bertahan, mencapai target, dan berkembang.'),
(8, 'Administrator', 'Administrator adalah sebagai berikut, Merancang dan melakukan instalasi hardware dan software. Mendefinisikan dan megidentifikasikan atribut yang digunakan oleh user dan melakukan dokumentasi konfigurasi.'),
(9, 'Content Creator', 'Content creator bertugas mengumpulkan ide serta data, kemudian melakukan riset untuk membuat konsep yang akan dijadikan sebuah konten. Setelah itu, mereka akan menciptakan konten yang sesuai dengan identitas dan branding yang diinginkan dalam memenuhi tujuan yang disepakati dari sebuat konten.'),
(10, 'Data Analyst', 'Data Analyst adalah seseorang yang meneliti informasi menggunakan alat analisis data. Hasil bermakna yang mereka ambil dari data mentah membantu pemberi kerja atau klien mereka membuat keputusan penting dengan mengidentifikasi berbagai fakta dan tren. Data analyst biasanya menggunakan berbagai program dan aplikasi pengolahan data dalam pekerjaan sehari-harinya, seperti Microsoft Excel, Tableau, dan SQL.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_materi`
--

CREATE TABLE `tb_materi` (
  `kd_materi` int(11) NOT NULL,
  `judul_materi` varchar(100) NOT NULL,
  `isi_materi` text NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_materi`
--

INSERT INTO `tb_materi` (`kd_materi`, `judul_materi`, `isi_materi`, `penulis`, `tgl_upload`) VALUES
(1, 'HTTP', 'HTTP  adalah protokol jaringan lapisan aplikasi (application layer) yang dikembangkan untuk membantu proses transfer antar komputer. Protokol ini berguna untuk mentransfer informasi seperti dokumen, file, gambar, dan video antar komputer.', 'Ghifari Hamdanigiar', '2022-05-19'),
(2, 'OSI Layer', 'Model referensi jaringan terbuka OSI atau OSI Reference Model for open networking adalah sebuah model arsitektural jaringan yang dikembangkan oleh badan International Organization for Standardization di Eropa pada tahun 1977. OSI sendiri merupakan singkatan dari Open System Interconnection.', 'Faishal Rahman', '2022-05-19'),
(3, 'TCP/IP', 'TCP/IP adalah standar komunikasi data yang digunakan oleh komunitas internet dalam proses tukar-menukar data dari satu komputer ke komputer lain di dalam jaringan Internet. Protokol ini tidaklah dapat berdiri sendiri, karena memang protokol ini berupa kumpulan protokol (protocol suite). Protokol ini juga merupakan protokol yang paling banyak digunakan saat ini. Data tersebut diimplementasikan dalam bentuk perangkat lunak (software) di sistem operasi. Istilah yang diberikan kepada perangkat lunak ini adalah TCP/IP stack.', 'M. Revi Daerobi', '2022-05-19'),
(4, 'NIC', 'Kartu Jaringan atau disebut dengan istilah NIC (Network Interface Card) atau LAN Card atau Etherned Card merupakan perangkat yang menyediakan media untuk menghubungkan antar komputer. Kebanyakan Kartu Jaringan berjenis kartu internal, yaitu kartu jaringan yang di pasang pada slot ekspansi di dalam komputer.', 'Sandy Pamungkas', '2022-05-19'),
(5, 'Mikrotik', 'Mikrotik adalah sistem operasi yang berbasis perangkat lunak (software) yang dipergunakan untuk menjadikan komputer sebagai router sebuah jaringan. Mikrotik juga menggunakan sistem operasi berbasis Linux dan menjadi dasar network router. Sistem operasi (OS) ini sangat cocok untuk membangun administrasi jaringan komputer yang berskala kecil hingga besar. ', 'Al - Farizi Saugi Putra', '2022-05-19'),
(6, 'Hosting dan Domain', 'Hosting adalah lokasi atau media untuk menyimpan data dalam bentuk tulisan, gambar atau video, dan Domain adalah nama atau alamat dari sebuah website. Ya, sebuah website pastinya memiliki nama.', 'M. Fathih Azka', '2022-05-19'),
(7, 'Fiber Optic', 'Fiber optik adalah saluran transmisi atau sejenis kabel yang terbuat dari kaca atau plastik yang sangat halus dan lebih kecil dari sehelai rambut, dan dapat digunakan untuk mentransmisikan sinyal cahaya dari suatu tempat ke tempat lain. Sumber cahaya yang digunakan biasanya adalah laser atau LED', 'M. Raihan', '2022-05-19'),
(8, 'Wireless', 'Wireless adalah jaringan yang menghubungkan telekomunikasi perangkat satu dengan yang lainnya tanpa menggunakan media kabel sebagai media penghantarnya. Sebagai gantinya, jaringan nirkabel yang digunakan adalah media transmisi untuk mengantarkan gelombang elektromagnetik.', 'Sabarrudin Azra', '2022-05-19'),
(9, 'VLAN', 'Virtual Local Area Network atau VLAN adalah sekumpulan perangkat yang ada di satu atau lebih jaringan LAN dan dikonfigurasikan oleh perangkat lunak sehingga dapat berkomunikasi antara satu dengan lainnya seolah-olah berada di saluran yang sama.', 'Ruffy', '2022-05-19'),
(10, 'Linux', 'Linux adalah sebuah sistem operasi seperti Unix yang menggunakan kernel linux sebagai inti dan disertakan aplikasi dan module pendukung lain agar berfungsi dan bisa digunakan secara utuh layaknya sistem operasi pada umumnya. Sistem operasi ini bersifat bebas digunakan dan opensource sehingga bisa dipakai dan dikembangkan oleh semua pihak secara gratis.', 'Hacker', '2022-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `kd_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `kd_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`kd_user`, `nama_user`, `jk`, `alamat`, `kd_jabatan`) VALUES
(1, 'Alexander Graham Bell', 'Laki-Laki', 'Ciomas', 1),
(2, 'Thomas Alfa Edison', 'Laki-Laki', 'Cibedug', 2),
(3, 'Leonardo De Caprio', 'Laki-Laki', 'Cibinong', 3),
(4, 'Christina Aguera', 'Perempuan', 'Ciawi', 4),
(5, 'Esmeralda', 'Perempuan', 'Cikreteg', 5),
(6, 'Maria Mercedes', 'Perempuan', 'Cibungbulang', 6),
(7, 'Cici Kadarsih', 'Perempuan', 'Cisalada', 7),
(8, 'Tobey Maguire', 'Laki-Laki', 'Cigombong', 8),
(9, 'Gabriel Batistuta', 'Laki-Laki', 'Ciburuy', 9),
(10, 'Asep Dadang', 'Laki-Laki', 'Ciburayut', 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`kd_jabatan`);

--
-- Indeks untuk tabel `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`kd_materi`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `kd_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `kd_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `kd_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
