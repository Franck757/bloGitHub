<?php
include_once "database.php";
include_once 'repository/billetRepository.php';

if (empty($_POST)) {
  $template = "../templates/userForm.phtml";
  include "../templates/base.phtml";
} else {
  $db = openDatabase('blog','root','troiswa');
  $db->query('SET NAMES UTF8');
  $err = newUSer($db, $_POST);
  $id = $db->lastInsertId();
  header("Location: http://localhost/blog/src/user.php?id=$id"); // Redirection HTTP
}
?>
