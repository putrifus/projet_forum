<?php
 
class Questionnaire {
    private $_questions = array();
    private $_reponse = array();
    private $_photo = array();
    private $_coefAnswer;
    private $_score;
    private $_test = array();
    
    public function __construct($questions,$reponses,$photo,$diff){
        $this->_questions = $questions;
        $this->_reponse = $reponses;
        $this->_photo = $photo;

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

    public function get_path($ind){
        return $this->_photo[$ind];
    }

    public function get_score(){
        return $this->_score;
    }
    
    public function verifAnswer($repUtil,$rep) {
        if ($repUtil == $rep){
            $this->_score += $this->_coefAnswer;
        } 
    }
}
?>