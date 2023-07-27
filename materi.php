<?php include "koneksi.php";

if (isset($_GET['hapus'])) {
    mysqli_query($con, "delete from tb_materi where kd_materi='$_GET[id]'");
    echo "<script>alert('Data Terhapus')</script>";
}

?>

<font face="calibri" color="black" size="6"><b>
        <center>DAFTAR MATERI
    </b></center>
</font>
<font face="calibri" color="black" size="6"><b>
        <center>PT INDIGO SOLUSI TEKNOLOGI
    </b></center>
</font>
<br>
<table border="1" width="100%" style="border-collapse:collapse">
    <tr>
        <td bgcolor="orange" style="width:50px">
            <font face="calibri" color="white" size="4">
                <center><b>No</center>
            </font>
        </td>
        <td bgcolor="orange" style="width:120px">
            <font face="calibri" color="white" size="4">
                <center><b>Judul Materi</center>
            </font>
        </td>
        <td bgcolor="orange">
            <font face="calibri" color="white" size="4">
                <center><b>Isi Materi</center>
            </font>
        </td>
        <td bgcolor="orange">
            <font face="calibri" color="white" size="4">
                <center><b>Penulis</center>
            </font>
        </td>
        <td bgcolor="orange" style="width:100px">
            <font face="calibri" color="white" size="4">
                <center><b>Tanggal Upload</center>
            </font>
        </td>
        <td bgcolor="orange">
            <font face="calibri" color="white" size="4">
                <center><b>Action</center>
            </font>
        </td>
    </tr>

    <?php
    $sql = mysqli_query($con, "select * from tb_materi");
    while ($data = mysqli_fetch_array($sql)) {
    ?>
        <tr>
            <td>
                <center><?php echo $data['kd_materi'] ?></center>
            </td>
            <td>
                <center><?php echo $data['judul_materi'] ?></center>
            </td>
            <td><br><?php echo $data['isi_materi'] ?><br><br></td>
            <td>
                <center><?php echo $data['penulis'] ?></center>
            </td>
            <td>
                <center><?php echo $data['tgl_upload'] ?></center>
            </td>
            <td>
                <center><a href="form/materi-edit.php?id=<?php echo $data['kd_materi'] ?>">Edit</a>
                    <a href="?hapus&id=<?php echo $data['kd_materi'] ?>">Hapus</a>
                </center>
            </td>
        </tr>
    <?php } ?>
</table>