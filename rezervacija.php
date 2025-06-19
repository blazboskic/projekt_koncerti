<?php
include_once "baza.php";
include_once "seja.php";

if (!isset($_SESSION['idu'])) {
    header("Location: napaka_dostop.php");
    exit;
}

$id_k = $_GET['id'];

$sql_k = "SELECT k.*, l.ime AS lokacija, kr.ime AS kraj 
          FROM koncerti k
          JOIN lokacija l ON k.id_l = l.id_l
          JOIN kraji kr ON l.id_kraj = kr.id_kraj
          WHERE k.id_k = '$id_k'";

$rez_k = mysqli_query($link, $sql_k);
$koncert = mysqli_fetch_array($rez_k);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $kolicina = $_POST['stevilo_vstopnic'];
    $id_u = $_SESSION['idu'];
    $datum = date("Y-m-d");

    if ($kolicina > 0) {
        $sql = "INSERT INTO rezervacija (stevilo_vstopnic, datum_rezervacije, id_u, id_k)
                VALUES ('$kolicina', '$datum', '$id_u', '$id_k')";
        if (mysqli_query($link, $sql)) {
            header("Location: moje_rez.php");
            exit;
        } else {
            echo "Napaka pri vnosu rezervacije.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rezervacija - <?php echo htmlspecialchars($koncert['naziv']); ?></title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>

<div class="container">
  <h2>Rezervacija: <?php echo htmlspecialchars($koncert['naziv']); ?></h2><br>

  <?php
    $lokacija = htmlspecialchars($koncert['lokacija']);
    $kraj = htmlspecialchars($koncert['kraj']);
  ?>

  <div>
    <p><strong>Datum:</strong> <?php echo htmlspecialchars($koncert['datum']); ?></p>
    <p><strong>Lokacija:</strong> <?php echo $lokacija . " – " . $kraj; ?></p>
    <p><strong>Cena vstopnice:</strong> <?php echo number_format($koncert['cena_vstopnine'], 2); ?> €</p>
    <p><strong>Opis:</strong> <?php echo htmlspecialchars($koncert['opis']); ?></p>
  </div><br>

  <form method="POST">
    <label><b>Število vstopnic:</b></label><br>
    <input type="number" name="stevilo_vstopnic" min="1" max="10" required><br><br>
    <input type="submit" value="Potrdi rezervacijo" class="btn"><br><br>
  </form>

  <a href="zacetna.php" class="btn">Nazaj</a><br><br>
</div>

<?php include_once "footer.php"; ?>
</body>
</html>
