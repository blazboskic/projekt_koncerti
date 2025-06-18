<?php
include_once "baza.php";
include_once "glava.php";

if (isset($_POST ['sub'])) {
    $i = $_POST ['ime'];
    $p = $_POST ['priimek'];
    $e = $_POST ['email'];
    $g = $_POST ['geslo'];
    $g2 = sha1("$g");

    $sql = "SELECT * FROM uporabniki WHERE email = '$e'";
    $result = mysqli_query($link, $sql);

    if (mysqli_num_rows($result) > 0) {
        header("Location: napaka_registracija.php");
        exit;
    } else {
        $sql2 = "INSERT INTO uporabniki (ime, priimek, email, geslo) VALUES ('$i', '$p', '$e', '$g2')";
        if (mysqli_query($link, $sql2)) {
            header("Location: prijavna.php");
            exit;
        } else {
            header("Location: napaka_registracija.php");
            exit;
        }
    }
}

include_once "footer.php";
?>
