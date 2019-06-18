<?php

include("controller.php");
header('Content-Type: application/json');

if ($_GET["action"] == "viewTerm") {
    $conflict = viewTerm($_GET["id"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description = $row["description"];
        $jsonData = array('id'=> $id,'concept'=> $concept,'description'=> $description);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

  if ($_GET["action"] == "randomTerms") {
    $conflict = randomTerms($_GET["n"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description = $row["description"];
        $jsonData[] = array('id'=> $id,'concept'=> $concept,'description'=> $description);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

?>