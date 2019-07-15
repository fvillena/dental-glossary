<?php

header('Content-Type: text/html; charset=utf-8');

function connectMySQL($dbServer,$dbUser,$dbPass,$dbName) {
	$connection = new mysqli($dbServer,$dbUser,$dbPass,$dbName);
  $connection->set_charset("utf8");
	return $connection;
}

function viewTerm($id,$connection) {
    $query = "SELECT terms.id, terms.category_id, categories.name AS category, terms.concept AS name, terms.description_short, terms.description_long FROM categories, terms WHERE terms.category_id = categories.id AND terms.id = " . $id;
      $result = $connection->query($query);
      return $result;
  }

  function randomTerms($n,$connection) {
    $query = "SELECT * FROM terms ORDER BY RAND() LIMIT " . $n;
      $result = $connection->query($query);
      return $result;
  }

  function allTerms($connection) {
    $query = "SELECT terms.id, terms.category_id, categories.name AS category, terms.concept AS name, terms.description_short, terms.description_long FROM categories, terms WHERE terms.category_id = categories.id";
      $result = $connection->query($query);
      return $result;
  }
  
  function allCategories($connection) {
    $query = "SELECT * FROM categories";
      $result = $connection->query($query);
      return $result;
  }


function searchResults($query,$connection) {
    $query = "SELECT * FROM `terms` WHERE concept LIKE '%".$query."%' OR description_short LIKE '%".$query."%'";
      $result = $connection->query($query);
      return $result;
  }
function categoryElements($id,$connection) {
  $query = "SELECT * FROM `terms` WHERE category_id = " . $id;
    $result = $connection->query($query);
    return $result;
}
function categoryDescription($id,$connection) {
  $query = "SELECT * FROM `categories` WHERE id = " . $id;
    $result = $connection->query($query);
    return $result;
}
function addEditTerm($id,$category_id,$concept,$description_short,$description_long,$connection) {
  $query = "INSERT INTO terms (id, category_id, concept, description_short, description_long) VALUES('".$id."','".$category_id."', '".$concept."', '".$description_short."', '".$description_long."') ON DUPLICATE KEY UPDATE category_id='".$category_id."',concept='".$concept."', description_short='".$description_short."',description_long='".$description_long."'";
    $connection->query($query);
    return $connection->insert_id;
}
function deleteTerm($id,$connection) {
  $query = "DELETE from terms WHERE id = " . $id;
  $result = $connection->query($query);
  return $result;
}

?>