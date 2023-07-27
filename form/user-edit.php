<?php
include "../koneksi.php";

// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
    $id = $_POST['id'];

    $nama_user = $_POST['nama_user'];
    $jk = $_POST['jk'];
    $alamat = $_POST['alamat'];

    // update user data
    $result = mysqli_query($con, "UPDATE tb_user SET kd_user='$id',nama_user='$nama_user',alamat='$alamat',jk='$jk' WHERE kd_user=$id");

    // Redirect to homepage to display updated user in list
    header("Location: ../user.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$result = mysqli_query($con, "SELECT * FROM tb_user WHERE kd_user=$id");

while ($sql = mysqli_fetch_array($result)) {
    $nama_user = $sql['nama_user'];
    $jk = $sql['jk'];
    $alamat = $sql['alamat'];
}
?>
<html>

<head>
    <title>Edit Data User</title>
</head>

<body>

    <form name="update" method="post" action="">
        <table border="0">
            <tr>
                <td>Nama User</td>
                <td><input type="text" name="nama_user" value=<?php echo $nama_user ?>></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td><input type="text" name="jk" value=<?php echo $jk ?>></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><input type="text" name="alamat" value=<?php echo $alamat ?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id']; ?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>

</html>