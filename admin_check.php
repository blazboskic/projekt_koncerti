<?php
include_once "seja.php";

if (!isset($_SESSION['idu']) || !isset($_SESSION['email'])) {
    die("Dostop zavrnjen – niste prijavljeni.");
}

$email = $_SESSION['email'];
if (!str_ends_with($email, '@admin.user')) {
    die("Dostop zavrnjen – nimate administratorskih pravic.");
}

if (!isset($_SESSION['idu']) || !isset($_SESSION['email']) || !str_ends_with($_SESSION['email'], '@admin.user')) {
    header("Location: zacetna.php");
    exit;
}
?>
