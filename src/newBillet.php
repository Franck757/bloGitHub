<?php
session_start();

include_once "database.php";
include_once 'repository/billetRepository.php';

if (empty($_POST)) {
  $template = "../templates/billetForm.phtml";
  include "../templates/base.phtml";
} else {
  $filename = $_FILES['image']['name'];
  $tmp = $_FILES['image']['tmp_name'];

  move_uploaded_file($tmp, '/home/wamont2-10/sites/blog/public/image/'.$filename);
  $_POST['image'] = $filename;
  $_POST['auteur'] = $_SESSION['user']['id'];


  $db = openDatabase('blog','root','troiswa');
  $db->query('SET NAMES UTF8');
  $err = writeArticle($db, $_POST);
  $id = $db->lastInsertId();
  header("Location: http://localhost/blog/src/billet.php?id=$id"); // Redirection HTTP
}
?>
