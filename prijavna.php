<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
  <title>Prijava - Koncerti.si</title>
  
</head>
<body>
  
  <?php include_once "glava.php"; ?>
<div class="container">
   
<div class="login-box">
  <h2>Prijava</h2>
  <form action="prijava.php" method="post">
    <label>Email:</label><br>
    <input type="email" name="email" required><br>
    <label>Geslo:</label><br>
    <input type="password" name="geslo" required><br><br>
    <input type="submit" name="sub" class="btn" value="Prijava"><br><br>

</form>

  <div class="register-link">
    <p>Še nimaš računa?<br> <a href="registracijska.php"class="btn">Registriraj se</a></p>
  </div>
</div>
</div>
<?php include_once "footer.php"; ?>

</body>
</html>
