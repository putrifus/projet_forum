<?php
session_start();
include("includes/fonctions.php");


if (!(chk_sess_login())) {
    include("pages/inscr.php");
    if(chk_error()){
        echo "pseudo utilisé";
    }
} else {
    if (!(chk_diff())){
        include("pages/difficulte.php");
    } else {
        /* lien à modifier pour arrivr a la page questionnaire*/
        include("pages/classement.php");
    }
}
?>