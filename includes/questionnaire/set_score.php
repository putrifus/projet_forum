<?php
session_start();
//include ("../includes/class/questionnaire.php");
include ("../includes/requetes.php");

// récupération des datas
$quest = unserialize($_SESSION['quest']);
$pseudo = $_SESSION['login'];
$score = $quest->get_score();
$diff = $quest->get_diff();


// set le nom de la colonne à modifier en fonction de la difficulté du questionnaire
switch ($diff) {
    case "Facile":
        $colDiff = "score_easy";
        break;
    case "Moyen":
        $colDiff = "score_medium";
        break;
    case "Difficile":
        $colDiff = "score_hard";
        break;
}

// set le score en BDD
setScoreDiff($score,$pseudo,$colDiff);

// recalcule le total des scores en bdd
setScoreTotal($pseudo);

// supprime le questionnaire
unset($_SESSION['quest']);

// set une session avec le score de la partie qui vient d'être jouée
$_SESSION['score'] = $score;

// retournes à la page d'index avec le numéro de question suivante
header('Location: ../index.php');
?>