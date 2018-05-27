<!DOCTYPE html>
<html lang="en">
<?php include ("includes/class/questionnaire.php"); 
$quest = unserialize($_SESSION['quest']); 

for ($i = 0;$i<10;$i++) {
    $quest->verifAnswer("Vrai",$quest->get_reponse($i));
}
?>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Axel et Seb">

    <title>Questionnaire AFPA</title>

  <!-- Bootstrap core CSS -->
  <link href="ressources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="ressources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link href="ressources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="ressources/css/freelancer.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
        <div class="container">
            <!-- <img class="img-fluid mb-5 d-block mx-auto" src="img/logo_afpa.png" alt="">-->
            <a class="navbar-brand js-scroll-trigger" href="https://www.afpa.fr/" target="blank"><img src="ressources/img/Logo_AFPA_2.png" alt="logo Afpa"></a>
            <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fa fa-bars"></i>
      </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="questionnaire.html">Questionnaire</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="classement.html">Classement</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="pub.html">Liens</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="chkForm/deconnexion.php">Se Déconnecter</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container questionnaire">
            <h3 class="text-center text-uppercase text-secondary mb-0 ">Et BIM ton score c'est <?php echo($quest->get_score());?> parce que t'as tout répondu Vrai</h3>
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <form name="questionnaire" id="questionnaire" novalidate="novalidate">
                        <br>
                        <div class="form-group vraiFaux">
                            <button type="submit" name="yes_button" class="btn btn-xl btn-success large">VRAI</button>
                            <button type="submit" name="no_button" class="btn btn-xl btn-danger large">FAUX</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

<?php


for ($i = 0;$i<10;$i++) {
    echo($quest->get_question($i));
    echo('<br>');
    echo($quest->get_reponse($i));
    echo('<br>');
    echo($quest->get_path($i));
    echo('<br>');
    $quest->verifAnswer("Vrai",$quest->get_reponse($i));
    echo('<br><br>');
}



?>


    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
        <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="ressources/vendor/jquery/jquery.min.js"></script>
    <script src="ressources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="ressources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="ressources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="ressources/js/jqBootstrapValidation.js"></script>
    <script src="ressources/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="ressources/js/freelancer.min.js"></script>

</body>

</html>