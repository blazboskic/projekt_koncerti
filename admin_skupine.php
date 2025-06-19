<?php
require_once 'baza.php';
include_once 'seja.php';
include_once 'admin_check.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $i = $_POST ['ime_skupine'];
    $o = $_POST ['opis'];

    if (isset($_POST['id_s'])) {
    $id_s = $_POST['id_s'];
} else {
    $id_s = '';
}


    if (!empty($id_s)) {
        mysqli_query($link, "UPDATE skupina SET ime_skupine = '$i', opis = '$o' WHERE id_s = '$id_s'");
    } else {
        mysqli_query($link, "INSERT INTO skupina (ime_skupine, opis) VALUES ('$i', '$o')");
    }

    header("Location: admin_skupine.php");
    exit;
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    mysqli_query($link, "DELETE FROM skupina WHERE id_s = '$id'");
    header("Location: admin_skupine.php");
    exit;
}

$uredi = null;
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $result = mysqli_query($link, "SELECT * FROM skupina WHERE id_s = '$id'");
    $uredi = mysqli_fetch_array($result);
}

$skupine = mysqli_query($link, "SELECT * FROM skupina ORDER BY id_s ASC");
?>

<!DOCTYPE html>
<html lang="sl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin – Skupine</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

<?php include_once "glava.php"; ?>

<div class="container">
  <h2>Administracija – Skupine</h2>
  <a href="admin_koncerti.php" class="btn">Nazaj</a><br><br>

  <form method="POST">
    <h3>Upravljanje z skupinami</h3><br>

    <label>Ime skupine:</label><br>
    <input type="text" name="ime_skupine" value="<?php if ($uredi) { echo htmlspecialchars($uredi['ime_skupine']); } ?>" required><br><br>

    <label>Opis:</label><br>
    <textarea name="opis" rows="5" cols="50"><?php if ($uredi) { echo htmlspecialchars($uredi['opis']); } ?></textarea><br><br>

    <?php if ($uredi) { ?>
      <input type="hidden" name="id_s" value="<?php echo $uredi['id_s']; ?>">
    <?php } ?>

    <input type="submit" class="btn" value="Shrani"><br><br>
  </form>

  <table>
    <tr>
      <th>Ime</th>
      <th>Opis</th>
      <th>Akcije</th>
    </tr>
    <?php while ($sk = mysqli_fetch_array($skupine)) { ?>
      <tr>
        <td><?php echo htmlspecialchars($sk['ime_skupine']); ?></td>
        <td><?php echo htmlspecialchars($sk['opis']); ?></td>
        <td>
          <a href="admin_skupine.php?edit=<?php echo $sk['id_s']; ?>">Uredi</a> |
          <a href="admin_skupine.php?delete=<?php echo $sk['id_s']; ?>">Izbriši</a>
        </td>
      </tr>
    <?php } ?>
  </table>
</div>

<?php include_once "footer.php"; ?>
</body>
</html>
