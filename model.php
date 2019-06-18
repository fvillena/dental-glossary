<?php

header('Content-Type: text/html; charset=utf-8');

function connectMySQL($dbServer,$dbUser,$dbPass,$dbName) {
	$connection = new mysqli($dbServer,$dbUser,$dbPass,$dbName);
  $connection->set_charset("utf8");
	return $connection;
}

function viewTerm($id,$connection) {
    $query = "SELECT * FROM `terms` WHERE id = 2" . $id;
      $result = $connection->query($query);
      return $result;
  }

  function randomTerms($n,$connection) {
    $query = "SELECT * FROM terms ORDER BY RAND() LIMIT " . $n;
      $result = $connection->query($query);
      return $result;
  }

?>