<?php
include_once "database.php";
include_once "repository/billetRepository.php";

//$id = $_GET['id'];

$db = openDatabase('blog','root','troiswa');
$db->query('SET NAMES UTF8');

$billet = findAllBillet($db);


$template = "../templates/listeArticle.phtml";

include_once "../templates/base.phtml";

?>
