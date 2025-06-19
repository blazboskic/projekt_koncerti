<?php
require_once 'baza.php';
include_once 'seja.php';
include_once 'admin_check.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $i = $_POST ['ime'];
    
    if (isset($_POST['id_l'])) {
       $id_l = $_POST['id_l'];
    } else {
       $id_l = '';
    }


    if (!empty($id_l)) {
        mysqli_query($link, "UPDATE lokacija SET ime = '$i' WHERE id_l = '$id_l'");
    } else {
        mysqli_query($link, "INSERT INTO lokacija (ime) VALUES ('$i')");
    }

    header("Location: admin_lokacije.php");
    exit;
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    mysqli_query($link, "DELETE FROM lokacija WHERE id_l = '$id'");
    header("Location: admin_lokacije.php");
    exit;
}

$uredi = null;
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $result = mysqli_query($link, "SELECT * FROM lokacija WHERE id_l = '$id'");
    $uredi = mysqli_fetch_array($result);
}

$lokacije = mysqli_query($link, "SELECT * FROM lokacija ORDER BY id_l ASC");
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin – Lokacije</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>

<div class="container">
  <h2>Administracija – Lokacije</h2>
  <a href="admin_koncerti.php" class="btn">Nazaj</a><br><br>

  <form method="POST">
    <h3>Upravljanje z lokacijami</h3><br>
    <label>Ime lokacije:</label><br>
    <input type="text" name="ime" value="<?php if ($uredi) { echo htmlspecialchars($uredi['ime']); } ?>" required><br><br>

    <?php if ($uredi) { ?>
      <input type="hidden" name="id_l" value="<?php echo $uredi['id_l']; ?>">
    <?php } ?>

    <input type="submit" class="btn" value="Shrani"><br><br>
  </form>

  <table>
    <tr>
      
      <th>Ime</th>
      <th>Akcije</th>
    </tr>
    <?php while ($lok = mysqli_fetch_array($lokacije)) { ?>
      <tr>
        
        <td><?php echo htmlspecialchars($lok['ime']); ?></td>
        <td>
          <a href="admin_lokacije.php?edit=<?php echo $lok['id_l']; ?>">Uredi</a> |
          <a href="admin_lokacije.php?delete=<?php echo $lok['id_l']; ?>">Izbriši</a>
        </td>
      </tr>
    <?php } ?>
  </table>
</div>

<?php include_once "footer.php"; ?>
</body>
</html>
