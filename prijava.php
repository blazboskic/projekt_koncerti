<?php
session_start();
require_once 'baza.php';

if (isset($_POST['sub'])) {
    $e = $_POST ['email'];
    $g = $_POST ['geslo'];
    $g2 = sha1("$g");

    $sql = "SELECT * FROM uporabniki WHERE email = '$e' AND geslo = '$g2'";
    $result = mysqli_query($link, $sql);

    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_array($result);
        $_SESSION['idu'] = $row['id_u'];
        $_SESSION['name'] = $row['ime'];
        $_SESSION['surname'] = $row['priimek'];
        $_SESSION['email'] = $row['email'];
        $_SESSION['log'] = TRUE;

        header("Location: zacetna.php");
        exit;
    } else {
        header("Location: napaka_prijava.php");
        exit;
    }
}
?>
