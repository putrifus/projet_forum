<?php
session_start();
include ("../includes/class/questionnaire.php");

// récupération des datas
$quest = unserialize($_SESSION['quest']);
$numQuest = $_GET['question'] - 1;
$question = $quest->get_question($numQuest);
$reponse = $quest->get_reponse($numQuest);

// check bouton cliké
if (isset($_POST['Vrai'])){
    $rep = $_POST['Vrai'];
} else if (isset($_POST['Faux'])){
    $rep = $_POST['Faux'];
}

// MAJ le score en fonction de la réponse
$quest->verifAnswer( $rep,$quest->get_reponse($numQuest));
echo("<br><br>et bim ton score : <br>".$quest->get_score() );

// set la session questionnaire avec le score 
$_SESSION['quest'] = serialize($quest); 

// retournes à la page d'index avec le numéro de question suivante
$pageSuivante = $_GET['question'] + 1;
$header = "Location: ../index.php?question=".$pageSuivante;
header($header);
?>