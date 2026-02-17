
<?php 

require_once 'credentials.php';


$user = 'root';
$password = 'root';

try
{
$connexion = new PDO ('mysql:host=localhost;dbname=M2L2', $user, $password);
}  catch (PDOException $e)
{ print "Erreur :" . $e->getMessage() . "<br/>";
  die;
}
?>
