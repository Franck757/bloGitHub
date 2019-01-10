<?php
include_once "database.php";
include_once 'repository/billetRepository.php';

if (empty($_POST)) {
  $template = "../templates/login.phtml";
  include "../templates/base.phtml";
} else {
  $db = openDatabase('blog','root','troiswa');
  $db->query('SET NAMES UTF8');
  $user = findUserByPseudo($db, $_POST['pseudo']);
  var_dump($user); die;
  if (empty($user)) {

  } else {
    // Comparer le mot de passe avec la valeur dans le formulaire
  }

  header("Location: http://localhost/blog/src/user.php?id=$id"); // Redirection HTTP
}
?>
