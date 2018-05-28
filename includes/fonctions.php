<?php

/* check session */
function chk_sess_login(){
    return isset($_SESSION['login']);
}

/* Erreur pseudo/mail utilisé */
function chk_error_pseudo() {
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

function chk_error_mail() {
    if (isset($_GET['mail'])){
        if ($_GET['mail']=='error'){
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

// check si l'utilisateur a choisi ue difficulté
// a voir si elle sert
function chk_quest() {
    return isset($_SESSION['quest']);
}