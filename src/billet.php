<?php
include_once "database.php";
include_once "repository/billetRepository.php";

$id = $_GET['id'];

$db = openDatabase('blog','root','troiswa');
$db->query('SET NAMES UTF8');

$billet = findBillet($db, $id);
//var_dump($billet);

$template = "../templates/billet.phtml";

include_once "../templates/base.phtml";

?>
