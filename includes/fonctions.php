<?php

/* check session et type de salon */
function chk_sess_login(){
    return isset($_SESSION['login']);
}

/* Ereur pseudo utilisé */
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

function chk_diff() {
    return isset($_GET['diff']);
}

function chk_conn() {
    return isset($_GET['conn']);
}

