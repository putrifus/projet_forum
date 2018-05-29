<?php
session_start();
include("includes/fonctions.php");

if(chk_classement()) {
    include ("pages/classement.php");
}

if (!(chk_sess_login())) {
    if(!(chk_conn())){
        include("pages/inscr.php");
        if(chk_error_pseudo()){
            echo "pseudo utilisé";
        } if(chk_error_mail()){
            echo "mail utilisé";
        }
    } else {
        include("pages/seconnecter.php");
    }
} else {
    if (!(chk_diff()) && !(chk_quest()) && !(chk_score())){
        include("pages/difficulte.php");
    } 
    else {
        if (chk_quest() && !(chk_score())){
            include("pages/questionnaire.php");
        } else {
            include("pages/classement.php");
        }
        
    }
}
?>