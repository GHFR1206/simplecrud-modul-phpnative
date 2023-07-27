<?php
include "../koneksi.php";

// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
    $id = $_POST['id'];

    $jabatan = $_POST['jabatan'];
    $tugas = $_POST['tugas'];

    // update user data
    $result = mysqli_query($con, "UPDATE tb_jabatan SET kd_jabatan='$id',jabatan='$jabatan',tugas='$tugas' WHERE kd_jabatan=$id");

    // Redirect to homepage to display updated user in list
    header("Location: ../jabatan.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$result = mysqli_query($con, "SELECT * FROM tb_jabatan WHERE kd_jabatan=$id");

while ($sql = mysqli_fetch_array($result)) {
    $jabatan = $sql['jabatan'];
    $tugas = $sql['tugas'];
}
?>
<html>

<head>
    <title>Edit Data Jabatan</title>
</head>

<body>

    <form name="update" method="post" action="">
        <table border="0">
            <tr>
                <td>Jabatan</td>
                <td><input type="text" name="jabatan" value=<?php echo $jabatan ?>></td>
            </tr>
            <tr>
                <td>Tugas</td>
                <td><input type="text" name="tugas" value=<?php echo $tugas ?>></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id']; ?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>

</html>