<?php
include_once "database.php";
include_once "repository/billetRepository.php";

$id = $_GET['id'];

$db = openDatabase('blog','root','troiswa');
$db->query('SET NAMES UTF8');

$billet = findBillet($db, $id);

$template = "../templates/billet.phtml";

include_once "../templates/base.phtml";

?>
