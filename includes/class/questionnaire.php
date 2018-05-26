<?php

class Questionnaire {
    private $_questions[];
    private $_reponse[];
    private $_coefAnswer;
    private $_score;
    
    public function __construct($questions,$reponses,$diff){
        $this->_questions[] = $questions;
        $this->_reponses[] = $reponses;

        // set le coef en foncton de la difficulté 
        switch ($diff) {
            case "easy":
                $this->_coefAnswer = 1;
                break;
            case "medium":
                $this->_coefAnswer = 2;
                break;
            case "hard":
                $this->_coefAnswer = 4;
                break;
        }

        // set le score à 0 à l'instanciation du formulaire
        $this->_score = 0;
    }

    public function get_question($ind){
        return $this->_questions[$ind];
    }
    
    public function get_reponse($ind){
        return $this->_reponse[$ind];
    }
    
    public function verifAnswer($repUtil,$rep) {
        if ($repUtil == $rep){
            $this->_score += $this->_coefAnswer;
        }   
    }
}
?>