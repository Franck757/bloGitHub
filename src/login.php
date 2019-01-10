<?php
session_start();

include_once "database.php";
include_once 'repository/billetRepository.php';

if (empty($_POST)) {
  $template = "../templates/login.phtml";
  include "../templates/base.phtml";
} else {
  $db = openDatabase('blog','root','troiswa');
  $user = findUserByPseudo($db, $_POST['pseudo']);
  // var_dump($user);  die;
  if (empty($user)) {
    header('Location: login.php');
  } else {
    if ($user['mot_de_passe'] === $_POST['password']) {
      session_abort();
      session_start();
      $_SESSION['user'] = $user;
      header('Location: newBillet.php');
    } else {
      header('Location: login.php');
    }
  }
  // Comparer le mot de passe avec la valeur dans le formulaire
}

// header("Location: http://localhost/blog/src/user.php?id=$id"); // Redirection HTTP
?>
