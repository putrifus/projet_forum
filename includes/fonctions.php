<?php

/* check session et type de salon */
function chk_sess(){
    $sessEnCours = false;
    if (isset($_SESSION['login_afpChat'])){
    $sessEnCours = true;
    }
    return $sessEnCours;
}

function chk_salon(){
    $salon = false;
    if (isset($_GET['salon'])){
        $salon = true;
    }
    return $salon;
}

function chk_archive(){
    $archive = false;
    if (isset($_GET['archive'])){
        $archive = true;
    }
    return $archive;
}
