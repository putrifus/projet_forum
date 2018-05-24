<?php
include ("../includes/requetes.php");

// parse les entrées de l'utilisateur

if (isset($_POST['nom'])){
    /*récupère les valeurs*/
    $nom = htmlspecialchars($_POST['nom']);
    $prenom = htmlspecialchars($_POST['prenom']);
    $email = htmlspecialchars($_POST['email']);
    $trancheAge = $_POST['trancheAge'];
    $pseudo = htmlspecialchars($_POST['pseudo_inscr']);
    $mdp = password_hash($_POST['mdp_inscr'],PASSWORD_DEFAULT);

    // si l'utilisateur existe
    if (pseudoExist($pseudo)){
        echo('le pseudo existe');
        die();
    }
    
    // si l'utilisateur existe
    if (userExist($email)){
        echo('le contact existe');
        die();
    }

    

    // entre l'utilisateur en bdd
    insertUser($email,$nom,$prenom,$trancheAge,$pseudo,$mdp);

    // va à la page du choix de difficulté du questionnaire
    header('Location: ../pages/difficulte.html');
        
    
}
else {
    
    /*revient sur la page d'accueil*/
    header('Location: index.php');
}
?>