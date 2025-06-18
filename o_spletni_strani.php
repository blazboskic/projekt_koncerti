<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <title>O spletni strani</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <?php include_once "glava.php"; ?>

  <div class="container">
    <h2>O spletni strani</h2><br>

    <p>Projekt <strong>koncerti-projekt.free.nf</strong> je šolski projekt, narejen kot preprosta spletna aplikacija za pregled koncertov in rezervacijo vstopnic.</p>
<br>
    <h3>Funkcionalnosti</h3>
    <ul>
      <li>Uporabnik se lahko registrira in prijavi.</li>
      <li>Prijavljeni uporabniki lahko rezervirajo vstopnice za koncerte.</li>
      <li>Uporabnik lahko pregleda svoje rezervacije.</li>
      <li>Administrator lahko dodaja, ureja in briše koncerte.</li>
      <li>Sistem preveri, ali je uporabnik administrator na podlagi email naslova.</li>
    </ul><br>

    <h3>Tehnologije</h3>
    <ul>
      <li>HTML, CSS (z osnovno podporo za mobilne naprave)</li>
      <li>PHP z uporabo seje za prijavo</li>
      <li>MySQL (povezava z bazo preko mysqli)</li>
    </ul><br>

    <h3>O razvoju</h3>
    <p>Spletna stran je bila razvita med poukom pri predmetu RSA z profesorjem Miranom Zevnikom. Koda sledi enakemu slogu kot smo se ga učili pri pouku, preprosto in brez naprednih knjižnic, s poudarkom na razumevanju osnov.</p>

    <p>Za razvoj projekta sem porabil več dni dela, vključno z urejanjem kode, testiranjem in odpravljanjem napak.</p><br><br>
    <a href="zacetna.php"class="btn">Nazaj</a><br><br><br><br>
    <a href="viri.php"class="btn">Viri</a>

  </div>

  <?php include_once "footer.php"; ?>
</body>
</html>
