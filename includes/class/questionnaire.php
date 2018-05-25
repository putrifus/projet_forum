<?php

class Questionnaire {
    private $_connexion;
    private $_resultat;
    
    public function __construct(){
    
    
    
    }

    public function get_connexion(){
        return $this->_connexion;
    }
    
    public function get_resultat(){
        return $this->_resultat;
    }
    
    public function execution($requete){
        $this->_resultat = $this->get_connexion()->query($requete);   
    }
}
?>