<?php
header('Content-Type: text/html; charset=utf-8');
include ("model.php");
include ("config.php");
mb_internal_encoding('UTF-8');
mb_http_output('UTF-8');
global $connection;

$connection = connectMySQL($dbServer,$dbUser,$dbPass,$dbName);

?>