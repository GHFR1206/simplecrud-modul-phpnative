<?php
include "../koneksi.php";

// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
    $id = $_POST['id'];

    $judul_materi = $_POST['judul_materi'];
    $isi_materi = $_POST['isi_materi'];
    $penulis = $_POST['penulis'];
    $tgl_upload = $_POST['tgl_upload'];

    // update user data
    $result = mysqli_query($con, "UPDATE tb_materi SET kd_materi='$id',judul_materi='$judul_materi',isi_materi='$isi_materi',penulis='$penulis',tgl_upload='$tgl_upload' WHERE kd_materi=$id");

    // Redirect to homepage to display updated user in list
    header("Location: ../materi.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$result = mysqli_query($con, "SELECT * FROM tb_materi WHERE kd_materi=$id");

while ($sql = mysqli_fetch_array($result)) {
    $judul_materi = $sql['judul_materi'];
    $isi_materi = $sql['isi_materi'];
    $penulis = $sql['penulis'];
    $tgl_upload = $sql['tgl_upload'];
}
?>
<html>

<head>
    <title>Edit Data Materi</title>
</head>

<body>

    <form name="update" method="post" action="">
        <table border="0">
            <tr>
                <td>Judul Materi</td>
                <td><input type="text" name="judul_materi" value=<?php echo $judul_materi ?>></td>
            </tr>
            <tr>
                <td>Isi Materi</td>
                <td><input type="text" name="isi_materi" value=<?php echo $isi_materi ?>></td>
            </tr>
            <tr>
                <td>Penulis</td>
                <td><input type="text" name="penulis" value=<?php echo $penulis ?>></td>
            </tr>
            <tr>
                <td>Tanggal Upload</td>
                <td><input type="date" name="tgl_upload" value=<?php echo $tgl_upload ?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id']; ?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>

</html>