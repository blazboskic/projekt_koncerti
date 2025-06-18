<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
  <title>Registracija - Koncerti.si</title>
 
</head>
<body>
  

<?php include_once "glava.php"; ?>

<div class="container">

<div>
  <h2>Registracija</h2>
  <form action="registracija.php" method="post">
    <label>Ime:</label><br>
    <input type="text" name="ime" required><br>
    <label>Priimek:</label><br>
    <input type="text" name="priimek" required><br>
    <label>Email:</label><br>
    <input type="email" name="email" required><br>
    <label>Geslo:</label><br>
    <input type="password" name="geslo" required><br><br>
    <input type="submit" name="sub" class="btn" value="Registriraj se"><br><br>
</form>

  <div>
    <p>Že imaš račun?<br> <a href="prijavna.php" class="btn" >Prijavi se</a></p>
  </div>
</div>
</div>
<?php include_once "footer.php"; ?>

</body>
</html>
