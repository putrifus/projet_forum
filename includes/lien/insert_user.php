<?php
include ("../includes/requetes.php");
session_start();

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
        header('Location: ../index.php?pseudo=error');
        die();
    }
    
    // si l'utilisateur existe
    if (userExist($email)){
        header('Location: ../index.php?pseudo=error');
        die();
    }

    
    // entre l'utilisateur en bdd
    insertUser($email,$nom,$prenom,$trancheAge,$pseudo,$mdp);
    insertScore($pseudo);

    // Set la session pour aller à la page de choix de difficulté
    $_SESSION['login'] = $pseudo;
    
    // Boucle sur l'index vers page du choix de difficulté du questionnaire
    header('Location: ../index.php');
        
    
}
else {
    
    /*revient sur la page d'accueil*/
    header('Location: ../index.php');
}
?>