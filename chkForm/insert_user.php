<?php
// parse données d'inscription
if(isset($_POST['submit'])){
    include ("../includes/insert_user.php");
} else {
    header("Location : ../index.php?post=missing");
    die;
}

?>