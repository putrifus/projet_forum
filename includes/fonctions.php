<?php

/* check session */
function chk_sess_login(){
    return isset($_SESSION['login']);
}

/* Erreur pseudo utilisé */
function chk_error() {
    if (isset($_GET['pseudo'])){
        if ($_GET['pseudo']=='error'){
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function chk_insulte(){
    if (isset($_GET['pseudo'])){
        if ($_GET['pseudo']=='insulte'){
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

/* check si la difficulté a été choisie */
function chk_diff() {
    return isset($_GET['diff']);
}

/* check si l'utilisateur veux se connecter */
function chk_conn() {
    return isset($_GET['conn']);
}

function chk_insultes($pseudo,$nom,$email,$prenom){
    //tableau de mots proscrits
    $array_insultes=array("con","cul","merde","fuck","batard","connard","connasse","encule","pute","putain","petasse","negro","bougnoule");

    //insertion des données dans un tableau pour faire le comparatif
    $array_entree=array($pseudo,$nom,$email,$prenom);

    //on boucle sur la chaine d'entrée pour comparer les mots, si une insultes est présente on retourne false sinon true
    for($i=0;$i<sizeof($array_entree);$i++) {
        if(in_array(trim(strtolower($array_entree[$i])),$array_insultes)){
            return false;
        }
        else{
            return true;
        } 
    } 

}