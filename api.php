<?php

include("controller.php");
header('Content-Type: application/json');

if ($_GET["action"] == "viewTerm") {
    $conflict = viewTerm($_GET["id"],$connection);
    while ($row = mysqli_fetch_array($conflict)) {
        $id = $row["id"];
        $name = $row["name"];
        $category = $row["category"];
        $category_id = $row["category_id"];
        $description_short = $row["description_short"];
        $description_long = $row["description_long"];
        $jsonData = array('id'=> $id, 'category'=> $category, 'category_id'=> $category_id, 'name'=> $name,'description_short'=> $description_short, 'description_long'=> $description_long);
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

  if ($_GET["action"] == "terms") {
    $result = allTerms($connection);
    while ($row = mysqli_fetch_array($result)) {
        $id = $row["id"];
        $category_id = $row["category_id"];
        $category = $row["category"];
        $name = $row["name"];
        $description_short = $row["description_short"];
        $description_long = $row["description_long"];
        $jsonData[] = array('id'=> $id,'category_id'=> $category_id,'category'=> $category,'name'=> $name,'description_short'=> $description_short,'description_long'=> $description_long);
    }
    echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
  }

  if ($_GET["action"] == "categories") {
    $result = allCategories($connection);
    while ($row = mysqli_fetch_array($result)) {
        $id = $row["id"];
        $name = $row["name"];
        $description = $row["description"];
        $jsonData[] = array('id'=> $id,'name'=> $name,'description'=> $description);
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

    if ($_GET['action'] == 'addEditTerm') {
      $data = json_decode(file_get_contents('php://input'), true);
       $result = addEditTerm(
        $data['id'],
        $data['category_id'],
        $data['concept'],
        $data['description_short'],
        $data['description_long'],
        $connection);
      if ($data['id'] == 'NULL') {
        $id = $result;
        $jsonData = array('id'=> $id);
        echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
      } else {
        $id = $data['id'];
        $jsonData = array('id'=> $id);
        echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
      }
    }

    if ($_GET['action'] == 'deleteTerm') {
       $result = deleteTerm($_GET['id'], $connection);
      
    }

?>