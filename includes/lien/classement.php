<?php
include ("../includes/requetes.php");
session_start();
if(isset($_SESSION['login'])){
    $user = $_SESSION['login'];
}
if ($user != null) {
    echo "votre score : " . your_score($user);
    echo "<BR>";
    while($data = top_classement()->fetch()){
        echo $data->pseudo_user;
        echo $score,$data->score_total;
    }
} else {
    echo "top 10";
}
?>