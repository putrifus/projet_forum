<?php
include ("../includes/requetes.php");
session_start();

// récupére le questionnaire en fonction de la difficulté
$quest = getQuestionnaire($_GET['diff']);

// crée une session avec le questionnaire
$_SESSION['quest'] = serialize($quest); 



// retournes à la page d'index avec le numéro de question en get
header('Location: ../index.php?question=1');

?>