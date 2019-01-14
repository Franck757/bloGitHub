<?php

function findBillet(PDO $db, string $id) : array
{
  $statement = $db->prepare("SELECT `titre`, `corps_de_texte`, `image` FROM `billet` WHERE `id` = ?");
  $err = $statement->execute([$id]);

  return $statement->fetchAll(PDO::FETCH_ASSOC);
}

function findAllBillet(PDO $db) : array
{
  $statement = $db->prepare("SELECT `titre`, `corps_de_texte`, `image` FROM `billet`");
  $err = $statement->execute();

  return $statement->fetchAll(PDO::FETCH_ASSOC);
}

/* création d'un billet */
function writeArticle(PDO $db, array $data)
{
  $statement = $db->prepare(
    'INSERT INTO `billet`(`titre`, `corps_de_texte`, `image`, `auteur`)
    VALUES(:titre, :texte, :image, :auteur)');
    $err = $statement->execute(array(
      'titre' => $data["titre"],
      'texte' => $data["texte"],
      'image' => $data["image"],
      'auteur' => $data['auteur']
    ));
    return $err;
  }


  function findUser(PDO $db, string $id) : array
  {
    $statement = $db->prepare("SELECT `nom`, `prenom`, `mot_de_passe`, `pseudo`, `mail` FROM `utilisateurs` WHERE `id` = ?");
    $err = $statement->execute([$id]);

    return $statement->fetchAll(PDO::FETCH_ASSOC);
  }



  //création d'un utilisateur
  function newUser(PDO $db, array $data)
  {
    $statement = $db->prepare(
      'INSERT INTO `utilisateurs`(`nom`, `prenom`, `mot_de_passe`, `pseudo`, `mail`)
      VALUES(:name, :firstname, :password, :pseudo, :mail)');
      $err = $statement->execute(array(
        'name'       => $data["name"],   //le premier 'name' correspond a "l'étiquette", la VALUES juste au dessus
        'firstname'  => $data["firstname"],
        password_hash('password')   => $data["password"],
        'pseudo'     => $data["pseudo"],
        'mail'       => $data["mail"]
      ));
      return $err;
    }

    /**
    * Trouver un utilisateur par son pseudo
    *
    * @param  PDO    $db     [description]
    * @param  string $pseudo [description]
    * @return array          [description]
    */
    function findUserByPseudo(PDO $db, string $pseudo)
    {
      $statement = $db->prepare("SELECT * FROM `utilisateurs` WHERE `pseudo` = ?");
      $err = $statement->execute([$pseudo]);

      return $statement->fetch(PDO::FETCH_ASSOC);
    }
    /**
    * Trouver un utilisateur par son mot de passe
    *
    * @param  PDO    $db     [description]
    * @param  string $pseudo [description]
    * @return array          [description]
    */
    /*function findUserByMdp(PDO $db, string $pseudo) : array
    {
    $statement = $db->prepare("SELECT * FROM `utilisateurs` WHERE `mot_de_passe` = ?");
    $err = $statement->execute([$mdp]);

    return $statement->fetch(PDO::FETCH_ASSOC);
  }*/

  ?>
