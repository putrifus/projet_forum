<?php
session_start();
include("includes/fonctions.php");


if (!(chk_sess_login())) {
    if(!(chk_conn())){
        include("pages/inscr.php");
        if(chk_error()){
            echo "pseudo utilisé";
        }
        if(chk_insulte()){
            echo "Veuillez utiliser des mots corrects svp";}
    } else {
        include("pages/seconnecter.php");
    }

} else {
    if (!(chk_diff())){
        include("pages/difficulte.php");
    } else {
        /* lien à modifier pour arrivr a la page questionnaire*/
        include("pages/questionnaire.php");
    }
}
?>