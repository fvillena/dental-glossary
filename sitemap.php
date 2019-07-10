<?php

$url = 'http://localhost/dental-glossary/api.php?action=sitemap';
$json= file_get_contents($url);

$data = json_decode($json);

foreach($data as $row) {
    $id = $row->{'id'};
    $concept = $row->{'description_short'};
    echo "<a href=term.php?id=".$id.">".$concept."</a>";
    echo "<br>";
    }

?>