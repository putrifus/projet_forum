<?php

/* check session et type de salon */
function chk_sess_login(){
    return isset($_SESSION['login']);
}

/*function chk_salon(){
    return isset($_GET['salon']);
}*/

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

