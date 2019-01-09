<?php

function findBillet(PDO $db, string $id) : array
{
  $statement = $db->prepare("SELECT `titre`, `corps_de_texte` FROM `billet` WHERE `id` = ?");
  $err = $statement->execute([$id]);

  return $statement->fetchAll(PDO::FETCH_ASSOC);
}

function writeArticle(PDO $db)
{
 $statement = $db->prepare('INSERT INTO billet(titre, texte) VALUES(:titre, :texte)');
 $err = $statement->execute(array(
     'titre' => $_POST["titre"],
     'texte' => $_POST["texte"],
     ));
 return $err;
}


 ?>
