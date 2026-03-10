<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste du matériel</title>
</head>
<body>
<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require('credentials.php');


try {
    $connexion = new PDO(
            "mysql:host=$host;dbname=$dbname;charset=$charset",
            $user,
            $password,
            [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}

// Lecture des matériels avec leur type
$requete = $connexion->prepare(
        'SELECT MATERIEL.id_mat, MATERIEL.nom, MATERIEL.details, TYPE.libelle
     FROM MATERIEL
     JOIN TYPE ON MATERIEL.id_type = TYPE.id_type'
);
$requete->execute();
$materiels = $requete->fetchAll(PDO::FETCH_ASSOC);
?>
<h1>Liste du matériel</h1>

<table border="1">
    <tr>
        <th>Nom</th>
        <th>Détails</th>
        <th>Type</th>
    </tr>

    <?php foreach ($materiels as $m):
        $url = "show.php?id=" . $m['id_mat'];
        ?>
        <tr>
            <td><a href="<?= $url ?>"><?= htmlspecialchars($m['nom']) ?></a></td>
            <td><?= htmlspecialchars($m['details']) ?></td>
            <td><?= htmlspecialchars($m['libelle']) ?></td>
        </tr>
    <?php endforeach; ?>
</table>

</body>
</html>