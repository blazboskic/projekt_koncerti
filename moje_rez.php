<?php
require_once 'baza.php';
include_once 'seja.php';

if (!isset($_SESSION['idu'])) {
    header("Location: napaka_dostop.php");
    exit;
}
$id = $_SESSION['idu'];

if (isset($_GET['preklici'])) {
    $id_rez = $_GET['preklici'];
    $sql_del = "DELETE FROM rezervacija WHERE id_r = '$id_rez' AND id_u = '$id'";
    mysqli_query($link, $sql_del);
    header("Location: moje_rez.php");
    exit;
}

$sql = "SELECT r.id_r, r.stevilo_vstopnic, r.datum_rezervacije, 
               k.naziv, k.datum, k.cena_vstopnine, l.ime AS lokacija
        FROM rezervacija r
        INNER JOIN koncerti k ON r.id_k = k.id_k
        INNER JOIN lokacija l ON k.id_l = l.id_l
        WHERE r.id_u = '$id'
        ORDER BY r.datum_rezervacije DESC";

$result = mysqli_query($link, $sql);
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Moje rezervacije</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once 'glava.php'; ?>

<div class="container">
  <h2>Moje rezervacije</h2><br>

  <?php
  if (mysqli_num_rows($result) == 0) {
      echo "<p>Nimate rezervacij.</p><br><br>";
  } else {
      echo "<table>";
      echo "<tr>";
      echo "<th>Koncert</th>";
      echo "<th>Datum koncerta</th>";
      echo "<th>Lokacija</th>";
      echo "<th>Št. vstopnic</th>";
      echo "<th>Skupna cena</th>";
      echo "<th>Datum rezervacije</th>";
      echo "<th>Akcija</th>";
      echo "</tr>";

      while ($row = mysqli_fetch_array($result)) {
          $skupna = $row['stevilo_vstopnic'] * $row['cena_vstopnine'];

          echo "<tr>";
          echo "<td>" . htmlspecialchars($row['naziv']) . "</td>";
          echo "<td>" . htmlspecialchars($row['datum']) . "</td>";
          echo "<td>" . htmlspecialchars($row['lokacija']) . "</td>";
          echo "<td>" . $row['stevilo_vstopnic'] . "</td>";
          echo "<td>" . number_format($skupna, 2) . " €</td>";
          echo "<td>" . $row['datum_rezervacije'] . "</td>";
          echo "<td><a href='moje_rez.php?preklici=" . $row['id_r'] . "'>Prekliči rezervacijo</a></td>";
          echo "</tr>";
      }

      echo "</table><br><br>";
  }
  ?>

  <a href="zacetna.php" class="btn">Nazaj</a><br><br>
</div>

<?php include_once 'footer.php'; ?>
</body>
</html>
