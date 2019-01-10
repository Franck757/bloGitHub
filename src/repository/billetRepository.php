<?php

function findBillet(PDO $db, string $id) : array
{
  $statement = $db->prepare("SELECT `titre`, `corps_de_texte`, `image` FROM `billet` WHERE `id` = ?");
  $err = $statement->execute([$id]);

  return $statement->fetchAll(PDO::FETCH_ASSOC);
}

/* création d'un billet */
function writeArticle(PDO $db, array $data)
{
 $statement = $db->prepare(
   'INSERT INTO `billet`(`titre`, `corps_de_texte`, `image`)
    VALUES(:titre, :texte, :image)');
 $err = $statement->execute(array(
     'titre' => $data["titre"],
     'texte' => $data["texte"],
     'image' => $data["image"],
     ));
 return $err;
}


function findUser(PDO $db, string $id) : array
{
  $statement = $db->prepare("SELECT `nom`, `prenom`, `mot_de_passe`, `pseudo`, `mail` FROM `utilisateurs` WHERE `id` = ?");
  $err = $statement->execute([$id]);

  return $statement->fetchAll(PDO::FETCH_ASSOC);
}

/**
 * Trouver un utilisateur par son pseudo
 *
 * @param  PDO    $db     [description]
 * @param  string $pseudo [description]
 * @return array          [description]
 */
function findUserByPseudo(PDO $db, string $pseudo) : array
{
  $statement = $db->prepare("SELECT * FROM `utilisateurs` WHERE `pseudo` = ?");
  $err = $statement->execute([$pseudo]);

  return $statement->fetch(PDO::FETCH_ASSOC);
}

//création d'un utilisateur
function newUser(PDO $db, array $data)
{
 $statement = $db->prepare(
   'INSERT INTO `utilisateurs`(`nom`, `prenom`, `mot_de_passe`, `pseudo`, `mail`)
    VALUES(:name, :firstname, :password, :pseudo, :mail)');
 $err = $statement->execute(array(
     'name'       => $data["name"],
     'firstname'  => $data["firstname"],
     'password'   => $data["password"],
     'pseudo'     => $data["pseudo"],
     'mail'       => $data["mail"]
     ));
 return $err;
}

 ?>
