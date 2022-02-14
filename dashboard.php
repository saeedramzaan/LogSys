<?php

session_start();

if(!$_SESSION['admin'])  
{  
    echo "Please login<br>";
    echo "<a href='login.php'>Login</a>";
    echo '<pre>';
    var_dump($_SESSION['admin']);
    echo '</pre>';
  
 
}else{
    echo "<a href='logout.php'>Logout</a>";
    echo "<h1> Log in <h1>";
    var_dump($_SESSION['admin']);
}  

