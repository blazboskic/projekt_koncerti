<?php
include_once "baza.php";
include_once "seja.php";
include_once "admin_check.php";


$id = $_GET ['id'];
$sql = "SELECT * FROM koncerti WHERE id_k = '$id'";
$rez = mysqli_query($link, $sql);
$koncert = mysqli_fetch_array($rez);

$lokacije = mysqli_query($link, "SELECT * FROM lokacija");
$skupine = mysqli_query($link, "SELECT * FROM skupina");

$res_s = mysqli_query($link, "SELECT id_s FROM koncert_skupina WHERE id_k = '$id'");
$row_s = mysqli_fetch_array($res_s);
$trenutna_skupina = isset($row_s['id_s']) ? $row_s['id_s'] : '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $naziv = $_POST ['naziv'];
    $datum = $_POST ['datum'];
    $cena = $_POST ['cena'];
    $obiski = $_POST ['stevilo_obiskov'];
    $opis = $_POST ['opis'];
    $id_l = $_POST ['id_l'];
    $id_s = $_POST ['id_s'];

    mysqli_query($link, "UPDATE koncerti SET naziv = '$naziv', datum = '$datum', cena_vstopnine = '$cena', stevilo_obiskov = '$obiski', opis = '$opis', id_l = '$id_l' WHERE id_k = '$id'");
    mysqli_query($link, "DELETE FROM koncert_skupina WHERE id_k = '$id'");
    mysqli_query($link, "INSERT INTO koncert_skupina (id_k, id_s) VALUES ('$id', '$id_s')");

    header("Location=admin_koncerti.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <title>Uredi koncert</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>

<div class="container">
  <h2>Uredi koncert</h2>
  <a href="admin_koncerti.php" class="btn">Nazaj</a><br><br>

  <form method="POST">
    <label>Naziv koncerta:</label><br>
    <input type="text" name="naziv" value="<?php echo $koncert['naziv']; ?>" required><br><br>

    <label>Datum:</label><br>
    <input type="date" name="datum" value="<?php echo $koncert['datum']; ?>" required><br><br>

    <label>Cena vstopnice (€):</label><br>
    <input type="number" step="0.01" name="cena" value="<?php echo $koncert['cena_vstopnine']; ?>" required><br><br>

    <label>Število obiskov:</label><br>
    <input type="number" name="stevilo_obiskov" value="<?php echo $koncert['stevilo_obiskov']; ?>" required><br><br>

    <label>Opis koncerta:</label><br>
    <textarea name="opis" rows="6" cols="50"><?php echo $koncert['opis']; ?></textarea><br><br>

    <label>Skupina:</label><br>
    <select name="id_s" required>
      <?php
      while ($skup = mysqli_fetch_array($skupine)) {
          if ($skup['id_s'] == $trenutna_skupina) {
              echo "<option value='" . $skup['id_s'] . "' selected>" . htmlspecialchars($skup['ime_skupine']) . "</option>";
          } else {
              echo "<option value='" . $skup['id_s'] . "'>" . htmlspecialchars($skup['ime_skupine']) . "</option>";
          }
      }
      ?>
    </select><br><br>

    <label>Lokacija:</label><br>
    <select name="id_l" required>
      <?php
      while ($lok = mysqli_fetch_array($lokacije)) {
          if ($lok['id_l'] == $koncert['id_l']) {
              echo "<option value='" . $lok['id_l'] . "' selected>" . htmlspecialchars($lok['ime']) . "</option>";
          } else {
              echo "<option value='" . $lok['id_l'] . "'>" . htmlspecialchars($lok['ime']) . "</option>";
          }
      }
      ?>
    </select><br><br>

    <input type="submit" value="Shrani spremembe" class="btn"><br><br>
  </form>
</div>

<?php include_once "footer.php"; ?>
</body>
</html>
