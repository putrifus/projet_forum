<?php

/* check session et type de salon */
function chk_sess(){
    return isset($_SESSION['login_afpChat']);
}

function chk_salon(){
    return isset($_GET['salon']);
}

