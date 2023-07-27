<?php include "koneksi.php";

if (isset($_GET['hapus'])) {
    mysqli_query($con, "delete from tb_user where kd_user='$_GET[id]'");
    echo "<script>alert('Data Terhapus')</script>";
}

?>

<font face="calibri" color="black" size="6"><b>
        <center>DAFTAR USER
    </b></center>
</font>
<font face="calibri" color="black" size="6"><b>
        <center>PT INDIGO SOLUSI TEKNOLOGI
    </b></center>
</font>
<br>
<table border="1" width="100%" style="border-collapse:collapse">
    <tr>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>No</center>
            </font>
        </td>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>Nama User</center>
            </font>
        </td>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>Jenis Kelamin</center>
            </font>
        </td>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>Alamat</center>
            </font>
        </td>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>Kode Jabatan</center>
            </font>
        </td>
        <td bgcolor="navy">
            <font face="calibri" color="white" size="4">
                <center><b>Action</center>
            </font>
        </td>
    </tr>

    <?php
    $sql = mysqli_query($con, "select * from tb_user");
    while ($data = mysqli_fetch_array($sql)) {
    ?>
        <tr>
            <td>
                <center><?php echo $data['kd_user'] ?></center>
            </td>
            <td><br>
                <center><?php echo $data['nama_user'] ?></center><br>
            </td>
            <td>
                <center><?php echo $data['jk'] ?></center>
            </td>
            <td>
                <center><?php echo $data['alamat'] ?></center>
            </td>
            <td>
                <center><?php echo $data['kd_jabatan'] ?></center>
            </td>
            <td>
                <center><a href="form/user-edit.php?id=<?php echo $data['kd_jabatan'] ?>">Edit</a>
                    <a href="?hapus&id=<?php echo $data['kd_jabatan'] ?>">Hapus</a>
                </center>
            </td>
        </tr>
    <?php } ?>
</table>