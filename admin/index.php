<?php

/*if (!empty($_POST)) {
  $ch = new PDO('mysql:dbname=blog;host=localhost','root','troiswa');
  $statement = $ch->prepare (
    "SELECT SUBSTRING(`productName`, 1, 4) AS `year`, SUBSTRING(`productName`, 6) AS `alliasName`, `productLine`, `buyPrice`, `productCode`
     FROM `products`
     WHERE `productLine` LIKE ?
     AND `productName` LIKE ?");
  $result = $statement->execute([$_POST['vehiclesList'], $_POST['dateYear'].'%']);
  $table = $statement->fetchAll(PDO::FETCH_ASSOC);
}

if (!empty($_POST)) {
  $ch = new PDO('mysql:dbname=blog;host=localhost','root','troiswa');
  $statement = $ch->prepare (
    "SELECT DISTINCT SUBSTRING(`productName`, 1, 4) AS `year`
     FROM `products`
     WHERE 1
     ORDER BY `year` ASC");
  $result = $statement->execute([$_POST['dateYear'].'%']);
  $y = $statement->fetchAll(PDO::FETCH_ASSOC);
}
include 'home.phtml';
*/
?>
