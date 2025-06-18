<?php

$host = 'localhost';
$user = 'root';
$password = '';
$database = 'projekt_koncert';

$link = mysqli_connect($host, $user, $password, $database)
    or die ("Povezave ni mogoče vzpostaviti");

mysqli_set_charset($link, "utf8");

?>
