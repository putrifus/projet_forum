<?php
session_start();
include("includes/fonctions.php");


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
    if (!(chk_diff()) && !(chk_quest())){
        include("pages/difficulte.php");
    } //else if(isset($_GET['select'])){
        //include("pages/difficulte.php");
    //}
    else {
        include("pages/questionnaire.php");
    }
}
?>