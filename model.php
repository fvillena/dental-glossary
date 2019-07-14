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

// TODO create or update term or category:
// hint:INSERT INTO categories (id, name, description) VALUES(NULL, "nuevo", "nuevo") ON DUPLICATE KEY UPDATE    
// name="editado", description="editado"
  
?>