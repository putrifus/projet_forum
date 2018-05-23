<?php
session_start();
include("includes/fonctions.php");


if (!(chk_sess())) {
    include("pages/inscr.php");
} else {
    include("pages/difficulte.php");
}
?>