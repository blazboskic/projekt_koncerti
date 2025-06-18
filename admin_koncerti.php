<?php 
require_once "baza.php";
include_once "seja.php";
include_once "admin_check.php";

$lokacije = mysqli_query($link, "SELECT * FROM lokacija");
$skupine = mysqli_query($link, "SELECT * FROM skupina");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $n = $_POST ['naziv'];
    $d = $_POST ['datum'];
    $c = $_POST ['cena'];
    $o = $_POST ['stevilo_obiskov'];
    $op = $_POST ['opis'];
    $id_l = $_POST ['id_l'];
    $id_s = $_POST ['id_s'];

    $sql = "INSERT INTO koncerti (naziv, datum, cena_vstopnine, stevilo_obiskov, opis, id_l)
            VALUES ('$n', '$d', '$c', '$o', '$op', '$id_l')";

    if (mysqli_query($link, $sql)) {
        $id_k = mysqli_insert_id($link);
        mysqli_query($link, "INSERT INTO koncert_skupina (id_k, id_s) VALUES ('$id_k', '$id_s')");
    } else {
        echo "Napaka pri vnosu: " . mysqli_error($link);
    }
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    mysqli_query($link, "DELETE FROM rezervacija WHERE id_k = '$id'");
    mysqli_query($link, "DELETE FROM koncert_skupina WHERE id_k = '$id'");
    mysqli_query($link, "DELETE FROM koncerti WHERE id_k = '$id'");
}

$sql = "SELECT k.id_k, k.naziv, k.datum, k.cena_vstopnine, k.stevilo_obiskov, 
        l.ime AS lokacija, s.ime_skupine
        FROM koncerti k
        INNER JOIN lokacija l ON k.id_l = l.id_l
        INNER JOIN koncert_skupina ks ON k.id_k = ks.id_k
        INNER JOIN skupina s ON ks.id_s = s.id_s
        ORDER BY k.datum ASC";

$rezultat = mysqli_query($link, $sql);
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Administracija – Koncerti</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>

<div class="container">
  <h2>Administracija – Koncerti</h2>
  <a href="admin_lokacije.php" class="btn">Uredi lokacije</a>
  <a href="admin_skupine.php" class="btn">Uredi skupine</a><br><br>

  <form method="POST">
    <h3>Dodaj nov koncert</h3><br>

    <label>Naziv koncerta:</label><br>
    <input type="text" name="naziv" required><br><br>

    <label>Datum:</label><br>
    <input type="date" name="datum" required><br><br>

    <label>Cena vstopnice (€):</label><br>
    <input type="number" step="0.01" name="cena" required><br><br>

    <label>Število obiskov:</label><br>
    <input type="number" name="stevilo_obiskov" required><br><br>

    <label>Opis koncerta:</label><br>
    <textarea name="opis" rows="4" cols="50"></textarea><br><br>

    <label>Lokacija:</label><br>
    <select name="id_l" required>
      <option value="">-- Izberi lokacijo --</option>
      <?php
      while ($lok = mysqli_fetch_array($lokacije)) {
          echo "<option value='" . $lok['id_l'] . "'>" . $lok['ime'] . "</option>";
      }
      ?>
    </select><br><br>

    <label>Skupina:</label><br>
    <select name="id_s" required>
      <option value="">-- Izberi skupino --</option>
      <?php
      while ($skup = mysqli_fetch_array($skupine)) {
          echo "<option value='" . $skup['id_s'] . "'>" . $skup['ime_skupine'] . "</option>";
      }
      ?>
    </select><br><br>

    <input type="submit" class="btn" value="Dodaj koncert"><br><br>
  </form>

  <table>
    <tr>
      <th>Naziv</th>
      <th>Skupina</th>
      <th>Datum</th>
      <th>Cena</th>
      <th>Obiski</th>
      <th>Lokacija</th>
      <th>Akcije</th>
    </tr>
    <?php
    while ($row = mysqli_fetch_array($rezultat)) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['naziv']) . "</td>";
        echo "<td>" . htmlspecialchars($row['ime_skupine']) . "</td>";
        echo "<td>" . htmlspecialchars($row['datum']) . "</td>";
        echo "<td>" . htmlspecialchars($row['cena_vstopnine']) . " €</td>";
        echo "<td>" . htmlspecialchars($row['stevilo_obiskov']) . "</td>";
        echo "<td>" . htmlspecialchars($row['lokacija']) . "</td>";
        echo "<td><a href='uredi_koncert.php?id=" . $row['id_k'] . "'>Uredi</a> | <a href='admin_koncerti.php?delete=" . $row['id_k'] . "'>Izbriši</a></td>";
        echo "</tr>";
    }
    ?>
  </table><br>

  <a href="zacetna.php" class="btn">Nazaj</a><br><br>
</div>

<?php include_once "footer.php"; ?>
</body>
</html>
