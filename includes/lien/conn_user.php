<?php
include ("../requetes.php");
session_start();

// parse les entrées de l'utilisateur

if (isset($_POST['pseudo_conn']) && isset($_POST['mdp_conn'])) {
/*récupère les valeurs*/
$pseudo = $_POST['pseudo_conn'];

$res = getUser($pseudo);

if (!$res){
    /* il n'y a pas de résultat*/

    /*parse à faire*/

    header('Location: ../index.php');
} 
else {
    /*verifie le mot de passe */
    $OKmdp = password_verify($_POST['mdp_conn'],$res['mdp']);

    if (!$OKmdp){
        /* si le mot de passe est incorrect */

        /*parse à faire*/

        header('Location: ../index.php');
    }
    else {
        /* set la session */
        $_SESSION['login'] = $_POST['pseudo_conn'];

        /*revient sur la page d'accueil*/
        header('Location: ../index.php');
    }
}
    
}

else {
   
   /*revient sur la page d'accueil*/
    header('Location: ../index.php');
}
?>