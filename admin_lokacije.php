<?php
require_once 'baza.php';
include_once 'seja.php';
include_once 'admin_check.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $i = $_POST['ime'];

    if (isset($_POST['id_l'])) {
        $id_l = $_POST['id_l'];
    } else {
        $id_l = '';
    }

    if (isset($_POST['id_kraj'])) {
        $id_kraj = $_POST['id_kraj'];
    } else {
        $id_kraj = '';
    }

    if (!empty($id_l)) {
        mysqli_query($link, "UPDATE lokacija SET ime = '$i', id_kraj = '$id_kraj' WHERE id_l = '$id_l'");
    } else {
        mysqli_query($link, "INSERT INTO lokacija (ime, id_kraj) VALUES ('$i', '$id_kraj')");
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

$lokacije = mysqli_query($link, "SELECT l.id_l, l.ime AS lokacija, kr.ime AS kraj 
FROM lokacija l 
JOIN kraji kr ON l.id_kraj = kr.id_kraj 
ORDER BY l.id_l ASC");

$kraji = mysqli_query($link, "SELECT * FROM kraji ORDER BY ime ASC");
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

    <label>Izberi kraj:</label><br>
    <select name="id_kraj" required>
        <?php
        while ($kraj = mysqli_fetch_array($kraji)) {
            if ($uredi && $uredi['id_kraj'] == $kraj['id_kraj']) {
                echo "<option value='" . $kraj['id_kraj'] . "' selected>" . $kraj['ime'] . "</option>";
            } else {
                echo "<option value='" . $kraj['id_kraj'] . "'>" . $kraj['ime'] . "</option>";
            }
        }
        ?>
    </select><br><br>

    <?php if ($uredi) { ?>
      <input type="hidden" name="id_l" value="<?php echo $uredi['id_l']; ?>">
    <?php } ?>

    <input type="submit" class="btn" value="Shrani"><br><br>
  </form>

  <table>
    <tr>
      <th>Ime lokacije</th>
      <th>Kraj</th>
      <th>Akcije</th>
    </tr>
    <?php while ($lok = mysqli_fetch_array($lokacije)) { ?>
      <tr>
        <td><?php echo htmlspecialchars($lok['lokacija']); ?></td>
        <td><?php echo htmlspecialchars($lok['kraj']); ?></td>
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
