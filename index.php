<?php
session_start();
include("includes/fonctions.php");
include("includes/requete.php");


if (!(chk_sess())) {
    include("pages/conn.php");
} else {
    if (!(chk_salon())) {
        include("pages/salon.php");
    } else {
        set_salon($_SESSION['login_afpChat']);
        if (!(chk_archive())) {
            include("pages/messagerie.php");
        } else {
            include("pages/archive.php");
        }
    }
}
?>

<script type='text/javascript'>
//window.onbeforeunload = function (e) {
window.addEventListener("beforeunload", function (e) {
  confirmationMessage = "test";
    alert('test alert');
  e.returnValue = confirmationMessage;     
  return confirmationMessage;            

});
</script>