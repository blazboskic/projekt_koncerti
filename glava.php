<?php
include_once "seja.php";
?>

<header>
  <h1>Dobrodošli na koncerti-projekt.free.nf</h1><br>

  <nav>
    <a href="zacetna.php">Domov</a>

    <?php
    if (isset($_SESSION['idu'])) {
        echo '<a href="moje_rez.php">Moje rezervacije</a>';

        if (isset($_SESSION['email'])) {
            $mail = $_SESSION['email'];
            if (substr($mail, -11) == '@admin.user') {
                echo '<a href="admin_koncerti.php">Admin panel</a>';
            }
        }

        echo '<a href="o_spletni_strani.php">O spletni strani</a>';
        
    } else {
        echo '<a href="prijavna.php">Prijava</a>';
        echo '<a href="registracijska.php">Registracija</a>';
        
    }
    ?>
  </nav>

  <div id="glava">
    <?php
    if (isset($_SESSION['idu'])) {
        echo 'Pozdravljen, ' . htmlspecialchars($_SESSION['name']);
        echo '<a href="odjava.php">Odjava</a>';
    } else {
        echo '<a href="prijavna.php">Niste prijavljeni</a>';
    }
    ?>
  </div>
</header>
