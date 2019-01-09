<?php
include "database.php";
include "repository/billetRepository.php";

include 'newBillet.php';

$id = $_GET['id'];

$db = openDatabase('blog','root','troiswa');
$db->query('SET NAMES UTF8');

$billet = findBillet($db, $id);
//var_dump($billet);

$template = "../templates/billet.phtml";

include "../templates/base.phtml";

?>
