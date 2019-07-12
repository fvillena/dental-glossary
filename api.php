<?php

include("controller.php");
header('Content-Type: application/json');

if ($_GET["action"] == "viewTerm") {
    $conflict = viewTerm($_GET["id"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description_short = $row["description_short"];
        $description_long = $row["description_long"];
        $jsonData = array('id'=> $id,'concept'=> $concept,'description_short'=> $description_short, 'description_long'=> $description_long);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

  if ($_GET["action"] == "randomTerms") {
    $conflict = randomTerms($_GET["n"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description_short = $row["description_short"];
        $jsonData[] = array('id'=> $id,'concept'=> $concept,'description_short'=> $description_short);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

  if ($_GET["action"] == "sitemap") {
    $result = allTerms($connection);
    while ($row = mysqli_fetch_array($result)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description_short = $row["description_short"];
        $jsonData[] = array('id'=> $id,'concept'=> $concept,'description_short'=> $description_short);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }
  
  if ($_GET["action"] == "search") {
    $result = searchResults($_GET["query"],$connection);
    if ($result->num_rows > 0) {
      while ($row = mysqli_fetch_array($result)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description_short = $row["description_short"];
        $jsonData[] = array('id'=> $id,'concept'=> $concept,'description_short'=> $description_short);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
    }
    else {
      echo json_encode([], JSON_UNESCAPED_UNICODE);
    }
    
  }
  if ($_GET["action"] == "viewCategory") {
    $categoryData = categoryDescription($_GET["id"],$connection);
    while ($row = mysqli_fetch_array($categoryData)) {
        $id = $row["id"];
        $name = $row["name"];
        $description = $row["description"];
    }
    $categoryTerms = categoryElements($_GET["id"],$connection);
    if ($categoryTerms->num_rows > 0) {
      while ($row = mysqli_fetch_array($categoryTerms)) {
        $id = $row["id"];
        $concept = $row["concept"];
        $description_short = $row["description_short"];
        $terms[] = array('id'=> $id,'concept'=> $concept,'description_short'=> $description_short);
    }
    $jsonData = array('id'=> $id,'name'=> $name,'description'=> $description, 'terms' => $terms);
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
    }
    else {
      echo json_encode([], JSON_UNESCAPED_UNICODE);
    }
    
  }

?>