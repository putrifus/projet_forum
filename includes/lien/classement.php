<?php
include ("../includes/requetes.php");
session_start();
if(isset($_SESSION['login'])){
    $user = $_SESSION['login'];
}
if ($user != null) {
    echo "votre score : " . your_score($user);
    echo top_classement(); 
}
?>