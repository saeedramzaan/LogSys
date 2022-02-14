<?php
defined('BASEPATH') OR exit('No direct script access allowed'); //prevent direct script access
$host = '';
$user = 'root'; 
$password = 'mysql123'; 
$dbname = 'auth'; 
//$dsn = '';

try{

    $dsn = 'mysql:host='.$host. ';dbname='.$dbname;

    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
}catch(PDOException $e){
    echo 'connection failed: '.$e->getMessage();
}
?>