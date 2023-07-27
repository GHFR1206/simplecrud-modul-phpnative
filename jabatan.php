<?php
include "koneksi.php";

if (isset($_GET['hapus'])) {
    mysqli_query($con, "delete from tb_jabatan where kd_jabatan='$_GET[id]'");
    echo "<script>alert('Data Terhapus')</script>";
}
?>

<font face="calibri" color="black" size="6"><b>
        <center>DAFTAR JABATAN
    </b></center>
</font>
<font face="calibri" color="black" size="6"><b>
        <center>PT INDIGO SOLUSI TEKNOLOGI
    </b></center>
</font>

<form method="post">
    <tr>
        <td><input style="margin-left:1112px;" type="text" name="tcari" placeholder="ketik jabatan">
    </tr>
    <tr>
        <td><input type="submit" name="cari" value="cari"></td>
    </tr>
</form>

<table border="1" width="100%" style="border-collapse:collapse">
    <tr>
        <td bgcolor="green" style="width:70px">
            <font face="calibri" color="white" size="4">
                <center><b>No</center>
            </font>
        </td>
        <td bgcolor="green" style="width:70px">
            <font face="calibri" color="white" size="4">
                <center><b>Kode Jabatan</center>
            </font>
        </td>
        <td bgcolor="green" style="width:115px">
            <font face="calibri" color="white" size="4">
                <center><b>Jabatan</center>
            </font>
        </td>
        <td bgcolor="green">
            <font face="calibri" color="white" size="4">
                <center><b>Tugas</center>
            </font>
        </td>
        <td bgcolor="green" style="width:80px">
            <font face="calibri" color="white" size="4">
                <center><b>Action</center>
            </font>
        </td>
    </tr>

    <?php
    if (isset($_POST['cari'])) {
        $sql = mysqli_query($con, "SELECT * FROM tb_jabatan where jabatan like '%$_POST[tcari]%'");
    } else {
        $sql = mysqli_query($con, "SELECT * FROM tb_jabatan");
    }
    $no = 0;
    while ($data = mysqli_fetch_array($sql)) {
        $no++
    ?>

        <tr>
            <td>
                <center><?php echo $no ?></center>
            </td>
            <td>
                <center><?php echo $data['kd_jabatan'] ?></center>
            </td>
            <td>
                <center><?php echo $data['jabatan'] ?></center>
            </td>
            <td><br><?php echo $data['tugas'] ?><br><br></td>
            <td><a href="form/jabatan-edit.php?id=<?php echo $data['kd_jabatan'] ?>">Edit</a>
                <a href="?hapus&id=<?php echo $data['kd_jabatan'] ?>">Hapus</a>
            </td>
        </tr>
    <?php } ?>
</table>

</form>