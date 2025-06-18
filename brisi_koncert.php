<?php
require_once "baza.php";
include_once "admin_check.php";

$id = $_GET['id'];

$sql = "DELETE FROM koncerti WHERE id_k = '$id'";
$result = mysqli_query($link, $sql);

header("Location: admin_koncerti.php");
exit;
?>
