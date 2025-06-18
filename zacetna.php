<?php
include_once "baza.php";
include_once "seja.php";

if (isset($_GET ['iskanje'])) {
    $iskanje = $_GET ['iskanje'];
} else {
    $iskanje = '';
}

$order_by = "k.datum ASC";

$sql = "SELECT k.id_k, k.naziv, k.datum, k.cena_vstopnine, k.opis,
        l.ime AS lokacija, kr.ime AS kraj, s.ime_skupine
        FROM koncerti k
        JOIN lokacija l ON k.id_l = l.id_l
        JOIN kraji kr ON l.id_kraj = kr.id_kraj
        INNER JOIN koncert_skupina ks ON k.id_k = ks.id_k
        INNER JOIN skupina s ON ks.id_s = s.id_s";

if ($iskanje != '') {
    $iskanje = mysqli_real_escape_string($link, $iskanje);
    $sql .= " WHERE 
        k.naziv LIKE '%$iskanje%' OR 
        l.ime LIKE '%$iskanje%' OR 
        kr.ime LIKE '%$iskanje%' OR 
        s.ime_skupine LIKE '%$iskanje%'";
}

$sql .= " ORDER BY $order_by";

$rezultat = mysqli_query($link, $sql);
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Začetna stran</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>
<div>
<div class="container">

  <section>
    <a href="o_spletni_strani.php">
      <h2>O spletni strani</h2>
    </a>
    <p>Na <b>koncerti-projekt.free.nf</b> lahko najdeš prihajajoče koncerte v Sloveniji, preveriš kdo nastopa, cene vstopnic in rezerviraš svoj sedež!</p>
  </section>

  <form method="GET" class="filter">
    <h3>Išči koncerte</h3>
    <input type="text" name="iskanje" placeholder="Išči po skupini, lokaciji..." value="<?php echo htmlspecialchars($iskanje); ?>"><br><br>
    <button type="submit" class="btn">Išči</button><br><br>
  </form>

  <section class="koncerti">
    <h2>Prihajajoči koncerti</h2>

    <?php
    while ($row = mysqli_fetch_array($rezultat)) {
        $naziv = htmlspecialchars($row['naziv']);
        $skupina = htmlspecialchars($row['ime_skupine']);
        $lokacija = htmlspecialchars($row['lokacija']);
        $datum = htmlspecialchars($row['datum']);
        $cena = number_format($row['cena_vstopnine'], 2);
        $opis = htmlspecialchars($row['opis']);
        $id = $row['id_k'];

        echo "<div class='koncert'>";
        echo "<h3>" . $naziv . " – " . $skupina . "</h3>";
        echo "<p><strong>Lokacija:</strong> " . $lokacija . "</p>";
        echo "<p><strong>Datum:</strong> " . $datum . "</p>";
        echo "<p><strong>Cena vstopnice:</strong> " . $cena . " €</p>";
        echo "<p><strong>Opis:</strong> " . $opis . "</p>";
        echo "<a href='rezervacija.php?id=" . $id . "' class='btn'>Rezerviraj vstopnico</a>";
        echo "</div>";
    }
    ?>
  </section>
</div>
<?php include_once "footer.php"; ?>
</div>
</body>
</html>
