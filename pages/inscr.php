<!DOCTYPE html>
<html lang="en">

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
      <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?conn=1">Se connecter</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container">
      <img class="img-fluid mb-5 d-block mx-auto" src="ressources/img/profile.png" alt="">
      <!--  -->
      <h1 class="text-uppercase mb-0">Bienvenue sur notre formulaire</h1>
      <hr class="star-light">
      <h2 class="font-weight-light mb-0">Presentation</h2>
    </div>
  </header>

  <!-- Contact Section -->
  <section id="contact">
    <div class="container">
      <h2 class="text-center text-uppercase text-secondary mb-0">Renseignez le formulaire pour jouer</h2>
      <hr class="star-dark mb-5">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
          <form name="sentMessage" method="post" action="chkForm/insert_user.php">
          <!-- id="contactForm" -->
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Nom</label>
                <input class="form-control" id="Nom" type="text" name="nom" placeholder="Nom" required="required" data-validation-required-message="Veuillez entrer votre nom.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Prénom</label>
                <input class="form-control" id="Prenom" type="text" name="prenom" placeholder="Prénom" required="required" data-validation-required-message="Veuillez entrer votre Prénom.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Email</label>
                <input class="form-control" id="email" type="email" name="email" placeholder="Email" required="required" data-validation-required-message="Veuillez entrer votre Email.">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Pseudo</label>
                <input class="form-control" id="Pseudo" type="text" name="pseudo_inscr" placeholder="Pseudo" required="required" data-validation-required-message="Veuillez entrer un Pseudo.">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Mot de Passe</label>
                <input class="form-control" id="mdp" type="password" name="mdp_inscr" placeholder="Mot de passe" required="required" data-validation-required-message="Veuillez entrer un mot de passe.">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div id="age">
              <br>
              <label class="radio-inline">
                <input type="radio" name="trancheAge" value='-18'>- 18 ans</label>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <label class="radio-inline">
                <input type="radio" name="trancheAge" value='18-25'>18-25 ans</label>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <label class="radio-inline">
                <input type="radio" name="trancheAge" value='+25'>+ 25 ans</label>

              <p class="help-block text-danger"></p>
            </div>

            <br>
            
            <div id="boutonJouer">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">JOUER</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
    <!-- A copier coller en bas de chaque page une fois fini -->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-4 caseFooter">
                    <img class="img-fluid mb-5 d-block mx-auto" src="ressources/img/adefi_final.png" alt="">
                    <p class="lead mb-0">Description ADEFI <br>
                        <a href="">lien ADEFI</a>.</p>
                </div>
                <div class="col-md-4 mb-5 mb-lg-0 caseFooter">
                    <h4 class="text-uppercase mb-4">Suivre l'AFPA</h4>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://www.facebook.com/AFPA.JEUNES">
                                <i class="fa fa-fw fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://twitter.com/afpa_formation">
                                <i class="fa fa-fw fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://www.linkedin.com/company/afpa">
                                <i class="fa fa-fw fa-linkedin"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 mb-5 mb-lg-0 caseFooter">
                    <h4 class="text-uppercase mb-4">AFPA Arras</h4>
                    <p class="lead mb-0">1 Rue Copernic
                        <br>62000 Arras</p>
                </div>
            </div>
        </div>
    </footer>
    <div class="copyright py-4 text-center text-white">
        <div class="container copyright">
            <small>Copyright &copy; CrewStiant</small>
        </div>
    </div>

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