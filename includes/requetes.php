<?php
include ("class/connect.php");
include ("class/questionnaire.php");

function insertUser($mail,$nom,$prenom,$trancheAge,$pseudo,$mdp) {
    $conn = new Connect();
    $req = $conn->get_connexion()->prepare('INSERT INTO utilisateur (email,nom,prenom,tranche_d_age,pseudo,mdp) VALUES (:email,:nom,:prenom,:tranche_d_age,:pseudo,:mdp)');
    $req->execute(array(
        'email' => $mail,
        'nom' => $nom,
        'prenom' => $prenom,
        'tranche_d_age' => $trancheAge,
        'pseudo' => $pseudo,
        'mdp' => $mdp));
}

function insertScore($pseudo) {
    $conn = new Connect();
    $req = $conn->get_connexion()->prepare('INSERT INTO score (pseudo_user) VALUES (:pseudo)');
    $req->execute(array(
        'pseudo' => $pseudo));
}

function userExist($mail){
    $test = false;
    $conn = new Connect();
    $req = $conn->get_connexion()->prepare('SELECT email FROM utilisateur WHERE email = :email');
    $req->execute(array(
        'email' => $mail));
    
    $res = $req->fetch();

    // s'il y a des résultat
    if ($res){
        $test = true;
    } 
    
    return $test;
}

function pseudoExist($pseudo){
    $test = false;
    $conn = new Connect();
    $req = $conn->get_connexion()->prepare('SELECT pseudo FROM utilisateur WHERE pseudo = :pseudo');
    $req->execute(array(
        'pseudo' => $pseudo));
    
    $res = $req->fetch();

    // s'il y a des résultat
    if ($res){
        $test = true;
    } 
    
    return $test;
}

function getUser($pseudo) {
$conn = new Connect();
$req = $conn->get_connexion()->prepare('SELECT pseudo,mdp FROM utilisateur WHERE pseudo = :pseudo');
$req->execute(array(
    'pseudo' => $pseudo));
$res = $req->fetch();
return $res;
}

function getQuestionnaire($diff){
$conn = new Connect();
$req = $conn->get_connexion()->prepare('SELECT question,reponse,path_photo FROM question WHERE type_questionnaire IN(\':diff\') ORDER BY rand() LIMIT 10');
$req->execute(array(
    'diff' => $diff));
}

?>