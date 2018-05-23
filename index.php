<?php
session_start();
include("includes/fonctions.php");


if (!(chk_sess_login())) {
    include("pages/inscr.php");
    if(chk_error()){
        echo "pseudo utilisé";
    }
} else {
    include("pages/difficulte.php");
}
?>