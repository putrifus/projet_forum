<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Axel et Seb">

    <title>Connexion</title>

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
                    <!--
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="questionnaire.html">Questionnaire</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="classement.html">Classement</a>
                    </li>
                    -->
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="pub.php">Liens</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?conn=1">Se connecter</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <section id="contact">
        <div class="container seconnecter">
            <form name="sentMessage" method="post" action="chkForm/conn_user.php">
            <!-- id="contactForm" -->
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Nom</label>
                        <input class="form-control" id="pseudo" name="pseudo_conn" type="text" placeholder="Nom" required="required" data-validation-required-message="Veuillez entrer votre nom.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Mot de passe</label>
                        <input class="form-control" id="mdp" name="mdp_conn" type="password" placeholder="Mot de passe" required="required" data-validation-required-message="Veuillez entrer votre mot de passe.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <br>
                <div id="boutonConnection">
                    <button type="submit" class="btn btn-primary btn-xl" id="connexion">Connexion</button>
                </div>
            </form>
            <?php if (isset($_SESSION['error'])){
                echo $_SESSION['error'];
                }?>
        </div>
    </section>

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