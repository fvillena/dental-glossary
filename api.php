<?php

include("controller.php");

if ($_GET["action"] == "viewTerm") {
    $conflict = viewTerm($_GET["id"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $concept = $row["concept"];
        $description = $row["description"];
        $jsonData = array('concept'=> $concept,'description'=> $description);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

  if ($_GET["action"] == "randomTerms") {
    $conflict = randomTerms($_GET["n"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $concept = $row["concept"];
        $description = $row["description"];
        $jsonData[] = array('concept'=> $concept,'description'=> $description);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

?>