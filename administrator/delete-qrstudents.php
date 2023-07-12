<?php
$connection = mysqli_connect("localhost", "root", "", "dbs");

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

$db = mysqli_select_db($connection, 'dbs');
if (!$db) {
    die("Database selection failed: " . mysqli_error($connection));
}

if (isset($_POST['id'])) {
    $id = $_POST['id'];

    $query = "DELETE FROM qr_students WHERE id = '$id'";
    $query_run = mysqli_query($connection, $query);

    if ($query_run) {
        if (mysqli_affected_rows($connection) > 0) {
            echo '<script> alert("DATA DELETED"); </script>';
            header("location: admin.php?action=listQrStudents");
            exit; // Terminate the script after redirection
        } else {
            echo '<script> alert("No matching records found"); </script>';
        }
    } else {
        echo '<script> alert("Error: ' . mysqli_error($connection) . '"); </script>';
    }
}
?>
